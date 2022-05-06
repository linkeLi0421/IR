; ModuleID = '/llk/IR/drivers/irqchip/irq-gic-v3.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v3.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gic_pmr_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22gic_pmr_sync\22\09\09\09\09\09"
module asm "__kstrtabns_gic_pmr_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gic_nonsecure_priorities:\09\09\09\09\09"
module asm "\09.asciz \09\22gic_nonsecure_priorities\22\09\09\09\09\09"
module asm "__kstrtabns_gic_nonsecure_priorities:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gic_quirk = type { ptr, ptr, ptr, i32, i32 }
%struct.gic_chip_data = type { ptr, ptr, ptr, %struct.rdists, ptr, i64, i32, i64, i8, i32, ptr }
%struct.rdists = type { ptr, i32, ptr, i64, i32, i32, i32, i8, i8, i8, i8 }
%struct.static_key_true = type { %struct.static_key }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gic_kvm_info = type { i32, %struct.resource, i32, i8, %struct.resource, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.redist_region = type { ptr, i32, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.partition_affinity = type { %struct.cpumask, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.65 = type { %struct.raw_spinlock, ptr, ptr, i32, i64, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@gic_pmr_sync = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_gic_pmr_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_gic_pmr_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_gic_pmr_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gic_pmr_sync to i32), ptr @__kstrtab_gic_pmr_sync, ptr @__kstrtabns_gic_pmr_sync }, section "___ksymtab+gic_pmr_sync", align 4
@gic_nonsecure_priorities = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_gic_nonsecure_priorities = external dso_local constant [0 x i8], align 1
@__kstrtabns_gic_nonsecure_priorities = external dso_local constant [0 x i8], align 1
@__ksymtab_gic_nonsecure_priorities = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gic_nonsecure_priorities to i32), ptr @__kstrtab_gic_nonsecure_priorities, ptr @__kstrtabns_gic_nonsecure_priorities }, section "___ksymtab+gic_nonsecure_priorities", align 4
@__setup_str_gicv3_nolpi_cfg = internal constant [20 x i8] c"irqchip.gicv3_nolpi\00", section ".init.rodata", align 1
@__setup_gicv3_nolpi_cfg = internal global %struct.obs_kernel_param { ptr @__setup_str_gicv3_nolpi_cfg, ptr @gicv3_nolpi_cfg, i32 1 }, section ".init.setup", align 4
@__of_table_gic_v3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@gicv3_nolpi = internal global i8 0, align 1
@.str = private unnamed_addr constant [49 x i8] c"\013GICv3: %pOF: unable to map gic dist registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\013GICv3: %pOF: no distributor detected, giving up\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"#redistributor-regions\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\013GICv3: %pOF: couldn't map region %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"redistributor-stride\00", align 1
@gic_quirks = internal constant [5 x %struct.gic_quirk] [%struct.gic_quirk { ptr @.str.5, ptr @.str.6, ptr @gic_enable_quirk_msm8996, i32 0, i32 0 }, %struct.gic_quirk { ptr @.str.7, ptr null, ptr @gic_enable_quirk_hip06_07, i32 33817659, i32 -1 }, %struct.gic_quirk { ptr @.str.8, ptr null, ptr @gic_enable_quirk_hip06_07, i32 0, i32 -1 }, %struct.gic_quirk { ptr @.str.9, ptr null, ptr @gic_enable_quirk_cavium_38539, i32 -1610611892, i32 -386920449 }, %struct.gic_quirk zeroinitializer], align 4
@gic_data = internal global %struct.gic_chip_data zeroinitializer, section ".data..read_mostly", align 8
@supports_deactivate_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"GICv3: Qualcomm MSM8996 broken firmware\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"qcom,msm8996-gic-v3\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"GICv3: HIP06 erratum 161010803\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"GICv3: HIP07 erratum 161010803\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"GICv3: Cavium erratum 38539\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\016GICv3: GIC: Using split EOI/Deactivate mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"\016GICv3: %d SPIs implemented\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"\016GICv3: %d Extended SPIs implemented\0A\00", align 1
@gic_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr @gic_irq_domain_select, ptr null, ptr null, ptr null, ptr @gic_irq_domain_alloc, ptr @gic_irq_domain_free, ptr null, ptr null, ptr @gic_irq_domain_translate }, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"drivers/irqchip/irq-gic-v3.c\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"\016GICv3: Distributor has %sRange Selector support\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"\013GICv3: Failed to initialize MBIs\0A\00", align 1
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gic_irq_domain_select.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@gic_chip = internal global %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_mask_irq, ptr null, ptr @gic_unmask_irq, ptr @gic_eoi_irq, ptr @gic_set_affinity, ptr @gic_retrigger, ptr @gic_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_irq_get_irqchip_state, ptr @gic_irq_set_irqchip_state, ptr null, ptr null, ptr @gic_ipi_send_mask, ptr @gic_irq_nmi_setup, ptr @gic_irq_nmi_teardown, i32 21 }, align 4
@gic_eoimode1_chip = internal global %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_eoimode1_mask_irq, ptr null, ptr @gic_unmask_irq, ptr @gic_eoimode1_eoi_irq, ptr @gic_set_affinity, ptr @gic_retrigger, ptr @gic_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_irq_get_irqchip_state, ptr @gic_irq_set_irqchip_state, ptr @gic_irq_set_vcpu_affinity, ptr null, ptr @gic_ipi_send_mask, ptr @gic_irq_nmi_setup, ptr @gic_irq_nmi_teardown, i32 21 }, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"GICv3\00", align 1
@gic_do_wait_for_rwp._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.gic_do_wait_for_rwp = private unnamed_addr constant [20 x i8] c"gic_do_wait_for_rwp\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"\013GICv3: RWP timeout, gone fishing\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"\014GICv3: GIC: PPI INTID%d is secure or misconfigured\0A\00", align 1
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@gic_handle_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Unexpected interrupt received!\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"\016GICv3: %d PPIs implemented\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"\016GICv3: GICv4 features: %s%s%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"DirectLPI \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"RVPEID \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Valid+Dirty \00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"\014GICv3: No redistributor present @%p\0A\00", align 1
@__gic_update_rdist_properties.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"\016GICv3: Enabling SGIs without active state\0A\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"Distributor has extended ranges, but CPU%d doesn't\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"CPU%d: mpidr %lx has no re-distributor!\0A\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"\016GICv3: CPU%d: found redistributor %lx region %d:%pa\0A\00", align 1
@gic_enable_redist._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.gic_enable_redist = private unnamed_addr constant [18 x i8] c"gic_enable_redist\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"\013GICv3: redistributor failed to %s...\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.39 = private unnamed_addr constant [64 x i8] c"\013GICv3: GIC: unable to set SRE (disabled at EL2), panic ahead\0A\00", align 1
@has_rss = internal global i8 0, section ".data..percpu", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.40 = private unnamed_addr constant [52 x i8] c"\012GICv3: CPU%d (%lx) can't SGI CPU%d (%lx), no RSS\0A\00", align 1
@gic_cpu_sys_reg_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"\012GICv3: RSS is required but GICD doesn't support it\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"irqchip/arm/gicv3:starting\00", align 1
@gic_cpu_pm_notifier_block = internal global %struct.notifier_block { ptr @gic_cpu_pm_notifier, ptr null, i32 0 }, align 4
@.str.46 = private unnamed_addr constant [15 x i8] c"ppi-partitions\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"\016GICv3: GIC: PPI partition %pOFn[%d] { \00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"affinity\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"\01c%pOF[%d] \00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"\01c}\0A\00", align 1
@partition_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr @gic_irq_domain_select, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @partition_domain_translate }, align 4
@partition_domain_translate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gic_v3_kvm_info = internal unnamed_addr global %struct.gic_kvm_info zeroinitializer, section ".init.data", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_gic_nonsecure_priorities, ptr @__ksymtab_gic_pmr_sync, ptr @__of_table_gic_v3, ptr @__setup_gicv3_nolpi_cfg], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gicv3_nolpi_cfg(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @gicv3_nolpi) #15
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gic_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #16
  br label %84

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %6, i32 65512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !10
  %13 = and i32 %12, 240
  %14 = add nsw i32 %13, -48
  %15 = icmp ult i32 %14, 32
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #16
  br label %82

18:                                               ; preds = %10
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4
  br label %24

23:                                               ; preds = %18
  store i32 1, ptr %4, align 4
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 1, %23 ]
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 12) #15
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %82, label %28, !prof !11

28:                                               ; preds = %24
  %29 = extractvalue { i32, i1 } %26, 0
  %30 = call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %82, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %46, %32
  %36 = phi i32 [ %37, %46 ], [ 0, %32 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !9
  %37 = add nuw i32 %36, 1
  %38 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef %37, ptr noundef nonnull %5) #15
  %39 = call ptr @of_iomap(ptr noundef %0, i32 noundef %37) #15
  %40 = getelementptr %struct.redist_region, ptr %30, i32 %36
  store ptr %39, ptr %40, align 4
  %41 = icmp ne i32 %38, 0
  %42 = icmp eq ptr %39, null
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0, i32 noundef %36) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %65

46:                                               ; preds = %35
  %47 = load i32, ptr %5, align 4
  %48 = getelementptr %struct.redist_region, ptr %30, i32 %36, i32 1
  store i32 %47, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  %49 = load i32, ptr %4, align 4
  %50 = icmp ult i32 %37, %49
  br i1 %50, label %35, label %51

51:                                               ; preds = %46, %32
  %52 = call i32 @of_property_read_u64(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i64 0, ptr %3, align 8
  br label %55

55:                                               ; preds = %54, %51
  call void @gic_enable_of_quirks(ptr noundef %0, ptr noundef nonnull @gic_quirks, ptr noundef nonnull @gic_data) #15
  %56 = load i32, ptr %4, align 4
  %57 = load i64, ptr %3, align 8
  %58 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %59 = call fastcc i32 @gic_init_bases(ptr noundef nonnull %6, ptr noundef nonnull %30, i32 noundef %56, i64 noundef %57, ptr noundef %58) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  call fastcc void @gic_populate_ppi_partitions(ptr noundef %0) #18
  %62 = load volatile i32, ptr @supports_deactivate_key, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %84, !prof !12

64:                                               ; preds = %61
  call fastcc void @gic_of_setup_kvm_info(ptr noundef %0) #18
  br label %84

65:                                               ; preds = %55, %44
  %66 = phi i32 [ %59, %55 ], [ -19, %44 ]
  %67 = load i32, ptr %4, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %77, %65
  %70 = phi i32 [ %78, %77 ], [ %67, %65 ]
  %71 = phi i32 [ %79, %77 ], [ 0, %65 ]
  %72 = getelementptr %struct.redist_region, ptr %30, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  call void @iounmap(ptr noundef nonnull %73) #15
  %76 = load i32, ptr %4, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi i32 [ %70, %69 ], [ %76, %75 ]
  %79 = add nuw i32 %71, 1
  %80 = icmp ult i32 %79, %78
  br i1 %80, label %69, label %81

81:                                               ; preds = %77, %65
  call void @kfree(ptr noundef nonnull %30) #15
  br label %82

82:                                               ; preds = %81, %28, %24, %16
  %83 = phi i32 [ -19, %16 ], [ %66, %81 ], [ -12, %28 ], [ -12, %24 ]
  call void @iounmap(ptr noundef nonnull %6) #15
  br label %84

84:                                               ; preds = %82, %64, %61, %8
  %85 = phi i32 [ %83, %82 ], [ -6, %8 ], [ 0, %64 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_of_quirks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @gic_init_bases(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 section ".init.text" {
  %6 = load i32, ptr @__boot_cpu_mode, align 4
  %7 = and i32 %6, -2147483617
  %8 = icmp eq i32 %7, 26
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr @static_key_initialized, align 1, !range !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @supports_deactivate_key) #15
  br label %13

13:                                               ; preds = %12, %9
  %14 = load volatile i32, ptr @supports_deactivate_key, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load volatile i32, ptr @supports_deactivate_key, align 4
  %18 = icmp ne i32 %17, 0
  %19 = load i1, ptr @static_key_disable.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %24, !prof !11

22:                                               ; preds = %16
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  br label %24

23:                                               ; preds = %13
  store volatile i32 0, ptr @supports_deactivate_key, align 4
  br label %24

24:                                               ; preds = %23, %22, %16, %5
  %25 = load volatile i32, ptr @supports_deactivate_key, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29, !prof !12

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #16
  br label %29

29:                                               ; preds = %27, %24
  store ptr %4, ptr @gic_data, align 8
  store ptr %0, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  store ptr %1, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  store i32 %2, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 6), align 8
  store i64 %3, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 5), align 8
  %30 = getelementptr i8, ptr %0, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #15, !srcloc !10
  store i32 %31, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %32 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %33 = getelementptr i8, ptr %32, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #15, !srcloc !10
  tail call void @gic_enable_quirks(i32 noundef %34, ptr noundef nonnull @gic_quirks, ptr noundef nonnull @gic_data) #15
  %35 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %36 = shl i32 %35, 5
  %37 = and i32 %36, 992
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 988)
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %38) #16
  %40 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  %43 = lshr i32 %40, 22
  %44 = and i32 %43, 992
  %45 = add nuw nsw i32 %44, 32
  %46 = select i1 %42, i32 0, i32 %45
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %46) #16
  %48 = load i64, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 7), align 8
  %49 = and i64 %48, 2
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %53 = getelementptr i8, ptr %52, i32 12
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #15, !srcloc !10
  store i32 %54, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 5), align 4
  br label %55

55:                                               ; preds = %51, %29
  %56 = tail call ptr @__irq_domain_add(ptr noundef %4, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @gic_irq_domain_ops, ptr noundef nonnull @gic_data) #15
  store ptr %56, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %57 = tail call noalias ptr @__alloc_percpu(i32 noundef 32, i32 noundef 8) #17
  store ptr %57, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  store i32 16843009, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4
  %58 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %59 = icmp eq ptr %58, null
  %60 = icmp eq ptr %57, null
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %65, !prof !14

62:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1792, i32 noundef 9, ptr noundef null) #15
  %63 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %121, label %120

65:                                               ; preds = %55
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %58, i32 noundef 1) #15
  %66 = and i32 %31, 67108864
  %67 = icmp eq i32 %66, 0
  %68 = lshr exact i32 %66, 26
  %69 = trunc i32 %68 to i8
  store i8 %69, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 8), align 8
  %70 = select i1 %67, ptr @.str.16, ptr @.str.15
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %70) #16
  %72 = and i32 %31, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %76 = tail call i32 @mbi_init(ptr noundef %4, ptr noundef %75) #15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #16
  br label %80

80:                                               ; preds = %78, %74, %65
  %81 = tail call i32 @set_handle_irq(ptr noundef nonnull @gic_handle_irq) #16
  store i32 -1, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %82 = tail call fastcc i32 @gic_iterate_rdists(ptr noundef nonnull @__gic_update_rdist_properties) #15
  %83 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86, !prof !11

85:                                               ; preds = %80
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 963, i32 noundef 9, ptr noundef null) #15
  store i32 0, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = phi i32 [ %83, %80 ], [ 0, %85 ]
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %87) #16
  %89 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4, !range !13
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 9), align 2, !range !13
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, ptr @.str.15, ptr @.str.28
  %95 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1, !range !13
  %96 = icmp eq i8 %95, 0
  %97 = select i1 %96, ptr @.str.15, ptr @.str.29
  %98 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 10), align 1, !range !13
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, ptr @.str.15, ptr @.str.30
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %94, ptr noundef nonnull %97, ptr noundef nonnull %100) #16
  br label %102

102:                                              ; preds = %91, %86
  tail call fastcc void @gic_dist_init() #18
  tail call fastcc void @gic_cpu_init()
  tail call fastcc void @gic_smp_init() #18
  %103 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @gic_cpu_pm_notifier_block) #15
  %104 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %105 = getelementptr i8, ptr %104, i32 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #15, !srcloc !10
  %107 = and i32 %106, 131072
  %108 = icmp eq i32 %107, 0
  %109 = load i8, ptr @gicv3_nolpi, align 1
  %110 = and i8 %109, 1
  %111 = icmp ne i8 %110, 0
  %112 = select i1 %108, i1 true, i1 %111
  %113 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  br i1 %112, label %118, label %114

114:                                              ; preds = %102
  %115 = tail call i32 @its_init(ptr noundef %4, ptr noundef getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), ptr noundef %113) #15
  %116 = tail call i32 @its_cpu_init() #15
  %117 = tail call i32 @its_lpi_memreserve_init() #16
  br label %123

118:                                              ; preds = %102
  %119 = tail call i32 @gicv2m_init(ptr noundef %4, ptr noundef %113) #15
  br label %123

120:                                              ; preds = %62
  tail call void @irq_domain_remove(ptr noundef nonnull %63) #15
  br label %121

121:                                              ; preds = %120, %62
  %122 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  tail call void @free_percpu(ptr noundef %122) #15
  br label %123

123:                                              ; preds = %121, %118, %114
  %124 = phi i32 [ -12, %121 ], [ 0, %118 ], [ 0, %114 ]
  ret i32 %124
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @gic_populate_ppi_partitions(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = tail call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str.46) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %99, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #15
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %6
  store ptr null, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  br label %99

11:                                               ; preds = %6
  %12 = extractvalue { i32, i1 } %8, 0
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #17
  store ptr %13, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %99, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef null) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %98, label %18

18:                                               ; preds = %18, %15
  %19 = phi i32 [ %21, %18 ], [ 0, %15 ]
  %20 = phi ptr [ %22, %18 ], [ %16, %15 ]
  %21 = add i32 %19, 1
  %22 = tail call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef nonnull %20) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18

24:                                               ; preds = %18
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %98, label %26

26:                                               ; preds = %24
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 8) #15
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %33, label %29, !prof !11

29:                                               ; preds = %26
  %30 = extractvalue { i32, i1 } %27, 0
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %29, %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1870, i32 noundef 9, ptr noundef null) #15
  br label %98

34:                                               ; preds = %29
  %35 = tail call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef null) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %75, %34
  %38 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %98, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %42 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %43 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %44 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 2
  %45 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 3
  br label %80

46:                                               ; preds = %75, %34
  %47 = phi ptr [ %78, %75 ], [ %35, %34 ]
  %48 = phi i32 [ %77, %75 ], [ 0, %34 ]
  %49 = getelementptr %struct.partition_affinity, ptr %31, i32 %48
  %50 = getelementptr inbounds %struct.device_node, ptr %47, i32 0, i32 3
  %51 = getelementptr %struct.partition_affinity, ptr %31, i32 %48, i32 1
  store ptr %50, ptr %51, align 4
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %47, i32 noundef %48) #16
  %53 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %47, ptr noundef nonnull @.str.48, i32 noundef 4) #15
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %56, !prof !11

55:                                               ; preds = %46
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1886, i32 noundef 9, ptr noundef null) #15
  br label %75

56:                                               ; preds = %72, %46
  %57 = phi i32 [ %73, %72 ], [ 0, %46 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !9
  %58 = call i32 @of_property_read_u32_index(ptr noundef nonnull %47, ptr noundef nonnull @.str.48, i32 noundef %57, ptr noundef nonnull %2) #15
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60, !prof !12

60:                                               ; preds = %56
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1895, i32 noundef 9, ptr noundef null) #15
  br label %72

61:                                               ; preds = %56
  %62 = load i32, ptr %2, align 4
  %63 = call ptr @of_find_node_by_phandle(i32 noundef %62) #15
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66, !prof !11

65:                                               ; preds = %61
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1899, i32 noundef 9, ptr noundef null) #15
  br label %72

66:                                               ; preds = %61
  %67 = call i32 @of_cpu_node_to_id(ptr noundef nonnull %63) #15
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70, !prof !11

69:                                               ; preds = %66
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1903, i32 noundef 9, ptr noundef null) #15
  br label %72

70:                                               ; preds = %66
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull %63, i32 noundef %67) #16
  call void @_set_bit(i32 noundef %67, ptr noundef %49) #15
  br label %72

72:                                               ; preds = %70, %69, %65, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %73 = add nuw nsw i32 %57, 1
  %74 = icmp eq i32 %73, %53
  br i1 %74, label %75, label %56

75:                                               ; preds = %72, %55
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #16
  %77 = add i32 %48, 1
  %78 = call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef nonnull %47) #15
  %79 = icmp eq ptr %78, null
  br i1 %79, label %37, label %46

80:                                               ; preds = %94, %40
  %81 = phi i32 [ 0, %40 ], [ %95, %94 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  %82 = load ptr, ptr @gic_data, align 8
  store ptr %82, ptr %3, align 4
  store i32 3, ptr %41, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %45, i8 0, i64 52, i1 false)
  store i32 -1592735506, ptr %42, align 4
  store i32 %81, ptr %43, align 4
  store i32 0, ptr %44, align 4
  %83 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %3) #15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86, !prof !11

85:                                               ; preds = %80
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1929, i32 noundef 9, ptr noundef null) #15
  br label %94

86:                                               ; preds = %80
  %87 = load ptr, ptr @gic_data, align 8
  %88 = call ptr @partition_create_desc(ptr noundef %87, ptr noundef nonnull %31, i32 noundef %21, i32 noundef %83, ptr noundef nonnull @partition_domain_ops) #15
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91, !prof !11

90:                                               ; preds = %86
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1933, i32 noundef 9, ptr noundef null) #15
  br label %94

91:                                               ; preds = %86
  %92 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %93 = getelementptr ptr, ptr %92, i32 %81
  store ptr %88, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %90, %85
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %95 = add nuw i32 %81, 1
  %96 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %80, label %98

98:                                               ; preds = %94, %37, %33, %24, %15
  call void @of_node_put(ptr noundef nonnull %4) #15
  br label %99

99:                                               ; preds = %98, %11, %10, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @gic_of_setup_kvm_info(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #15
  store i32 %4, ptr getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v3_kvm_info, i32 0, i32 2), align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #15
  %8 = icmp sgt i32 %7, -1
  %9 = load i32, ptr %3, align 4
  %10 = add i32 %9, 3
  %11 = select i1 %8, i32 %10, i32 4
  store i32 %11, ptr %3, align 4
  %12 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %2) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v3_kvm_info, i32 0, i32 1), ptr noundef nonnull align 4 dereferenceable(32) %2, i32 32, i1 false)
  br label %15

15:                                               ; preds = %14, %6
  %16 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4, !range !13
  store i8 %16, ptr getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v3_kvm_info, i32 0, i32 5), align 4
  %17 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1, !range !13
  store i8 %17, ptr getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v3_kvm_info, i32 0, i32 6), align 1
  br label %18

18:                                               ; preds = %15, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gic_enable_quirk_msm8996(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 7
  %3 = load i64, ptr %2, align 8
  %4 = or i64 %3, 1
  store i64 %4, ptr %2, align 8
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gic_enable_quirk_hip06_07(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 3, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -769
  store i32 %7, ptr %2, align 8
  br label %8

8:                                                ; preds = %6, %1
  %9 = xor i1 %5, true
  ret i1 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gic_enable_quirk_cavium_38539(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 7
  %3 = load i64, ptr %2, align 8
  %4 = or i64 %3, 2
  store i64 %4, ptr %2, align 8
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_quirks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbi_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_handle_irq(ptr nocapture noundef readnone %0) #8 {
  %2 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 0", "=r"() #15, !srcloc !15
  tail call void asm sideeffect "dsb sy", "~{memory}"() #15, !srcloc !16
  %3 = and i32 %2, -4
  %4 = icmp eq i32 %3, 1020
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load volatile i32, ptr @supports_deactivate_key, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %9, !prof !12

8:                                                ; preds = %5
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 1", "r"(i32 %2) #15, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !18
  br label %10

9:                                                ; preds = %5
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !19
  br label %10

10:                                               ; preds = %9, %8
  %11 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %12 = tail call i32 @generic_handle_domain_irq(ptr noundef %11, i32 noundef %2) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = load i1, ptr @gic_handle_irq.__already_done, align 1
  br i1 %15, label %17, label %16, !prof !12

16:                                               ; preds = %14
  store i1 true, ptr @gic_handle_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 732, i32 noundef 9, ptr noundef nonnull @.str.24) #15
  br label %17

17:                                               ; preds = %16, %14
  %18 = load volatile i32, ptr @supports_deactivate_key, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23, !prof !12

20:                                               ; preds = %17
  %21 = icmp ult i32 %2, 8192
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c11, 1", "r"(i32 %2) #15, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  br label %24

23:                                               ; preds = %17
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 1", "r"(i32 %2) #15, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !18
  br label %24

24:                                               ; preds = %23, %22, %20, %10, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @gic_dist_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #15, !srcloc !22
  tail call void @gic_dist_wait_for_rwp()
  %2 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %3 = shl i32 %2, 5
  %4 = and i32 %3, 992
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 988)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr i8, ptr %1, i32 128
  br label %16

9:                                                ; preds = %16, %0
  %10 = phi i32 [ %2, %0 ], [ %21, %16 ]
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %90, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %1, i32 5120
  %15 = getelementptr i8, ptr %1, i32 7168
  br label %30

16:                                               ; preds = %16, %7
  %17 = phi i32 [ 32, %7 ], [ %20, %16 ]
  %18 = lshr exact i32 %17, 3
  %19 = getelementptr i8, ptr %8, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 -1) #15, !srcloc !22
  %20 = add nuw nsw i32 %17, 32
  %21 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %22 = shl i32 %21, 5
  %23 = and i32 %22, 992
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 988)
  %25 = icmp ult i32 %17, %24
  br i1 %25, label %16, label %9

26:                                               ; preds = %30
  %27 = icmp eq i32 %37, 0
  br i1 %27, label %90, label %28

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %1, i32 4096
  br label %48

30:                                               ; preds = %30, %13
  %31 = phi i32 [ 0, %13 ], [ %35, %30 ]
  %32 = lshr exact i32 %31, 3
  %33 = getelementptr i8, ptr %14, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -1) #15, !srcloc !22
  %34 = getelementptr i8, ptr %15, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -1) #15, !srcloc !22
  %35 = add nuw nsw i32 %31, 32
  %36 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  %39 = lshr i32 %36, 22
  %40 = and i32 %39, 992
  %41 = add nuw nsw i32 %40, 32
  %42 = select i1 %38, i32 0, i32 %41
  %43 = icmp ult i32 %35, %42
  br i1 %43, label %30, label %26

44:                                               ; preds = %48
  %45 = icmp eq i32 %54, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %1, i32 12288
  br label %65

48:                                               ; preds = %48, %28
  %49 = phi i32 [ 0, %28 ], [ %52, %48 ]
  %50 = lshr exact i32 %49, 3
  %51 = getelementptr i8, ptr %29, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 -1) #15, !srcloc !22
  %52 = add nuw nsw i32 %49, 32
  %53 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %54 = and i32 %53, 256
  %55 = icmp eq i32 %54, 0
  %56 = lshr i32 %53, 22
  %57 = and i32 %56, 992
  %58 = add nuw nsw i32 %57, 32
  %59 = select i1 %55, i32 0, i32 %58
  %60 = icmp ult i32 %52, %59
  br i1 %60, label %48, label %44

61:                                               ; preds = %65
  %62 = icmp eq i32 %71, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %61
  %64 = getelementptr i8, ptr %1, i32 8192
  br label %78

65:                                               ; preds = %65, %46
  %66 = phi i32 [ 0, %46 ], [ %69, %65 ]
  %67 = lshr exact i32 %66, 2
  %68 = getelementptr i8, ptr %47, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #15, !srcloc !22
  %69 = add nuw nsw i32 %66, 16
  %70 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %71 = and i32 %70, 256
  %72 = icmp eq i32 %71, 0
  %73 = lshr i32 %70, 22
  %74 = and i32 %73, 992
  %75 = add nuw nsw i32 %74, 32
  %76 = select i1 %72, i32 0, i32 %75
  %77 = icmp ult i32 %69, %76
  br i1 %77, label %65, label %61

78:                                               ; preds = %78, %63
  %79 = phi i32 [ 0, %63 ], [ %81, %78 ]
  %80 = getelementptr i8, ptr %64, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 -1600085856) #15, !srcloc !22
  %81 = add nuw nsw i32 %79, 4
  %82 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %83 = and i32 %82, 256
  %84 = icmp eq i32 %83, 0
  %85 = lshr i32 %82, 22
  %86 = and i32 %85, 992
  %87 = add nuw nsw i32 %86, 32
  %88 = select i1 %84, i32 0, i32 %87
  %89 = icmp ult i32 %81, %88
  br i1 %89, label %78, label %90

90:                                               ; preds = %78, %61, %44, %26, %9
  %91 = phi i32 [ %70, %61 ], [ %53, %44 ], [ %36, %26 ], [ %10, %9 ], [ %82, %78 ]
  %92 = shl i32 %91, 5
  %93 = and i32 %92, 992
  %94 = tail call i32 @llvm.umin.i32(i32 %93, i32 988)
  %95 = add nuw nsw i32 %94, 32
  tail call void @gic_dist_config(ptr noundef %1, i32 noundef %95, ptr noundef nonnull @gic_dist_wait_for_rwp) #15
  %96 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 5), align 4
  %97 = and i32 %96, 256
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %90
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #16
  br label %101

101:                                              ; preds = %99, %90
  %102 = phi i32 [ 275, %99 ], [ 19, %90 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %102) #15, !srcloc !22
  %103 = tail call ptr @llvm.thread.pointer() #15
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %105 = load i32, ptr %104, align 8
  %106 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = lshr i32 %107, 24
  %109 = zext i32 %108 to i64
  %110 = shl nuw nsw i64 %109, 32
  %111 = and i32 %107, 16711680
  %112 = zext i32 %111 to i64
  %113 = or i64 %110, %112
  %114 = and i32 %107, 65280
  %115 = zext i32 %114 to i64
  %116 = or i64 %113, %115
  %117 = and i32 %107, 255
  %118 = zext i32 %117 to i64
  %119 = or i64 %116, %118
  %120 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %121 = shl i32 %120, 5
  %122 = and i32 %121, 992
  %123 = tail call i32 @llvm.umin.i32(i32 %122, i32 988)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %101
  %126 = getelementptr i8, ptr %1, i32 24576
  %127 = trunc i64 %119 to i32
  br label %135

128:                                              ; preds = %135, %101
  %129 = phi i32 [ %120, %101 ], [ %141, %135 ]
  %130 = and i32 %129, 256
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %161, label %132

132:                                              ; preds = %128
  %133 = getelementptr i8, ptr %1, i32 32768
  %134 = trunc i64 %119 to i32
  br label %147

135:                                              ; preds = %135, %125
  %136 = phi i32 [ 32, %125 ], [ %140, %135 ]
  %137 = shl i32 %136, 3
  %138 = getelementptr i8, ptr %126, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %127) #15, !srcloc !22
  %139 = getelementptr i8, ptr %138, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %108) #15, !srcloc !22
  %140 = add nuw nsw i32 %136, 1
  %141 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %142 = shl i32 %141, 5
  %143 = and i32 %142, 992
  %144 = tail call i32 @llvm.umin.i32(i32 %143, i32 988)
  %145 = add nuw nsw i32 %144, 32
  %146 = icmp ult i32 %140, %145
  br i1 %146, label %135, label %128

147:                                              ; preds = %147, %132
  %148 = phi i32 [ 0, %132 ], [ %152, %147 ]
  %149 = shl i32 %148, 3
  %150 = getelementptr i8, ptr %133, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %134) #15, !srcloc !22
  %151 = getelementptr i8, ptr %150, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %108) #15, !srcloc !22
  %152 = add nuw nsw i32 %148, 1
  %153 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %154 = and i32 %153, 256
  %155 = icmp eq i32 %154, 0
  %156 = lshr i32 %153, 22
  %157 = and i32 %156, 992
  %158 = add nuw nsw i32 %157, 32
  %159 = select i1 %155, i32 0, i32 %158
  %160 = icmp ult i32 %152, %159
  br i1 %160, label %147, label %161

161:                                              ; preds = %147, %128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gic_cpu_init() unnamed_addr #8 {
  %1 = tail call fastcc i32 @gic_iterate_rdists(ptr noundef nonnull @__gic_populate_rdist) #15
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @llvm.thread.pointer() #15
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 914, i32 noundef 9, ptr noundef nonnull @.str.34, i32 noundef %6, i32 noundef %8) #15
  br label %80

9:                                                ; preds = %0
  %10 = load i64, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 7), align 8
  %11 = and i64 %10, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #10, !srcloc !23
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.anon.65, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !10
  %25 = and i32 %24, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #15, !srcloc !22
  br label %26

26:                                               ; preds = %31, %13
  %27 = phi i32 [ 999999, %13 ], [ %33, %31 ]
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !10
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !25
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #15
  %33 = add nsw i32 %27, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %26

35:                                               ; preds = %31
  %36 = tail call i32 @___ratelimit(ptr noundef nonnull @gic_enable_redist._rs, ptr noundef nonnull @__func__.gic_enable_redist) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #16
  br label %40

40:                                               ; preds = %38, %35, %26, %9
  %41 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %42 = icmp ugt i32 %41, 16
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %45 = and i32 %44, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43, %40
  %48 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 4", "=r"() #15, !srcloc !26
  %49 = and i32 %48, 524288
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55, !prof !11

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #15
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1128, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef %54) #15
  br label %55

55:                                               ; preds = %51, %47, %43
  %56 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %59 = inttoptr i32 %58 to ptr
  %60 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %59) #10, !srcloc !23
  %61 = add i32 %60, %57
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.anon.65, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 65536
  %66 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %67 = icmp eq i32 %66, -16
  br i1 %67, label %78, label %68

68:                                               ; preds = %55
  %69 = getelementptr i8, ptr %64, i32 65664
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i32 [ 0, %68 ], [ %74, %70 ]
  %72 = sdiv i32 %71, 8
  %73 = getelementptr i8, ptr %69, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 -1) #15, !srcloc !22
  %74 = add i32 %71, 32
  %75 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %76 = add i32 %75, 16
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %70, label %78

78:                                               ; preds = %70, %55
  %79 = phi i32 [ 0, %55 ], [ %76, %70 ]
  tail call void @gic_cpu_config(ptr noundef %65, i32 noundef %79, ptr noundef nonnull @gic_redist_wait_for_rwp) #15
  tail call fastcc void @gic_cpu_sys_reg_init()
  br label %80

80:                                               ; preds = %78, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @gic_smp_init() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #15
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %3 = load ptr, ptr @gic_data, align 8
  store ptr %3, ptr %1, align 4
  %4 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  store i32 1, ptr %4, align 4
  %5 = tail call i32 @__cpuhp_setup_state(i32 noundef 97, ptr noundef nonnull @.str.42, i1 noundef zeroext false, ptr noundef nonnull @gic_starting_cpu, ptr noundef null, i1 noundef zeroext false) #15
  %6 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %7 = call i32 @__irq_domain_alloc_irqs(ptr noundef %6, i32 noundef -1, i32 noundef 8, i32 noundef -1, ptr noundef nonnull %1, i1 noundef zeroext false, ptr noundef null) #15
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %0
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1244, i32 noundef 9, ptr noundef null) #15
  br label %11

10:                                               ; preds = %0
  call void @set_smp_ipi_range(i32 noundef %7, i32 noundef 8) #15
  br label %11

11:                                               ; preds = %10, %9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @its_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @its_cpu_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @its_lpi_memreserve_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gicv2m_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_select(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #8 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %10, label %62

10:                                               ; preds = %3
  %11 = icmp eq ptr %6, null
  %12 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %62, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, @of_fwnode_ops
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = call i32 @gic_irq_domain_translate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %20 = icmp ne i32 %19, 0
  %21 = load i1, ptr @gic_irq_domain_select.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %18
  store i1 true, ptr @gic_irq_domain_select.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1549, i32 noundef 9, ptr noundef null) #15
  br label %25

25:                                               ; preds = %24, %18
  br i1 %20, label %62, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %5, align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %1, align 4
  %32 = icmp eq ptr %31, null
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %34 = or i1 %32, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fwnode_handle, ptr %31, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, @of_fwnode_ops
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = tail call fastcc i32 @__get_intid_range(i32 noundef %27) #15
  %49 = and i32 %48, -3
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %47, %43, %39, %35, %30, %26
  %52 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %53 = icmp eq ptr %52, %0
  br label %62

54:                                               ; preds = %47
  %55 = icmp eq i32 %48, 1
  %56 = select i1 %55, i32 -16, i32 -1040
  %57 = add i32 %56, %27
  %58 = getelementptr ptr, ptr %28, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = tail call ptr @partition_get_domain(ptr noundef %59) #15
  %61 = icmp eq ptr %60, %0
  br label %62

62:                                               ; preds = %54, %51, %25, %14, %10, %3
  %63 = phi i1 [ %61, %54 ], [ %53, %51 ], [ false, %3 ], [ true, %14 ], [ false, %25 ], [ true, %10 ]
  %64 = zext i1 %63 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #8 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %7 = call i32 @gic_irq_domain_translate(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  br label %14

14:                                               ; preds = %44, %11
  %15 = phi i32 [ 0, %11 ], [ %49, %44 ]
  %16 = add i32 %15, %1
  %17 = add i32 %12, %15
  %18 = tail call ptr @irq_to_desc(i32 noundef %16) #15
  %19 = load volatile i32, ptr @supports_deactivate_key, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = select i1 %20, ptr @gic_eoimode1_chip, ptr @gic_chip, !prof !12
  %22 = tail call fastcc i32 @__get_intid_range(i32 noundef %17) #15
  switch i32 %22, label %51 [
    i32 0, label %23
    i32 1, label %23
    i32 3, label %23
    i32 2, label %26
    i32 4, label %26
    i32 5, label %32
  ]

23:                                               ; preds = %14, %14, %14
  %24 = tail call i32 @irq_set_percpu_devid(i32 noundef %16) #15
  %25 = load ptr, ptr %13, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %16, i32 noundef %17, ptr noundef nonnull %21, ptr noundef %25, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #15
  br label %44

26:                                               ; preds = %14, %14
  %27 = load ptr, ptr %13, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %16, i32 noundef %17, ptr noundef nonnull %21, ptr noundef %27, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef null, ptr noundef null) #15
  tail call void @irq_modify_status(i32 noundef %16, i32 noundef 1024, i32 noundef 0) #15
  %28 = getelementptr inbounds %struct.irq_desc, ptr %18, i32 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 16777216
  store i32 %31, ptr %29, align 4
  br label %44

32:                                               ; preds = %14
  %33 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #15, !srcloc !10
  %36 = and i32 %35, 131072
  %37 = icmp eq i32 %36, 0
  %38 = load i8, ptr @gicv3_nolpi, align 1
  %39 = and i8 %38, 1
  %40 = icmp ne i8 %39, 0
  %41 = select i1 %37, i1 true, i1 %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %32
  %43 = load ptr, ptr %13, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %16, i32 noundef %17, ptr noundef nonnull %21, ptr noundef %43, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef null, ptr noundef null) #15
  br label %44

44:                                               ; preds = %42, %26, %23
  %45 = getelementptr inbounds %struct.irq_desc, ptr %18, i32 0, i32 1, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 268435456
  store i32 %48, ptr %46, align 4
  %49 = add nuw i32 %15, 1
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %51, label %14

51:                                               ; preds = %44, %32, %14, %9, %4
  %52 = phi i32 [ %7, %4 ], [ 0, %9 ], [ 0, %44 ], [ -1, %32 ], [ -1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %9, %5 ], [ 0, %3 ]
  %7 = add i32 %6, %1
  %8 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %7) #15
  tail call void @__irq_set_handler(i32 noundef %7, ptr noundef null, i32 noundef 0, ptr noundef null) #15
  tail call void @irq_domain_reset_irq_data(ptr noundef %8) #15
  %9 = add nuw i32 %6, 1
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %11, label %5

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 %10, ptr %2, align 4
  store i32 1, ptr %3, align 4
  br label %79

13:                                               ; preds = %8, %4
  %14 = load ptr, ptr %1, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %65, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @of_fwnode_ops
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = icmp slt i32 %6, 3
  br i1 %23, label %79, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %79 [
    i32 0, label %27
    i32 1, label %31
    i32 2, label %35
    i32 3, label %39
    i32 -1592735507, label %43
    i32 -1592735506, label %46
  ]

27:                                               ; preds = %24
  %28 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 32
  br label %55

31:                                               ; preds = %24
  %32 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 16
  br label %55

35:                                               ; preds = %24
  %36 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 4096
  br label %55

39:                                               ; preds = %24
  %40 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1056
  br label %55

43:                                               ; preds = %24
  %44 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %45 = load i32, ptr %44, align 4
  br label %55

46:                                               ; preds = %24
  %47 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %2, align 4
  %49 = load i32, ptr %47, align 4
  %50 = icmp ugt i32 %49, 15
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = add i32 %48, 1040
  br label %55

53:                                               ; preds = %46
  %54 = add i32 %48, 16
  br label %55

55:                                               ; preds = %53, %51, %43, %39, %35, %31, %27
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ], [ %45, %43 ], [ %42, %39 ], [ %38, %35 ], [ %34, %31 ], [ %30, %27 ]
  store i32 %56, ptr %2, align 4
  %57 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 15
  store i32 %59, ptr %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load i32, ptr %25, align 4
  %63 = icmp eq i32 %62, -1592735506
  br i1 %63, label %79, label %64, !prof !12

64:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1461, i32 noundef 9, ptr noundef null) #15
  br label %79

65:                                               ; preds = %18, %13
  br i1 %15, label %79, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, @irqchip_fwnode_ops
  %70 = icmp eq i32 %6, 2
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %2, align 4
  %75 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %3, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79, !prof !11

78:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1472, i32 noundef 9, ptr noundef null) #15
  br label %79

79:                                               ; preds = %78, %72, %66, %65, %64, %61, %55, %24, %22, %12
  %80 = phi i32 [ 0, %12 ], [ -22, %22 ], [ -22, %24 ], [ 0, %55 ], [ 0, %64 ], [ 0, %61 ], [ 0, %78 ], [ 0, %72 ], [ -22, %66 ], [ -22, %65 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @partition_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__get_intid_range(i32 noundef %0) unnamed_addr #9 {
  switch i32 %0, label %11 [
    i32 0, label %14
    i32 1, label %14
    i32 2, label %14
    i32 3, label %14
    i32 4, label %14
    i32 5, label %14
    i32 6, label %14
    i32 7, label %14
    i32 8, label %14
    i32 9, label %14
    i32 10, label %14
    i32 11, label %14
    i32 12, label %14
    i32 13, label %14
    i32 14, label %14
    i32 15, label %14
    i32 16, label %2
    i32 17, label %2
    i32 18, label %2
    i32 19, label %2
    i32 20, label %2
    i32 21, label %2
    i32 22, label %2
    i32 23, label %2
    i32 24, label %2
    i32 25, label %2
    i32 26, label %2
    i32 27, label %2
    i32 28, label %2
    i32 29, label %2
    i32 30, label %2
    i32 31, label %2
    i32 1056, label %7
    i32 1057, label %7
    i32 1058, label %7
    i32 1059, label %7
    i32 1060, label %7
    i32 1061, label %7
    i32 1062, label %7
    i32 1063, label %7
    i32 1064, label %7
    i32 1065, label %7
    i32 1066, label %7
    i32 1067, label %7
    i32 1068, label %7
    i32 1069, label %7
    i32 1070, label %7
    i32 1071, label %7
    i32 1072, label %7
    i32 1073, label %7
    i32 1074, label %7
    i32 1075, label %7
    i32 1076, label %7
    i32 1077, label %7
    i32 1078, label %7
    i32 1079, label %7
    i32 1080, label %7
    i32 1081, label %7
    i32 1082, label %7
    i32 1083, label %7
    i32 1084, label %7
    i32 1085, label %7
    i32 1086, label %7
    i32 1087, label %7
    i32 1088, label %7
    i32 1089, label %7
    i32 1090, label %7
    i32 1091, label %7
    i32 1092, label %7
    i32 1093, label %7
    i32 1094, label %7
    i32 1095, label %7
    i32 1096, label %7
    i32 1097, label %7
    i32 1098, label %7
    i32 1099, label %7
    i32 1100, label %7
    i32 1101, label %7
    i32 1102, label %7
    i32 1103, label %7
    i32 1104, label %7
    i32 1105, label %7
    i32 1106, label %7
    i32 1107, label %7
    i32 1108, label %7
    i32 1109, label %7
    i32 1110, label %7
    i32 1111, label %7
    i32 1112, label %7
    i32 1113, label %7
    i32 1114, label %7
    i32 1115, label %7
    i32 1116, label %7
    i32 1117, label %7
    i32 1118, label %7
    i32 1119, label %7
  ]

2:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %14

3:                                                ; preds = %8
  %4 = add i32 %0, -32
  %5 = icmp ult i32 %4, 988
  %6 = select i1 %5, i32 2, i32 6
  br label %14

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %14

8:                                                ; preds = %11
  %9 = and i32 %0, -1024
  %10 = icmp eq i32 %9, 4096
  br i1 %10, label %14, label %3

11:                                               ; preds = %1
  %12 = add i32 %0, -8192
  %13 = icmp ult i32 %12, 16769024
  br i1 %13, label %14, label %8

14:                                               ; preds = %11, %8, %7, %3, %2, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %15 = phi i32 [ 3, %7 ], [ 1, %2 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 4, %8 ], [ 5, %11 ], [ %6, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_mask_irq(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = tail call fastcc i32 @__get_intid_range(i32 noundef %3) #15
  switch i32 %4, label %9 [
    i32 0, label %12
    i32 1, label %12
    i32 2, label %12
    i32 3, label %5
    i32 4, label %7
  ]

5:                                                ; preds = %1
  %6 = add i32 %3, -1024
  br label %15

7:                                                ; preds = %1
  %8 = add i32 %3, -4096
  br label %27

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %10 = load i32, ptr %2, align 4
  %11 = tail call fastcc i32 @__get_intid_range(i32 noundef %10) #15
  br label %12

12:                                               ; preds = %9, %1, %1, %1
  %13 = phi i32 [ %4, %1 ], [ %4, %1 ], [ %4, %1 ], [ %11, %9 ]
  %14 = phi i32 [ %3, %1 ], [ %3, %1 ], [ %3, %1 ], [ %10, %9 ]
  switch i32 %13, label %27 [
    i32 0, label %15
    i32 1, label %15
    i32 3, label %15
  ]

15:                                               ; preds = %12, %12, %12, %5
  %16 = phi i32 [ %6, %5 ], [ %14, %12 ], [ %14, %12 ], [ %14, %12 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #10, !srcloc !23
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.anon.65, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 65536
  br label %31

27:                                               ; preds = %12, %7
  %28 = phi i32 [ 5120, %7 ], [ 384, %12 ]
  %29 = phi i32 [ %8, %7 ], [ %14, %12 ]
  %30 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %31

31:                                               ; preds = %27, %15
  %32 = phi i32 [ 384, %15 ], [ %28, %27 ]
  %33 = phi i32 [ %16, %15 ], [ %29, %27 ]
  %34 = phi ptr [ %26, %15 ], [ %30, %27 ]
  %35 = phi ptr [ @gic_redist_wait_for_rwp, %15 ], [ @gic_dist_wait_for_rwp, %27 ]
  %36 = and i32 %33, 31
  %37 = shl nuw i32 1, %36
  %38 = getelementptr i8, ptr %34, i32 %32
  %39 = lshr i32 %33, 3
  %40 = and i32 %39, 536870908
  %41 = getelementptr i8, ptr %38, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #15, !srcloc !22
  tail call void %35() #15, !callees !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_unmask_irq(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = tail call fastcc i32 @__get_intid_range(i32 noundef %3) #15
  switch i32 %4, label %9 [
    i32 0, label %12
    i32 1, label %12
    i32 2, label %12
    i32 3, label %5
    i32 4, label %7
  ]

5:                                                ; preds = %1
  %6 = add i32 %3, -1024
  br label %15

7:                                                ; preds = %1
  %8 = add i32 %3, -4096
  br label %27

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %10 = load i32, ptr %2, align 4
  %11 = tail call fastcc i32 @__get_intid_range(i32 noundef %10) #15
  br label %12

12:                                               ; preds = %9, %1, %1, %1
  %13 = phi i32 [ %4, %1 ], [ %4, %1 ], [ %4, %1 ], [ %11, %9 ]
  %14 = phi i32 [ %3, %1 ], [ %3, %1 ], [ %3, %1 ], [ %10, %9 ]
  switch i32 %13, label %27 [
    i32 0, label %15
    i32 1, label %15
    i32 3, label %15
  ]

15:                                               ; preds = %12, %12, %12, %5
  %16 = phi i32 [ %6, %5 ], [ %14, %12 ], [ %14, %12 ], [ %14, %12 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #10, !srcloc !23
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.anon.65, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 65536
  br label %31

27:                                               ; preds = %12, %7
  %28 = phi i32 [ 4608, %7 ], [ 256, %12 ]
  %29 = phi i32 [ %8, %7 ], [ %14, %12 ]
  %30 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %31

31:                                               ; preds = %27, %15
  %32 = phi i32 [ 256, %15 ], [ %28, %27 ]
  %33 = phi i32 [ %16, %15 ], [ %29, %27 ]
  %34 = phi ptr [ %26, %15 ], [ %30, %27 ]
  %35 = phi ptr [ @gic_redist_wait_for_rwp, %15 ], [ @gic_dist_wait_for_rwp, %27 ]
  %36 = and i32 %33, 31
  %37 = shl nuw i32 1, %36
  %38 = getelementptr i8, ptr %34, i32 %32
  %39 = lshr i32 %33, 3
  %40 = and i32 %39, 536870908
  %41 = getelementptr i8, ptr %38, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #15, !srcloc !22
  tail call void %35() #15, !callees !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_eoi_irq(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 1", "r"(i32 %3) #15, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_set_affinity(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #8 {
  br i1 %2, label %4, label %6

4:                                                ; preds = %3
  %5 = tail call i32 @_find_first_bit_le(ptr noundef %1, i32 noundef 16) #15
  br label %14

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = load i32, ptr @__cpu_online_mask, align 4
  %9 = and i32 %7, 65535
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  %12 = tail call i32 @llvm.cttz.i32(i32 %10, i1 true) #15, !range !28
  %13 = select i1 %11, i32 16, i32 %12
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %5, %4 ], [ %13, %6 ]
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %164

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = tail call fastcc i32 @__get_intid_range(i32 noundef %20) #15
  switch i32 %21, label %24 [
    i32 0, label %164
    i32 1, label %164
    i32 3, label %164
    i32 4, label %22
    i32 2, label %38
  ]

22:                                               ; preds = %18
  %23 = add i32 %20, -4096
  br label %38

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %25 = load i32, ptr %19, align 4
  %26 = tail call fastcc i32 @__get_intid_range(i32 noundef %25) #15
  switch i32 %26, label %38 [
    i32 0, label %27
    i32 1, label %27
    i32 3, label %27
  ]

27:                                               ; preds = %24, %24, %24
  %28 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #10, !srcloc !23
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.anon.65, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 65536
  br label %42

38:                                               ; preds = %24, %22, %18
  %39 = phi i32 [ 256, %24 ], [ 4608, %22 ], [ 256, %18 ]
  %40 = phi i32 [ %25, %24 ], [ %23, %22 ], [ %20, %18 ]
  %41 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %42

42:                                               ; preds = %38, %27
  %43 = phi i32 [ 256, %27 ], [ %39, %38 ]
  %44 = phi i32 [ %25, %27 ], [ %40, %38 ]
  %45 = phi ptr [ %37, %27 ], [ %41, %38 ]
  %46 = and i32 %44, 31
  %47 = getelementptr i8, ptr %45, i32 %43
  %48 = lshr i32 %44, 3
  %49 = and i32 %48, 536870908
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #15, !srcloc !10
  %52 = shl nuw i32 1, %46
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %42
  tail call void @gic_mask_irq(ptr noundef %0)
  %56 = load i32, ptr %19, align 4
  %57 = tail call fastcc i32 @__get_intid_range(i32 noundef %56) #15
  switch i32 %57, label %62 [
    i32 0, label %65
    i32 1, label %65
    i32 2, label %65
    i32 3, label %58
    i32 4, label %60
  ]

58:                                               ; preds = %55
  %59 = add i32 %56, -1024
  br label %68

60:                                               ; preds = %55
  %61 = add i32 %56, -4096
  br label %80

62:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %63 = load i32, ptr %19, align 4
  %64 = tail call fastcc i32 @__get_intid_range(i32 noundef %63) #15
  br label %65

65:                                               ; preds = %62, %55, %55, %55
  %66 = phi i32 [ %57, %55 ], [ %57, %55 ], [ %57, %55 ], [ %64, %62 ]
  %67 = phi i32 [ %56, %55 ], [ %56, %55 ], [ %56, %55 ], [ %63, %62 ]
  switch i32 %66, label %84 [
    i32 0, label %68
    i32 1, label %68
    i32 3, label %68
    i32 2, label %80
    i32 4, label %80
  ]

68:                                               ; preds = %65, %65, %65, %58
  %69 = phi i32 [ %59, %58 ], [ %67, %65 ], [ %67, %65 ], [ %67, %65 ]
  %70 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %71 = ptrtoint ptr %70 to i32
  %72 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %73 = inttoptr i32 %72 to ptr
  %74 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %73) #10, !srcloc !23
  %75 = add i32 %74, %71
  %76 = inttoptr i32 %75 to ptr
  %77 = getelementptr inbounds %struct.anon.65, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 65536
  br label %84

80:                                               ; preds = %65, %65, %60
  %81 = phi i32 [ 32768, %60 ], [ 24576, %65 ], [ 24576, %65 ]
  %82 = phi i32 [ %61, %60 ], [ %67, %65 ], [ %67, %65 ]
  %83 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %84

84:                                               ; preds = %80, %68, %65
  %85 = phi i32 [ %81, %80 ], [ 24576, %68 ], [ 24576, %65 ]
  %86 = phi i32 [ %82, %80 ], [ %69, %68 ], [ %67, %65 ]
  %87 = phi ptr [ %83, %80 ], [ %79, %68 ], [ null, %65 ]
  %88 = getelementptr i8, ptr %87, i32 %85
  %89 = shl i32 %86, 3
  %90 = getelementptr i8, ptr %88, i32 %89
  %91 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %15
  %92 = load i32, ptr %91, align 4
  %93 = lshr i32 %92, 24
  %94 = and i32 %92, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %94) #15, !srcloc !22
  %95 = getelementptr i8, ptr %90, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #15, !srcloc !22
  tail call void @gic_unmask_irq(ptr noundef %0)
  br label %153

96:                                               ; preds = %42
  %97 = load i32, ptr %19, align 4
  %98 = tail call fastcc i32 @__get_intid_range(i32 noundef %97) #15
  switch i32 %98, label %103 [
    i32 0, label %106
    i32 1, label %106
    i32 2, label %106
    i32 3, label %99
    i32 4, label %101
  ]

99:                                               ; preds = %96
  %100 = add i32 %97, -1024
  br label %109

101:                                              ; preds = %96
  %102 = add i32 %97, -4096
  br label %121

103:                                              ; preds = %96
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %104 = load i32, ptr %19, align 4
  %105 = tail call fastcc i32 @__get_intid_range(i32 noundef %104) #15
  br label %106

106:                                              ; preds = %103, %96, %96, %96
  %107 = phi i32 [ %98, %96 ], [ %98, %96 ], [ %98, %96 ], [ %105, %103 ]
  %108 = phi i32 [ %97, %96 ], [ %97, %96 ], [ %97, %96 ], [ %104, %103 ]
  switch i32 %107, label %125 [
    i32 0, label %109
    i32 1, label %109
    i32 3, label %109
    i32 2, label %121
    i32 4, label %121
  ]

109:                                              ; preds = %106, %106, %106, %99
  %110 = phi i32 [ %100, %99 ], [ %108, %106 ], [ %108, %106 ], [ %108, %106 ]
  %111 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %112 = ptrtoint ptr %111 to i32
  %113 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %114 = inttoptr i32 %113 to ptr
  %115 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %114) #10, !srcloc !23
  %116 = add i32 %115, %112
  %117 = inttoptr i32 %116 to ptr
  %118 = getelementptr inbounds %struct.anon.65, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 65536
  br label %125

121:                                              ; preds = %106, %106, %101
  %122 = phi i32 [ 32768, %101 ], [ 24576, %106 ], [ 24576, %106 ]
  %123 = phi i32 [ %102, %101 ], [ %108, %106 ], [ %108, %106 ]
  %124 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %125

125:                                              ; preds = %121, %109, %106
  %126 = phi i32 [ %122, %121 ], [ 24576, %109 ], [ 24576, %106 ]
  %127 = phi i32 [ %123, %121 ], [ %110, %109 ], [ %108, %106 ]
  %128 = phi ptr [ %124, %121 ], [ %120, %109 ], [ null, %106 ]
  %129 = getelementptr i8, ptr %128, i32 %126
  %130 = shl i32 %127, 3
  %131 = getelementptr i8, ptr %129, i32 %130
  %132 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %15
  %133 = load i32, ptr %132, align 4
  %134 = lshr i32 %133, 24
  %135 = and i32 %133, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %135) #15, !srcloc !22
  %136 = getelementptr i8, ptr %131, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #15, !srcloc !22
  %137 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #15, !srcloc !10
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %153, label %140

140:                                              ; preds = %149, %125
  %141 = phi i32 [ %142, %149 ], [ 1000000, %125 ]
  %142 = add nsw i32 %141, -1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = tail call i32 @___ratelimit(ptr noundef nonnull @gic_do_wait_for_rwp._rs, ptr noundef nonnull @__func__.gic_do_wait_for_rwp) #15
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %153

149:                                              ; preds = %140
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !30
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748) #15
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #15, !srcloc !10
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %140

153:                                              ; preds = %149, %147, %144, %125, %84
  %154 = and i32 %15, 31
  %155 = add nuw nsw i32 %154, 1
  %156 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %155
  %157 = lshr i32 %15, 5
  %158 = sub nsw i32 0, %157
  %159 = getelementptr i32, ptr %156, i32 %158
  %160 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.irq_common_data, ptr %161, i32 0, i32 4
  %163 = load i32, ptr %159, align 4
  store i32 %163, ptr %162, align 4
  br label %164

164:                                              ; preds = %153, %18, %18, %18, %14
  %165 = phi i32 [ 2, %153 ], [ -22, %14 ], [ -22, %18 ], [ -22, %18 ], [ -22, %18 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_retrigger(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 8191
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @__get_intid_range(i32 noundef %3) #15
  switch i32 %6, label %11 [
    i32 0, label %14
    i32 1, label %14
    i32 2, label %14
    i32 3, label %7
    i32 4, label %9
  ]

7:                                                ; preds = %5
  %8 = add nsw i32 %3, -1024
  br label %17

9:                                                ; preds = %5
  %10 = add nsw i32 %3, -4096
  br label %29

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %12 = load i32, ptr %2, align 4
  %13 = tail call fastcc i32 @__get_intid_range(i32 noundef %12) #15
  br label %14

14:                                               ; preds = %11, %5, %5, %5
  %15 = phi i32 [ %6, %5 ], [ %6, %5 ], [ %6, %5 ], [ %13, %11 ]
  %16 = phi i32 [ %3, %5 ], [ %3, %5 ], [ %3, %5 ], [ %12, %11 ]
  switch i32 %15, label %29 [
    i32 0, label %17
    i32 1, label %17
    i32 3, label %17
  ]

17:                                               ; preds = %14, %14, %14, %7
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ], [ %16, %14 ], [ %16, %14 ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #10, !srcloc !23
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.anon.65, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 65536
  br label %33

29:                                               ; preds = %14, %9
  %30 = phi i32 [ 5632, %9 ], [ 512, %14 ]
  %31 = phi i32 [ %10, %9 ], [ %16, %14 ]
  %32 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %33

33:                                               ; preds = %29, %17
  %34 = phi i32 [ 512, %17 ], [ %30, %29 ]
  %35 = phi i32 [ %18, %17 ], [ %31, %29 ]
  %36 = phi ptr [ %28, %17 ], [ %32, %29 ]
  %37 = phi ptr [ @gic_redist_wait_for_rwp, %17 ], [ @gic_dist_wait_for_rwp, %29 ]
  %38 = and i32 %35, 31
  %39 = shl nuw i32 1, %38
  %40 = getelementptr i8, ptr %36, i32 %34
  %41 = lshr i32 %35, 3
  %42 = and i32 %41, 536870908
  %43 = getelementptr i8, ptr %40, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #15, !srcloc !22
  tail call void %37() #15, !callees !27
  br label %44

44:                                               ; preds = %33, %1
  %45 = xor i1 %4, true
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call fastcc i32 @__get_intid_range(i32 noundef %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 1
  %9 = select i1 %8, i32 0, i32 -22
  br label %50

10:                                               ; preds = %2
  %11 = icmp eq i32 %5, 2
  %12 = icmp eq i32 %5, 4
  %13 = or i1 %11, %12
  %14 = freeze i1 %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  switch i32 %1, label %50 [
    i32 4, label %16
    i32 1, label %16
  ]

16:                                               ; preds = %15, %15, %10
  switch i32 %5, label %28 [
    i32 3, label %17
    i32 1, label %17
  ]

17:                                               ; preds = %16, %16
  %18 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #10, !srcloc !23
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr inbounds %struct.anon.65, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 65536
  br label %30

28:                                               ; preds = %16
  %29 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %30

30:                                               ; preds = %28, %17
  %31 = phi ptr [ %27, %17 ], [ %29, %28 ]
  %32 = phi ptr [ @gic_redist_wait_for_rwp, %17 ], [ @gic_dist_wait_for_rwp, %28 ]
  switch i32 %5, label %37 [
    i32 4, label %35
    i32 1, label %39
    i32 2, label %39
    i32 3, label %33
  ]

33:                                               ; preds = %30
  %34 = add i32 %4, -1024
  br label %39

35:                                               ; preds = %30
  %36 = add i32 %4, -4096
  br label %39

37:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %38 = load i32, ptr %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %33, %30, %30
  %40 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %4, %30 ], [ %4, %30 ]
  %41 = phi i32 [ 3072, %37 ], [ 12288, %35 ], [ 3072, %33 ], [ 3072, %30 ], [ 3072, %30 ]
  %42 = getelementptr i8, ptr %31, i32 %41
  %43 = tail call i32 @gic_configure_irq(i32 noundef %40, i32 noundef %1, ptr noundef %42, ptr noundef nonnull %32) #15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = and i32 %5, -3
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %4) #16
  br label %50

50:                                               ; preds = %48, %45, %39, %15, %7
  %51 = phi i32 [ %9, %7 ], [ -22, %15 ], [ 0, %48 ], [ %43, %45 ], [ 0, %39 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_get_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 8191
  br i1 %6, label %134, label %7

7:                                                ; preds = %3
  switch i32 %1, label %134 [
    i32 0, label %8
    i32 1, label %49
    i32 2, label %90
  ]

8:                                                ; preds = %7
  %9 = tail call fastcc i32 @__get_intid_range(i32 noundef %5) #15
  switch i32 %9, label %14 [
    i32 0, label %17
    i32 1, label %17
    i32 2, label %17
    i32 3, label %10
    i32 4, label %12
  ]

10:                                               ; preds = %8
  %11 = add nsw i32 %5, -1024
  br label %20

12:                                               ; preds = %8
  %13 = add nsw i32 %5, -4096
  br label %32

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %15 = load i32, ptr %4, align 4
  %16 = tail call fastcc i32 @__get_intid_range(i32 noundef %15) #15
  br label %17

17:                                               ; preds = %14, %8, %8, %8
  %18 = phi i32 [ %9, %8 ], [ %9, %8 ], [ %9, %8 ], [ %16, %14 ]
  %19 = phi i32 [ %5, %8 ], [ %5, %8 ], [ %5, %8 ], [ %15, %14 ]
  switch i32 %18, label %32 [
    i32 0, label %20
    i32 1, label %20
    i32 3, label %20
  ]

20:                                               ; preds = %17, %17, %17, %10
  %21 = phi i32 [ %11, %10 ], [ %19, %17 ], [ %19, %17 ], [ %19, %17 ]
  %22 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #10, !srcloc !23
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.anon.65, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 65536
  br label %36

32:                                               ; preds = %17, %12
  %33 = phi i32 [ 5632, %12 ], [ 512, %17 ]
  %34 = phi i32 [ %13, %12 ], [ %19, %17 ]
  %35 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %36

36:                                               ; preds = %32, %20
  %37 = phi i32 [ 512, %20 ], [ %33, %32 ]
  %38 = phi i32 [ %21, %20 ], [ %34, %32 ]
  %39 = phi ptr [ %31, %20 ], [ %35, %32 ]
  %40 = and i32 %38, 31
  %41 = getelementptr i8, ptr %39, i32 %37
  %42 = lshr i32 %38, 3
  %43 = and i32 %42, 536870908
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #15, !srcloc !10
  %46 = shl nuw i32 1, %40
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br label %131

49:                                               ; preds = %7
  %50 = tail call fastcc i32 @__get_intid_range(i32 noundef %5) #15
  switch i32 %50, label %55 [
    i32 0, label %58
    i32 1, label %58
    i32 2, label %58
    i32 3, label %51
    i32 4, label %53
  ]

51:                                               ; preds = %49
  %52 = add nsw i32 %5, -1024
  br label %61

53:                                               ; preds = %49
  %54 = add nsw i32 %5, -4096
  br label %73

55:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %56 = load i32, ptr %4, align 4
  %57 = tail call fastcc i32 @__get_intid_range(i32 noundef %56) #15
  br label %58

58:                                               ; preds = %55, %49, %49, %49
  %59 = phi i32 [ %50, %49 ], [ %50, %49 ], [ %50, %49 ], [ %57, %55 ]
  %60 = phi i32 [ %5, %49 ], [ %5, %49 ], [ %5, %49 ], [ %56, %55 ]
  switch i32 %59, label %73 [
    i32 0, label %61
    i32 1, label %61
    i32 3, label %61
  ]

61:                                               ; preds = %58, %58, %58, %51
  %62 = phi i32 [ %52, %51 ], [ %60, %58 ], [ %60, %58 ], [ %60, %58 ]
  %63 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %64 = ptrtoint ptr %63 to i32
  %65 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %66 = inttoptr i32 %65 to ptr
  %67 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %66) #10, !srcloc !23
  %68 = add i32 %67, %64
  %69 = inttoptr i32 %68 to ptr
  %70 = getelementptr inbounds %struct.anon.65, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 65536
  br label %77

73:                                               ; preds = %58, %53
  %74 = phi i32 [ 6656, %53 ], [ 768, %58 ]
  %75 = phi i32 [ %54, %53 ], [ %60, %58 ]
  %76 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %77

77:                                               ; preds = %73, %61
  %78 = phi i32 [ 768, %61 ], [ %74, %73 ]
  %79 = phi i32 [ %62, %61 ], [ %75, %73 ]
  %80 = phi ptr [ %72, %61 ], [ %76, %73 ]
  %81 = and i32 %79, 31
  %82 = getelementptr i8, ptr %80, i32 %78
  %83 = lshr i32 %79, 3
  %84 = and i32 %83, 536870908
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #15, !srcloc !10
  %87 = shl nuw i32 1, %81
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br label %131

90:                                               ; preds = %7
  %91 = tail call fastcc i32 @__get_intid_range(i32 noundef %5) #15
  switch i32 %91, label %96 [
    i32 0, label %99
    i32 1, label %99
    i32 2, label %99
    i32 3, label %92
    i32 4, label %94
  ]

92:                                               ; preds = %90
  %93 = add nsw i32 %5, -1024
  br label %102

94:                                               ; preds = %90
  %95 = add nsw i32 %5, -4096
  br label %114

96:                                               ; preds = %90
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %97 = load i32, ptr %4, align 4
  %98 = tail call fastcc i32 @__get_intid_range(i32 noundef %97) #15
  br label %99

99:                                               ; preds = %96, %90, %90, %90
  %100 = phi i32 [ %91, %90 ], [ %91, %90 ], [ %91, %90 ], [ %98, %96 ]
  %101 = phi i32 [ %5, %90 ], [ %5, %90 ], [ %5, %90 ], [ %97, %96 ]
  switch i32 %100, label %114 [
    i32 0, label %102
    i32 1, label %102
    i32 3, label %102
  ]

102:                                              ; preds = %99, %99, %99, %92
  %103 = phi i32 [ %93, %92 ], [ %101, %99 ], [ %101, %99 ], [ %101, %99 ]
  %104 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %105 = ptrtoint ptr %104 to i32
  %106 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %107 = inttoptr i32 %106 to ptr
  %108 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %107) #10, !srcloc !23
  %109 = add i32 %108, %105
  %110 = inttoptr i32 %109 to ptr
  %111 = getelementptr inbounds %struct.anon.65, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 65536
  br label %118

114:                                              ; preds = %99, %94
  %115 = phi i32 [ 4608, %94 ], [ 256, %99 ]
  %116 = phi i32 [ %95, %94 ], [ %101, %99 ]
  %117 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %118

118:                                              ; preds = %114, %102
  %119 = phi i32 [ 256, %102 ], [ %115, %114 ]
  %120 = phi i32 [ %103, %102 ], [ %116, %114 ]
  %121 = phi ptr [ %113, %102 ], [ %117, %114 ]
  %122 = and i32 %120, 31
  %123 = getelementptr i8, ptr %121, i32 %119
  %124 = lshr i32 %120, 3
  %125 = and i32 %124, 536870908
  %126 = getelementptr i8, ptr %123, i32 %125
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #15, !srcloc !10
  %128 = shl nuw i32 1, %122
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br label %131

131:                                              ; preds = %118, %77, %36
  %132 = phi i1 [ %48, %36 ], [ %89, %77 ], [ %130, %118 ]
  %133 = zext i1 %132 to i8
  store i8 %133, ptr %2, align 1
  br label %134

134:                                              ; preds = %131, %7, %3
  %135 = phi i32 [ -22, %3 ], [ -22, %7 ], [ 0, %131 ]
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_set_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #8 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 8191
  br i1 %7, label %43, label %8

8:                                                ; preds = %3
  switch i32 %1, label %43 [
    i32 0, label %9
    i32 1, label %11
    i32 2, label %13
  ]

9:                                                ; preds = %8
  %10 = select i1 %2, i32 512, i32 640
  br label %15

11:                                               ; preds = %8
  %12 = select i1 %2, i32 768, i32 896
  br label %15

13:                                               ; preds = %8
  %14 = select i1 %2, i32 384, i32 256
  br label %15

15:                                               ; preds = %13, %11, %9
  %16 = phi i32 [ %14, %13 ], [ %12, %11 ], [ %10, %9 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %17 = call fastcc i32 @convert_offset_index(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %4) #15
  %18 = load i32, ptr %4, align 4
  %19 = load i32, ptr %5, align 4
  %20 = tail call fastcc i32 @__get_intid_range(i32 noundef %19) #15
  switch i32 %20, label %32 [
    i32 0, label %21
    i32 1, label %21
    i32 3, label %21
  ]

21:                                               ; preds = %15, %15, %15
  %22 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #10, !srcloc !23
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.anon.65, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 65536
  br label %34

32:                                               ; preds = %15
  %33 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi ptr [ %31, %21 ], [ %33, %32 ]
  %36 = phi ptr [ @gic_redist_wait_for_rwp, %21 ], [ @gic_dist_wait_for_rwp, %32 ]
  %37 = and i32 %18, 31
  %38 = shl nuw i32 1, %37
  %39 = getelementptr i8, ptr %35, i32 %17
  %40 = lshr i32 %18, 3
  %41 = and i32 %40, 536870908
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %38) #15, !srcloc !22
  tail call void %36() #15, !callees !27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %43

43:                                               ; preds = %34, %8, %3
  %44 = phi i32 [ 0, %34 ], [ -22, %3 ], [ -22, %8 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_ipi_send_mask(ptr nocapture noundef readonly %0, ptr noundef %1) #8 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 15
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1207, i32 noundef 9, ptr noundef null) #15
  br label %61

7:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !31
  tail call void @arm_heavy_mb() #15
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #19
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %37, %7
  %12 = phi i32 [ %58, %37 ], [ %9, %7 ]
  %13 = phi i32 [ %57, %37 ], [ %8, %7 ]
  %14 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -16
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %30, %11
  %19 = phi i32 [ %13, %11 ], [ %28, %30 ]
  %20 = phi i32 [ %15, %11 ], [ %32, %30 ]
  %21 = phi i16 [ 0, %11 ], [ %27, %30 ]
  %22 = icmp ult i32 %19, %12
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = and i32 %20, 15
  %25 = shl nuw nsw i32 1, %24
  %26 = trunc i32 %25 to i16
  %27 = or i16 %21, %26
  %28 = tail call i32 @cpumask_next(i32 noundef %19, ptr noundef %1) #19
  %29 = icmp ult i32 %28, %12
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %28
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -16
  %34 = icmp eq i32 %33, %16
  br i1 %34, label %18, label %35

35:                                               ; preds = %30
  %36 = add i32 %28, -1
  br label %37

37:                                               ; preds = %35, %23, %18
  %38 = phi i32 [ %36, %35 ], [ %19, %23 ], [ %19, %18 ]
  %39 = phi i16 [ %27, %35 ], [ %21, %18 ], [ %27, %23 ]
  %40 = load i32, ptr %3, align 4
  %41 = shl nuw nsw i64 %17, 24
  %42 = and i64 %41, 71776119061217280
  %43 = shl nuw nsw i64 %17, 16
  %44 = and i64 %43, 1095216660480
  %45 = or i64 %42, %44
  %46 = shl i32 %40, 24
  %47 = zext i32 %46 to i64
  %48 = shl nuw nsw i64 %17, 8
  %49 = and i64 %48, 16711680
  %50 = shl i64 %17, 40
  %51 = and i64 %50, 263882790666240
  %52 = zext i16 %39 to i64
  %53 = or i64 %45, %49
  %54 = or i64 %53, %51
  %55 = or i64 %54, %52
  %56 = or i64 %55, %47
  tail call void asm sideeffect "mcrr p15, 0, ${0:Q}, ${0:R}, c12", "r"(i64 %56) #15, !srcloc !32
  %57 = tail call i32 @cpumask_next(i32 noundef %38, ptr noundef %1) #19
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %11, label %60

60:                                               ; preds = %37, %7
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !33
  br label %61

61:                                               ; preds = %60, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_nmi_setup(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @irq_to_desc(i32 noundef %3) #15
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_irq_nmi_teardown(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @irq_to_desc(i32 noundef %3) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 528, i32 noundef 9, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @convert_offset_index(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call fastcc i32 @__get_intid_range(i32 noundef %5) #15
  switch i32 %6, label %20 [
    i32 0, label %7
    i32 1, label %7
    i32 2, label %7
    i32 3, label %8
    i32 4, label %10
  ]

7:                                                ; preds = %3, %3, %3
  store i32 %5, ptr %2, align 4
  br label %22

8:                                                ; preds = %3
  %9 = add i32 %5, -1024
  store i32 %9, ptr %2, align 4
  br label %22

10:                                               ; preds = %3
  %11 = add i32 %5, -4096
  store i32 %11, ptr %2, align 4
  switch i32 %1, label %20 [
    i32 256, label %22
    i32 384, label %12
    i32 512, label %13
    i32 640, label %14
    i32 768, label %15
    i32 896, label %16
    i32 1024, label %17
    i32 3072, label %18
    i32 24576, label %19
  ]

12:                                               ; preds = %10
  br label %22

13:                                               ; preds = %10
  br label %22

14:                                               ; preds = %10
  br label %22

15:                                               ; preds = %10
  br label %22

16:                                               ; preds = %10
  br label %22

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  br label %22

19:                                               ; preds = %10
  br label %22

20:                                               ; preds = %10, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %21 = load i32, ptr %4, align 4
  store i32 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %10, %8, %7
  %23 = phi i32 [ %1, %20 ], [ 32768, %19 ], [ 12288, %18 ], [ 8192, %17 ], [ 7168, %16 ], [ 6656, %15 ], [ 6144, %14 ], [ 5632, %13 ], [ 5120, %12 ], [ %1, %8 ], [ %1, %7 ], [ 4608, %10 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_redist_wait_for_rwp() #8 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #10, !srcloc !23
  %6 = add i32 %5, %2
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.anon.65, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !10
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %25, label %12

12:                                               ; preds = %21, %0
  %13 = phi i32 [ %14, %21 ], [ 1000000, %0 ]
  %14 = add nsw i32 %13, -1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = tail call i32 @___ratelimit(ptr noundef nonnull @gic_do_wait_for_rwp._rs, ptr noundef nonnull @__func__.gic_do_wait_for_rwp) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %25

21:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !30
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #15
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !10
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %12

25:                                               ; preds = %21, %19, %16, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_dist_wait_for_rwp() #8 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !10
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %17, label %4

4:                                                ; preds = %13, %0
  %5 = phi i32 [ %6, %13 ], [ 1000000, %0 ]
  %6 = add nsw i32 %5, -1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = tail call i32 @___ratelimit(ptr noundef nonnull @gic_do_wait_for_rwp._rs, ptr noundef nonnull @__func__.gic_do_wait_for_rwp) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %17

13:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !30
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #15
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !10
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %11, %8, %0
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_configure_irq(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_eoimode1_mask_irq(ptr nocapture noundef readonly %0) #8 {
  tail call void @gic_mask_irq(ptr noundef %0)
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call fastcc i32 @__get_intid_range(i32 noundef %9) #15
  switch i32 %10, label %15 [
    i32 0, label %18
    i32 1, label %18
    i32 2, label %18
    i32 3, label %11
    i32 4, label %13
  ]

11:                                               ; preds = %7
  %12 = add i32 %9, -1024
  br label %21

13:                                               ; preds = %7
  %14 = add i32 %9, -4096
  br label %33

15:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  %16 = load i32, ptr %8, align 4
  %17 = tail call fastcc i32 @__get_intid_range(i32 noundef %16) #15
  br label %18

18:                                               ; preds = %15, %7, %7, %7
  %19 = phi i32 [ %10, %7 ], [ %10, %7 ], [ %10, %7 ], [ %17, %15 ]
  %20 = phi i32 [ %9, %7 ], [ %9, %7 ], [ %9, %7 ], [ %16, %15 ]
  switch i32 %19, label %33 [
    i32 0, label %21
    i32 1, label %21
    i32 3, label %21
  ]

21:                                               ; preds = %18, %18, %18, %11
  %22 = phi i32 [ %12, %11 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ]
  %23 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #10, !srcloc !23
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.anon.65, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 65536
  br label %37

33:                                               ; preds = %18, %13
  %34 = phi i32 [ 7168, %13 ], [ 896, %18 ]
  %35 = phi i32 [ %14, %13 ], [ %20, %18 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %37

37:                                               ; preds = %33, %21
  %38 = phi i32 [ 896, %21 ], [ %34, %33 ]
  %39 = phi i32 [ %22, %21 ], [ %35, %33 ]
  %40 = phi ptr [ %32, %21 ], [ %36, %33 ]
  %41 = phi ptr [ @gic_redist_wait_for_rwp, %21 ], [ @gic_dist_wait_for_rwp, %33 ]
  %42 = and i32 %39, 31
  %43 = shl nuw i32 1, %42
  %44 = getelementptr i8, ptr %40, i32 %38
  %45 = lshr i32 %39, 3
  %46 = and i32 %45, 536870908
  %47 = getelementptr i8, ptr %44, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %43) #15, !srcloc !22
  tail call void %41() #15, !callees !27
  br label %48

48:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_eoimode1_eoi_irq(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 8191
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1048576
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c11, 1", "r"(i32 %3) #15, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  br label %12

12:                                               ; preds = %11, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @gic_irq_set_vcpu_affinity(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #13 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call fastcc i32 @__get_intid_range(i32 noundef %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -1048577
  %13 = select i1 %8, i32 0, i32 1048576
  %14 = or i32 %12, %13
  store i32 %14, ptr %10, align 4
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ -22, %2 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gic_iterate_rdists(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 6), align 8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %49, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  br label %6

6:                                                ; preds = %45, %4
  %7 = phi ptr [ %28, %45 ], [ %5, %4 ]
  %8 = phi i32 [ %46, %45 ], [ 0, %4 ]
  %9 = getelementptr %struct.redist_region, ptr %7, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 65512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !10
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, -16
  switch i8 %14, label %43 [
    i8 64, label %15
    i8 48, label %15
  ]

15:                                               ; preds = %6, %6
  br label %16

16:                                               ; preds = %32, %15
  %17 = phi ptr [ %40, %32 ], [ %10, %15 ]
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #15, !srcloc !10
  %20 = zext i32 %19 to i64
  %21 = getelementptr i8, ptr %17, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #15, !srcloc !10
  %23 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  %24 = getelementptr %struct.redist_region, ptr %23, i32 %8
  %25 = tail call i32 %0(ptr noundef %24, ptr noundef %17) #15, !callees !34
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %16
  %28 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  %29 = getelementptr %struct.redist_region, ptr %28, i32 %8, i32 2
  %30 = load i8, ptr %29, align 4, !range !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i64, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 5), align 8
  %34 = icmp eq i64 %33, 0
  %35 = trunc i64 %33 to i32
  %36 = and i64 %20, 2
  %37 = icmp eq i64 %36, 0
  %38 = select i1 %37, i32 131072, i32 262144
  %39 = select i1 %34, i32 %38, i32 %35
  %40 = getelementptr i8, ptr %17, i32 %39
  %41 = and i64 %20, 16
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %16, label %45

43:                                               ; preds = %6
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %10) #16
  br label %49

45:                                               ; preds = %32, %27
  %46 = add nuw i32 %8, 1
  %47 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 6), align 8
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %6, label %49

49:                                               ; preds = %45, %43, %16, %1
  %50 = phi i32 [ -19, %43 ], [ -19, %1 ], [ 0, %16 ], [ -19, %45 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__gic_update_rdist_properties(ptr nocapture noundef readnone %0, ptr noundef %1) #8 {
  %3 = getelementptr i8, ptr %1, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #15, !srcloc !10
  %5 = zext i32 %4 to i64
  %6 = getelementptr i8, ptr %1, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #15, !srcloc !10
  %8 = and i64 %5, 130
  %9 = icmp eq i64 %8, 130
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %1, i32 131192
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !10
  %13 = getelementptr i8, ptr %1, i32 131196
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #15, !srcloc !10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #15, !srcloc !10
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = and i32 %17, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %20) #15, !srcloc !22
  br label %21

21:                                               ; preds = %19, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #15, !srcloc !22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 536870912) #15, !srcloc !22
  br label %22

22:                                               ; preds = %21, %10
  %23 = getelementptr i8, ptr %1, i32 131184
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !10
  %25 = getelementptr i8, ptr %1, i32 131188
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #15, !srcloc !10
  %27 = and i32 %26, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %24) #15, !srcloc !22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %27) #15, !srcloc !22
  br label %28

28:                                               ; preds = %22, %2
  %29 = trunc i32 %4 to i8
  %30 = lshr i8 %29, 1
  %31 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4, !range !13
  %32 = and i8 %30, %31
  store i8 %32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4
  %33 = lshr i32 %4, 7
  %34 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1, !range !13
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1
  %38 = lshr i32 %4, 3
  %39 = or i32 %36, %38
  %40 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 9), align 2, !range !13
  %41 = trunc i32 %39 to i8
  %42 = and i8 %40, %41
  store i8 %42, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 9), align 2
  %43 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 10), align 1, !range !13
  %44 = lshr i64 %5, 2
  %45 = trunc i64 %44 to i8
  %46 = and i8 %43, %45
  store i8 %46, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 10), align 1
  %47 = icmp ne i8 %37, 0
  %48 = icmp eq i8 %32, 0
  %49 = select i1 %47, i1 %48, i1 false
  %50 = load i1, ptr @__gic_update_rdist_properties.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %54, !prof !11

53:                                               ; preds = %28
  store i1 true, ptr @__gic_update_rdist_properties.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 948, i32 noundef 9, ptr noundef null) #15
  br label %54

54:                                               ; preds = %53, %28
  br i1 %49, label %55, label %56

55:                                               ; preds = %54
  store i8 0, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 9), align 2
  store i8 0, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4
  store i8 0, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1
  br label %56

56:                                               ; preds = %55, %54
  %57 = lshr i32 %4, 27
  %58 = add nsw i32 %57, -1
  %59 = icmp ult i32 %58, 2
  %60 = shl nuw nsw i32 %57, 5
  %61 = or i32 %60, 16
  %62 = select i1 %59, i32 %61, i32 16
  %63 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %64 = tail call i32 @llvm.umin.i32(i32 %62, i32 %63)
  store i32 %64, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gic_enable_redist(i1 noundef zeroext %0) unnamed_addr #8 {
  %2 = load i64, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 7), align 8
  %3 = and i64 %2, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !23
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.anon.65, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !10
  %17 = and i32 %16, -3
  %18 = select i1 %0, i32 0, i32 2
  %19 = or i32 %17, %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %19) #15, !srcloc !22
  br i1 %0, label %24, label %20

20:                                               ; preds = %5
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !10
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %20, %5
  br label %25

25:                                               ; preds = %31, %24
  %26 = phi i32 [ %33, %31 ], [ 999999, %24 ]
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !10
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  %30 = xor i1 %29, %0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !25
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #15
  %33 = add nsw i32 %26, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %25

35:                                               ; preds = %31
  %36 = tail call i32 @___ratelimit(ptr noundef nonnull @gic_enable_redist._rs, ptr noundef nonnull @__func__.gic_enable_redist) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = select i1 %0, ptr @.str.37, ptr @.str.38
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %39) #16
  br label %41

41:                                               ; preds = %38, %35, %25, %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_cpu_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gic_cpu_sys_reg_init() unnamed_addr #8 {
  %1 = tail call ptr @llvm.thread.pointer() #15
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  %8 = zext i32 %7 to i64
  %9 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 5", "=r"() #15, !srcloc !35
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %0
  %13 = or i32 %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 5", "r"(i32 %13) #15, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %14 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 5", "=r"() #15, !srcloc !35
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #16
  br label %19

19:                                               ; preds = %17, %12, %0
  %20 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 4", "=r"() #15, !srcloc !26
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 7
  %23 = tail call i32 asm sideeffect "mrc p15, 0, $0, c4, c6, 0", "=r"() #15, !srcloc !38
  %24 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 4", "=r"() #15, !srcloc !26
  %25 = lshr i32 %24, 8
  %26 = and i32 %25, 7
  %27 = xor i32 %26, 7
  %28 = shl nuw nsw i32 1, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c4, c6, 0", "r"(i32 %28) #15, !srcloc !39
  %29 = tail call i32 asm sideeffect "mrc p15, 0, $0, c4, c6, 0", "=r"() #15, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c4, c6, 0", "r"(i32 %23) #15, !srcloc !39
  %30 = icmp eq i32 %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c4, c6, 0", "r"(i32 240) #15, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 3", "r"(i32 0) #15, !srcloc !41
  %31 = load volatile i32, ptr @supports_deactivate_key, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34, !prof !12

33:                                               ; preds = %19
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 4", "r"(i32 2) #15, !srcloc !42
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !43
  br label %35

34:                                               ; preds = %19
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 4", "r"(i32 0) #15, !srcloc !42
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !43
  br label %35

35:                                               ; preds = %34, %33
  br i1 %30, label %41, label %36

36:                                               ; preds = %35
  switch i32 %22, label %40 [
    i32 7, label %37
    i32 6, label %37
    i32 5, label %38
    i32 4, label %39
    i32 3, label %39
  ]

37:                                               ; preds = %36, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c8, 4 | 3", "r"(i32 0) #15, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c8, 4 | 2", "r"(i32 0) #15, !srcloc !45
  br label %38

38:                                               ; preds = %37, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c8, 4 | 1", "r"(i32 0) #15, !srcloc !46
  br label %39

39:                                               ; preds = %38, %36, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c8, 4 | 0", "r"(i32 0) #15, !srcloc !47
  br label %40

40:                                               ; preds = %39, %36
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !48
  br label %41

41:                                               ; preds = %40, %35
  switch i32 %22, label %45 [
    i32 7, label %42
    i32 6, label %42
    i32 5, label %43
    i32 4, label %44
    i32 3, label %44
  ]

42:                                               ; preds = %41, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c9, 3", "r"(i32 0) #15, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c9, 2", "r"(i32 0) #15, !srcloc !50
  br label %43

43:                                               ; preds = %42, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c9, 1", "r"(i32 0) #15, !srcloc !51
  br label %44

44:                                               ; preds = %43, %41, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c9, 0", "r"(i32 0) #15, !srcloc !52
  br label %45

45:                                               ; preds = %44, %41
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 7", "r"(i32 1) #15, !srcloc !54
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !55
  %46 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 4", "=r"() #15, !srcloc !26
  %47 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, ptrtoint (ptr @has_rss to i32)
  %50 = inttoptr i32 %49 to ptr
  %51 = lshr i32 %46, 18
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  store i8 %53, ptr %50, align 1
  %54 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %86, %45
  %58 = phi i32 [ %87, %86 ], [ %55, %45 ]
  %59 = phi i32 [ %88, %86 ], [ %54, %45 ]
  %60 = phi i64 [ %80, %86 ], [ %8, %45 ]
  %61 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, ptrtoint (ptr @has_rss to i32)
  %64 = inttoptr i32 %63 to ptr
  %65 = load i8, ptr %64, align 1, !range !13
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %57
  %68 = load i32, ptr %47, align 4
  %69 = add i32 %68, ptrtoint (ptr @has_rss to i32)
  %70 = inttoptr i32 %69 to ptr
  %71 = load i8, ptr %70, align 1, !range !13
  %72 = icmp ne i8 %71, 0
  br label %73

73:                                               ; preds = %67, %57
  %74 = phi i1 [ false, %57 ], [ %72, %67 ]
  %75 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %59
  %76 = load i32, ptr %75, align 4
  %77 = lshr i32 %76, 4
  %78 = and i32 %77, 15
  %79 = zext i32 %78 to i64
  %80 = or i64 %60, %79
  %81 = icmp eq i64 %80, 0
  %82 = select i1 %81, i1 true, i1 %74
  br i1 %82, label %86, label %83

83:                                               ; preds = %73
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %3, i32 noundef %5, i32 noundef %59, i32 noundef %76) #16
  %85 = load i32, ptr @nr_cpu_ids, align 4
  br label %86

86:                                               ; preds = %83, %73
  %87 = phi i32 [ %58, %73 ], [ %85, %83 ]
  %88 = tail call i32 @cpumask_next(i32 noundef %59, ptr noundef nonnull @__cpu_online_mask) #19
  %89 = icmp ult i32 %88, %87
  br i1 %89, label %57, label %90

90:                                               ; preds = %86, %45
  %91 = phi i64 [ %8, %45 ], [ %80, %86 ]
  %92 = icmp ne i64 %91, 0
  %93 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 8), align 8
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i1, ptr @gic_cpu_sys_reg_init.__already_done, align 1
  br i1 %97, label %100, label %98, !prof !12

98:                                               ; preds = %96
  store i1 true, ptr @gic_cpu_sys_reg_init.__already_done, align 1
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #16
  br label %100

100:                                              ; preds = %98, %96, %90
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__gic_populate_rdist(ptr noundef %0, ptr noundef %1) #8 {
  %3 = tail call ptr @llvm.thread.pointer() #15
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #15, !srcloc !10
  %10 = getelementptr i8, ptr %1, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #15, !srcloc !10
  %12 = icmp eq i32 %11, %7
  br i1 %12, label %13, label %59

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 4
  %15 = ptrtoint ptr %1 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #10, !srcloc !23
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  store i32 0, ptr %24, align 8
  %25 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #10, !srcloc !23
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.anon.65, ptr %31, i32 0, i32 1
  store ptr %1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.redist_region, ptr %0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %17, %34
  %36 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #10, !srcloc !23
  %41 = add i32 %40, %37
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.anon.65, ptr %42, i32 0, i32 3
  store i32 %35, ptr %43, align 4
  %44 = load i32, ptr %4, align 8
  %45 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  %46 = ptrtoint ptr %0 to i32
  %47 = ptrtoint ptr %45 to i32
  %48 = sub i32 %46, %47
  %49 = sdiv exact i32 %48, 12
  %50 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %53 = inttoptr i32 %52 to ptr
  %54 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %53) #10, !srcloc !23
  %55 = add i32 %54, %51
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr inbounds %struct.anon.65, ptr %56, i32 0, i32 3
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %44, i32 noundef %7, i32 noundef %49, ptr noundef %57) #16
  br label %59

59:                                               ; preds = %13, %2
  %60 = phi i32 [ 0, %13 ], [ 1, %2 ]
  ret i32 %60
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_starting_cpu(i32 noundef %0) #8 {
  tail call fastcc void @gic_cpu_init()
  %2 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #15, !srcloc !10
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  %7 = load i8, ptr @gicv3_nolpi, align 1
  %8 = and i8 %7, 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @its_cpu_init() #15
  br label %13

13:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_cpu_pm_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #8 {
  switch i32 %1, label %47 [
    i32 2, label %4
    i32 0, label %41
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #15, !srcloc !10
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %4
  %10 = load i64, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 7), align 8
  %11 = and i64 %10, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #10, !srcloc !23
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.anon.65, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !10
  %25 = and i32 %24, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #15, !srcloc !22
  br label %26

26:                                               ; preds = %31, %13
  %27 = phi i32 [ 999999, %13 ], [ %33, %31 ]
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !10
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !25
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #15
  %33 = add nsw i32 %27, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %26

35:                                               ; preds = %31
  %36 = tail call i32 @___ratelimit(ptr noundef nonnull @gic_enable_redist._rs, ptr noundef nonnull @__func__.gic_enable_redist) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #16
  br label %40

40:                                               ; preds = %38, %35, %26, %9, %4
  tail call fastcc void @gic_cpu_sys_reg_init()
  br label %47

41:                                               ; preds = %3
  %42 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #15, !srcloc !10
  %44 = and i32 %43, 64
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 7", "r"(i32 0) #15, !srcloc !54
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !55
  tail call fastcc void @gic_enable_redist(i1 noundef zeroext false)
  br label %47

47:                                               ; preds = %46, %41, %40, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_cpu_node_to_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @partition_create_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @partition_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @of_find_node_by_phandle(i32 noundef %10) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1584, i32 noundef 9, ptr noundef null) #15
  br label %38

14:                                               ; preds = %8
  %15 = call i32 @gic_irq_domain_translate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3)
  %16 = icmp ne i32 %15, 0
  %17 = load i1, ptr @partition_domain_translate.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %14
  store i1 true, ptr @partition_domain_translate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1588, i32 noundef 9, ptr noundef null) #15
  br label %21

21:                                               ; preds = %20, %14
  br i1 %16, label %38, label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %5, align 4
  %24 = tail call fastcc i32 @__get_intid_range(i32 noundef %23) #15
  %25 = icmp eq i32 %24, 1
  %26 = select i1 %25, i32 -16, i32 -1040
  %27 = add i32 %26, %23
  %28 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %29 = getelementptr ptr, ptr %28, i32 %27
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 3
  %32 = tail call i32 @partition_translate_id(ptr noundef %30, ptr noundef %31) #15
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %22
  store i32 %32, ptr %2, align 4
  %35 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 15
  store i32 %37, ptr %3, align 4
  br label %38

38:                                               ; preds = %34, %22, %21, %13, %4
  %39 = phi i32 [ -22, %13 ], [ 0, %34 ], [ -12, %4 ], [ 0, %21 ], [ %32, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @partition_translate_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold }
attributes #19 = { nounwind readonly willreturn }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{i64 4528933}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 4001, i32 4000000}
!15 = !{i64 2153564417}
!16 = !{i64 2153564471}
!17 = !{i64 2153563253}
!18 = !{i64 2153563315}
!19 = !{i64 2153635429}
!20 = !{i64 2153563813}
!21 = !{i64 2153563875}
!22 = !{i64 4528515}
!23 = !{i64 475523}
!24 = !{i64 2153607473}
!25 = !{i64 2153607315}
!26 = !{i64 2153565575}
!27 = !{ptr @gic_dist_wait_for_rwp, ptr @gic_redist_wait_for_rwp}
!28 = !{i32 0, i32 33}
!29 = !{i64 2153604140}
!30 = !{i64 2153603982}
!31 = !{i64 2153680924}
!32 = !{i64 2153566612}
!33 = !{i64 2153681160}
!34 = !{ptr @__gic_populate_rdist, ptr @__gic_update_rdist_properties}
!35 = !{i64 2153567159}
!36 = !{i64 2153567655}
!37 = !{i64 2153567717}
!38 = !{i64 2153568753}
!39 = !{i64 2153569237}
!40 = !{i64 2153552541}
!41 = !{i64 2153568215}
!42 = !{i64 2153564971}
!43 = !{i64 2153565033}
!44 = !{i64 2153557520}
!45 = !{i64 2153556271}
!46 = !{i64 2153555022}
!47 = !{i64 2153553773}
!48 = !{i64 2153669540}
!49 = !{i64 2153562368}
!50 = !{i64 2153561159}
!51 = !{i64 2153559950}
!52 = !{i64 2153558741}
!53 = !{i64 2153669858}
!54 = !{i64 2153566071}
!55 = !{i64 2153566133}
