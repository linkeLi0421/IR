; ModuleID = '/llk/IR/drivers/irqchip/irq-gic.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gic_chip_data = type { %struct.irq_chip, %union.gic_base, %union.gic_base, ptr, ptr, i32, [32 x i32], [32 x i32], [64 x i32], [255 x i32], ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%union.gic_base = type { ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.cpumask = type { [1 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gic_quirk = type { ptr, ptr, ptr, i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gic_kvm_info = type { i32, %struct.resource, i32, i8, %struct.resource, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@gic_data = internal global [1 x %struct.gic_chip_data] zeroinitializer, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [26 x i8] c"drivers/irqchip/irq-gic.c\00", align 1
@supports_deactivate_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@__setup_str_gicv2_force_probe_cfg = internal constant [26 x i8] c"irqchip.gicv2_force_probe\00", section ".init.rodata", align 1
@__setup_gicv2_force_probe_cfg = internal global %struct.obs_kernel_param { ptr @__setup_str_gicv2_force_probe_cfg, ptr @gicv2_force_probe_cfg, i32 1 }, section ".init.setup", align 4
@gic_cnt = internal unnamed_addr global i32 0, section ".init.data", align 4
@__of_table_gic_400 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_arm11mp_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm11mp-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_arm1176jzf_dc_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm1176jzf-devchip-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_cortex_a15_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a15-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_cortex_a9_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a9-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_cortex_a7_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a7-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_msm_8660_qgic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-8660-qgic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_msm_qgic2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-qgic2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_pl390 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,pl390\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@frankengic_key = internal global %struct.static_key_false zeroinitializer, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gic_cpu_map = internal unnamed_addr global [8 x i8] zeroinitializer, section ".data..read_mostly", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\016GIC: Using split EOI/Deactivate mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"GICv2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"GIC-%d\00", align 1
@sgi_intid = internal global i32 0, section ".data..percpu", align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"irqchip/arm/gic:starting\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"\012GIC CPU mask not found - kernel will fail to boot.\0A\00", align 1
@gicv2_force_probe = internal global i8 0, align 1
@gic_chip = internal unnamed_addr constant %struct.irq_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_mask_irq, ptr null, ptr @gic_unmask_irq, ptr @gic_eoi_irq, ptr null, ptr @gic_retrigger, ptr @gic_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_irq_get_irqchip_state, ptr @gic_irq_set_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, i32 21 }, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"\014GIC: PPI%d is secure or misconfigured\0A\00", align 1
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@needs_rmw_access = internal global %struct.static_key_false zeroinitializer, align 4
@rmw_writeb.rmw_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"unable to map gic dist registers\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"unable to map gic cpu registers\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"cpu-offset\00", align 1
@gic_quirks = internal constant [2 x %struct.gic_quirk] [%struct.gic_quirk { ptr @.str.12, ptr @.str.13, ptr @gic_enable_rmw_access, i32 0, i32 0 }, %struct.gic_quirk zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"broken byte access\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"arm,pl390\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"renesas,emev2\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@gic_irq_domain_hierarchy_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_irq_domain_alloc, ptr @irq_domain_free_irqs_top, ptr null, ptr null, ptr @gic_irq_domain_translate }, align 4
@.str.16 = private unnamed_addr constant [59 x i8] c"Cannot allocate irq_descs @ IRQ16, assuming pre-allocated\0A\00", align 1
@gic_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @gic_irq_domain_map, ptr @gic_irq_domain_unmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@gic_notifier_block = internal global %struct.notifier_block { ptr @gic_notifier, ptr null, i32 0 }, align 4
@.str.17 = private unnamed_addr constant [82 x i8] c"\014GIC: GICv2 detected, but range too small and irqchip.gicv2_force_probe not set\0A\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"\014GIC: GICv2 at %pa, but range is too small (broken DT?), assuming 8kB\0A\00", align 1
@.str.19 = private unnamed_addr constant [76 x i8] c"\014GIC: Aliased GICv2 at %pa, trying to find the canonical range over 128kB\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"\014GIC: Adjusting CPU interface base to %pa\0A\00", align 1
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@gic_v2_kvm_info = internal global %struct.gic_kvm_info zeroinitializer, section ".init.data", align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__of_table_arm1176jzf_dc_gic, ptr @__of_table_arm11mp_gic, ptr @__of_table_cortex_a15_gic, ptr @__of_table_cortex_a7_gic, ptr @__of_table_cortex_a9_gic, ptr @__of_table_gic_400, ptr @__of_table_msm_8660_qgic, ptr @__of_table_msm_qgic2, ptr @__of_table_pl390, ptr @__setup_gicv2_force_probe_cfg], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @gic_cascade_irq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %5, label %4, !prof !9

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-gic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

5:                                                ; preds = %2
  tail call void @irq_set_chained_handler_and_data(i32 noundef %1, ptr noundef nonnull @gic_handle_cascade_irq, ptr noundef nonnull @gic_data) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_handle_cascade_irq(ptr noundef %0) #2 {
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
  tail call void %11(ptr noundef %14) #15
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #15
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #15
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  %24 = getelementptr inbounds %struct.gic_chip_data, ptr %3, i32 0, i32 2
  %25 = load volatile i32, ptr @frankengic_key, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %35, !prof !11

27:                                               ; preds = %23
  %28 = load ptr, ptr %24, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #5, !srcloc !12
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  br label %35

35:                                               ; preds = %27, %23
  %36 = phi ptr [ %34, %27 ], [ %24, %23 ]
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #15, !srcloc !13
  %40 = and i32 %39, 1023
  %41 = icmp eq i32 %40, 1023
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !14
  %43 = getelementptr inbounds %struct.gic_chip_data, ptr %3, i32 0, i32 13
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @generic_handle_domain_irq(ptr noundef %44, i32 noundef %40) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !9

47:                                               ; preds = %42
  tail call void @handle_bad_irq(ptr noundef %0) #15
  br label %48

48:                                               ; preds = %47, %42, %35
  %49 = load ptr, ptr %6, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi ptr [ %53, %51 ], [ %49, %48 ]
  %56 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %55(ptr noundef %56) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gic_cpu_if_down(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %19

3:                                                ; preds = %1
  %4 = load volatile i32, ptr @frankengic_key, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %14, !prof !11

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 2), align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi ptr [ %13, %6 ], [ getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 2), %3 ]
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !15
  %18 = and i32 %17, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %18) #15, !srcloc !16
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i32 [ 0, %14 ], [ -22, %1 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_dist_save(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 561, i32 noundef 9, ptr noundef null) #15
  br label %77

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  %8 = load volatile i32, ptr @frankengic_key, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %18, !prof !11

10:                                               ; preds = %4
  %11 = load ptr, ptr %7, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #5, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  br label %18

18:                                               ; preds = %10, %4
  %19 = phi ptr [ %17, %10 ], [ %7, %4 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %77, label %22

22:                                               ; preds = %18
  %23 = add i32 %6, 15
  %24 = icmp ult i32 %23, 16
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = lshr i32 %23, 4
  %27 = getelementptr i8, ptr %20, i32 3072
  br label %34

28:                                               ; preds = %34, %22
  %29 = add i32 %6, 3
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %77, label %31

31:                                               ; preds = %28
  %32 = lshr i32 %29, 2
  %33 = getelementptr i8, ptr %20, i32 2048
  br label %49

34:                                               ; preds = %34, %25
  %35 = phi i32 [ 0, %25 ], [ %40, %34 ]
  %36 = shl i32 %35, 2
  %37 = getelementptr i8, ptr %27, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #15, !srcloc !13
  %39 = getelementptr %struct.gic_chip_data, ptr %0, i32 0, i32 8, i32 %35
  store i32 %38, ptr %39, align 4
  %40 = add nuw nsw i32 %35, 1
  %41 = icmp eq i32 %40, %26
  br i1 %41, label %28, label %34

42:                                               ; preds = %49
  %43 = add i32 %6, 31
  %44 = lshr i32 %43, 5
  %45 = icmp ult i32 %43, 32
  br i1 %45, label %77, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %20, i32 256
  %48 = call i32 @llvm.umax.i32(i32 %44, i32 1)
  br label %61

49:                                               ; preds = %49, %31
  %50 = phi i32 [ 0, %31 ], [ %55, %49 ]
  %51 = shl i32 %50, 2
  %52 = getelementptr i8, ptr %33, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #15, !srcloc !13
  %54 = getelementptr %struct.gic_chip_data, ptr %0, i32 0, i32 9, i32 %50
  store i32 %53, ptr %54, align 4
  %55 = add nuw nsw i32 %50, 1
  %56 = icmp eq i32 %55, %32
  br i1 %56, label %42, label %49

57:                                               ; preds = %61
  br i1 %45, label %77, label %58

58:                                               ; preds = %57
  %59 = getelementptr i8, ptr %20, i32 768
  %60 = call i32 @llvm.umax.i32(i32 %44, i32 1)
  br label %69

61:                                               ; preds = %61, %46
  %62 = phi i32 [ 0, %46 ], [ %67, %61 ]
  %63 = shl i32 %62, 2
  %64 = getelementptr i8, ptr %47, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #15, !srcloc !13
  %66 = getelementptr %struct.gic_chip_data, ptr %0, i32 0, i32 6, i32 %62
  store i32 %65, ptr %66, align 4
  %67 = add nuw nsw i32 %62, 1
  %68 = icmp eq i32 %67, %48
  br i1 %68, label %57, label %61

69:                                               ; preds = %69, %58
  %70 = phi i32 [ 0, %58 ], [ %75, %69 ]
  %71 = shl i32 %70, 2
  %72 = getelementptr i8, ptr %59, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #15, !srcloc !13
  %74 = getelementptr %struct.gic_chip_data, ptr %0, i32 0, i32 7, i32 %70
  store i32 %73, ptr %74, align 4
  %75 = add nuw nsw i32 %70, 1
  %76 = icmp eq i32 %75, %60
  br i1 %76, label %77, label %69

77:                                               ; preds = %69, %57, %42, %28, %18, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_dist_restore(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 600, i32 noundef 9, ptr noundef null) #15
  br label %93

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  %8 = load volatile i32, ptr @frankengic_key, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %18, !prof !11

10:                                               ; preds = %4
  %11 = load ptr, ptr %7, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #5, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  br label %18

18:                                               ; preds = %10, %4
  %19 = phi ptr [ %17, %10 ], [ %7, %4 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %93, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 0) #15, !srcloc !16
  %23 = add i32 %6, 15
  %24 = icmp ult i32 %23, 16
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = lshr i32 %23, 4
  %27 = getelementptr i8, ptr %20, i32 3072
  br label %35

28:                                               ; preds = %35, %22
  %29 = add i32 %6, 3
  %30 = lshr i32 %29, 2
  %31 = icmp ult i32 %29, 4
  br i1 %31, label %92, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %20, i32 1024
  %34 = call i32 @llvm.umax.i32(i32 %30, i32 1)
  br label %47

35:                                               ; preds = %35, %25
  %36 = phi i32 [ 0, %25 ], [ %41, %35 ]
  %37 = getelementptr %struct.gic_chip_data, ptr %0, i32 0, i32 8, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %36, 2
  %40 = getelementptr i8, ptr %27, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #15, !srcloc !16
  %41 = add nuw nsw i32 %36, 1
  %42 = icmp eq i32 %41, %26
  br i1 %42, label %28, label %35

43:                                               ; preds = %47
  br i1 %31, label %92, label %44

44:                                               ; preds = %43
  %45 = getelementptr i8, ptr %20, i32 2048
  %46 = call i32 @llvm.umax.i32(i32 %30, i32 1)
  br label %61

47:                                               ; preds = %47, %32
  %48 = phi i32 [ 0, %32 ], [ %51, %47 ]
  %49 = shl i32 %48, 2
  %50 = getelementptr i8, ptr %33, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 -1600085856) #15, !srcloc !16
  %51 = add nuw nsw i32 %48, 1
  %52 = icmp eq i32 %51, %34
  br i1 %52, label %43, label %47

53:                                               ; preds = %61
  %54 = add i32 %6, 31
  %55 = lshr i32 %54, 5
  %56 = icmp ult i32 %54, 32
  br i1 %56, label %92, label %57

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %20, i32 384
  %59 = getelementptr i8, ptr %20, i32 256
  %60 = call i32 @llvm.umax.i32(i32 %55, i32 1)
  br label %74

61:                                               ; preds = %61, %44
  %62 = phi i32 [ 0, %44 ], [ %67, %61 ]
  %63 = getelementptr %struct.gic_chip_data, ptr %0, i32 0, i32 9, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = shl i32 %62, 2
  %66 = getelementptr i8, ptr %45, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #15, !srcloc !16
  %67 = add nuw nsw i32 %62, 1
  %68 = icmp eq i32 %67, %46
  br i1 %68, label %53, label %61

69:                                               ; preds = %74
  br i1 %56, label %92, label %70

70:                                               ; preds = %69
  %71 = getelementptr i8, ptr %20, i32 896
  %72 = getelementptr i8, ptr %20, i32 768
  %73 = call i32 @llvm.umax.i32(i32 %55, i32 1)
  br label %83

74:                                               ; preds = %74, %57
  %75 = phi i32 [ 0, %57 ], [ %81, %74 ]
  %76 = shl i32 %75, 2
  %77 = getelementptr i8, ptr %58, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 -1) #15, !srcloc !16
  %78 = getelementptr %struct.gic_chip_data, ptr %0, i32 0, i32 6, i32 %75
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %59, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %79) #15, !srcloc !16
  %81 = add nuw nsw i32 %75, 1
  %82 = icmp eq i32 %81, %60
  br i1 %82, label %69, label %74

83:                                               ; preds = %83, %70
  %84 = phi i32 [ 0, %70 ], [ %90, %83 ]
  %85 = shl i32 %84, 2
  %86 = getelementptr i8, ptr %71, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 -1) #15, !srcloc !16
  %87 = getelementptr %struct.gic_chip_data, ptr %0, i32 0, i32 7, i32 %84
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr i8, ptr %72, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #15, !srcloc !16
  %90 = add nuw nsw i32 %84, 1
  %91 = icmp eq i32 %90, %73
  br i1 %91, label %92, label %83

92:                                               ; preds = %83, %69, %53, %43, %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 1) #15, !srcloc !16
  br label %93

93:                                               ; preds = %92, %18, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_cpu_save(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 647, i32 noundef 9, ptr noundef null) #15
  br label %70

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr @frankengic_key, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16, !prof !11

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #5, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi ptr [ %15, %8 ], [ %5, %4 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 2
  %20 = load volatile i32, ptr @frankengic_key, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %30, !prof !11

22:                                               ; preds = %16
  %23 = load ptr, ptr %19, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #5, !srcloc !12
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  br label %30

30:                                               ; preds = %22, %16
  %31 = phi ptr [ %29, %22 ], [ %19, %16 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ne ptr %18, null
  %34 = icmp ne ptr %32, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #5, !srcloc !12
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr i8, ptr %18, i32 256
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #15, !srcloc !13
  store i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #5, !srcloc !12
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr i8, ptr %18, i32 768
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #15, !srcloc !13
  store i32 %56, ptr %54, align 4
  %57 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 12
  %58 = load ptr, ptr %57, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %61 = inttoptr i32 %60 to ptr
  %62 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %61) #5, !srcloc !12
  %63 = add i32 %62, %59
  %64 = inttoptr i32 %63 to ptr
  %65 = getelementptr i8, ptr %18, i32 3072
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #15, !srcloc !13
  store i32 %66, ptr %64, align 4
  %67 = getelementptr i8, ptr %18, i32 3076
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #15, !srcloc !13
  %69 = getelementptr i32, ptr %64, i32 1
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %36, %30, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_cpu_restore(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 677, i32 noundef 9, ptr noundef null) #15
  br label %114

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr @frankengic_key, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16, !prof !11

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #5, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi ptr [ %15, %8 ], [ %5, %4 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 2
  %20 = load volatile i32, ptr @frankengic_key, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %30, !prof !11

22:                                               ; preds = %16
  %23 = load ptr, ptr %19, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #5, !srcloc !12
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  br label %30

30:                                               ; preds = %22, %16
  %31 = phi ptr [ %29, %22 ], [ %19, %16 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ne ptr %18, null
  %34 = icmp ne ptr %32, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %114

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #5, !srcloc !12
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr i8, ptr %18, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 -1) #15, !srcloc !16
  %46 = load i32, ptr %44, align 4
  %47 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #15, !srcloc !16
  %48 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %52) #5, !srcloc !12
  %54 = add i32 %53, %50
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr i8, ptr %18, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 -1) #15, !srcloc !16
  %57 = load i32, ptr %55, align 4
  %58 = getelementptr i8, ptr %18, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #15, !srcloc !16
  %59 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 12
  %60 = load ptr, ptr %59, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %63 = inttoptr i32 %62 to ptr
  %64 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %63) #5, !srcloc !12
  %65 = add i32 %64, %61
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr i8, ptr %18, i32 3072
  %68 = load i32, ptr %66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %68) #15, !srcloc !16
  %69 = getelementptr i32, ptr %66, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %18, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #15, !srcloc !16
  %72 = getelementptr i8, ptr %18, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 -1600085856) #15, !srcloc !16
  %73 = getelementptr i8, ptr %18, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 -1600085856) #15, !srcloc !16
  %74 = getelementptr i8, ptr %18, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 -1600085856) #15, !srcloc !16
  %75 = getelementptr i8, ptr %18, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 -1600085856) #15, !srcloc !16
  %76 = getelementptr i8, ptr %18, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 -1600085856) #15, !srcloc !16
  %77 = getelementptr i8, ptr %18, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 -1600085856) #15, !srcloc !16
  %78 = getelementptr i8, ptr %18, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 -1600085856) #15, !srcloc !16
  %79 = getelementptr i8, ptr %18, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 -1600085856) #15, !srcloc !16
  %80 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 240) #15, !srcloc !16
  %81 = load volatile i32, ptr @frankengic_key, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %91, !prof !11

83:                                               ; preds = %36
  %84 = load ptr, ptr %19, align 4
  %85 = ptrtoint ptr %84 to i32
  %86 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %87 = inttoptr i32 %86 to ptr
  %88 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %87) #5, !srcloc !12
  %89 = add i32 %88, %85
  %90 = inttoptr i32 %89 to ptr
  br label %91

91:                                               ; preds = %83, %36
  %92 = phi ptr [ %90, %83 ], [ %19, %36 ]
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %0, @gic_data
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load volatile i32, ptr @supports_deactivate_key, align 4
  %97 = icmp slt i32 %96, 1
  %98 = select i1 %97, i32 1, i32 513
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i32 [ 1, %91 ], [ %98, %95 ]
  %101 = getelementptr i8, ptr %93, i32 252
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #15, !srcloc !13
  %103 = and i32 %102, 16715775
  %104 = icmp eq i32 %103, 132155
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = getelementptr i8, ptr %93, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 0) #15, !srcloc !16
  %107 = getelementptr i8, ptr %93, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 0) #15, !srcloc !16
  %108 = getelementptr i8, ptr %93, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 0) #15, !srcloc !16
  %109 = getelementptr i8, ptr %93, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 0) #15, !srcloc !16
  br label %110

110:                                              ; preds = %105, %99
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !17
  %112 = and i32 %111, 480
  %113 = or i32 %112, %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %113) #15, !srcloc !16
  br label %114

114:                                              ; preds = %110, %30, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @gic_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = load i8, ptr @static_key_initialized, align 1, !range !18
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @supports_deactivate_key) #15
  br label %6

6:                                                ; preds = %5, %2
  %7 = load volatile i32, ptr @supports_deactivate_key, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = load volatile i32, ptr @supports_deactivate_key, align 4
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @static_key_disable.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %9
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  br label %17

16:                                               ; preds = %6
  store volatile i32 0, ptr @supports_deactivate_key, align 4
  br label %17

17:                                               ; preds = %16, %15, %9
  store ptr %0, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 3), align 4
  store ptr %1, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 4), align 4
  %18 = tail call fastcc i32 @__gic_init_bases(ptr noundef nonnull @gic_data, ptr noundef null) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @static_key_disable() unnamed_addr #4 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !18
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @supports_deactivate_key) #15
  br label %4

4:                                                ; preds = %3, %0
  %5 = load volatile i32, ptr @supports_deactivate_key, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load volatile i32, ptr @supports_deactivate_key, align 4
  %9 = icmp ne i32 %8, 0
  %10 = load i1, ptr @static_key_disable.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %7
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  br label %15

14:                                               ; preds = %4
  store volatile i32 0, ptr @supports_deactivate_key, align 4
  br label %15

15:                                               ; preds = %14, %13, %7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__gic_init_bases(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1252, i32 noundef 9, ptr noundef null) #15
  br label %42

9:                                                ; preds = %4
  %10 = icmp eq ptr %0, @gic_data
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  store i64 -1, ptr @gic_cpu_map, align 1
  %12 = tail call i32 @set_handle_irq(ptr noundef nonnull @gic_handle_irq) #17
  %13 = load volatile i32, ptr @supports_deactivate_key, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %17, label %19, !prof !9

15:                                               ; preds = %9
  %16 = load volatile i32, ptr @supports_deactivate_key, align 4
  br label %22

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #17
  br label %19

19:                                               ; preds = %17, %11
  %20 = load volatile i32, ptr @supports_deactivate_key, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %28, label %22, !prof !19

22:                                               ; preds = %19, %15
  %23 = ptrtoint ptr %0 to i32
  %24 = sub i32 %23, ptrtoint (ptr @gic_data to i32)
  %25 = sdiv exact i32 %24, 1708
  %26 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, i32 noundef %25) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(136) @gic_chip, i32 136, i1 false) #15
  %27 = getelementptr inbounds %struct.irq_chip, ptr %0, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store ptr null, ptr %0, align 4
  br i1 %10, label %32, label %35

28:                                               ; preds = %19
  %29 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(136) @gic_data, ptr noundef nonnull align 4 dereferenceable(136) @gic_chip, i32 136, i1 false) #15
  store ptr %29, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr @gic_data, align 4
  store ptr @gic_eoimode1_mask_irq, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 7), align 4
  store ptr @gic_eoimode1_eoi_irq, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 10), align 4
  store ptr @gic_irq_set_vcpu_affinity, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 28), align 4
  store ptr @gic_set_affinity, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 11), align 4
  store ptr @gic_ipi_send_mask, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 30), align 4
  %30 = tail call fastcc i32 @gic_init_bases(ptr noundef nonnull @gic_data, ptr noundef %1)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %38

32:                                               ; preds = %22
  store ptr @gic_set_affinity, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 11), align 4
  store ptr @gic_ipi_send_mask, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 30), align 4
  %33 = tail call fastcc i32 @gic_init_bases(ptr noundef nonnull @gic_data, ptr noundef %1)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %38

35:                                               ; preds = %22
  %36 = tail call fastcc i32 @gic_init_bases(ptr noundef nonnull %0, ptr noundef %1)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35, %32, %28
  %39 = phi i32 [ %36, %35 ], [ %30, %28 ], [ %33, %32 ]
  %40 = phi ptr [ %26, %35 ], [ %29, %28 ], [ %26, %32 ]
  tail call void @kfree(ptr noundef %40) #15
  br label %42

41:                                               ; preds = %32, %28
  tail call fastcc void @gic_smp_init() #16
  br label %42

42:                                               ; preds = %41, %38, %35, %8
  %43 = phi i32 [ -22, %8 ], [ 0, %41 ], [ %39, %38 ], [ 0, %35 ]
  ret i32 %43
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gicv2_force_probe_cfg(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @gicv2_force_probe) #15
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gic_of_init_child(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  %11 = icmp ne i32 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %43

13:                                               ; preds = %5
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %0, i32 noundef 1708, i32 noundef 3520) #15
  store ptr %14, ptr %1, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(136) %14, ptr noundef nonnull align 4 dereferenceable(136) @gic_chip, i32 136, i1 false) #15
  %19 = getelementptr inbounds %struct.irq_chip, ptr %14, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store ptr %0, ptr %14, align 4
  %20 = tail call fastcc i32 @gic_of_setup(ptr noundef nonnull %14, ptr noundef %17)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load ptr, ptr %1, align 4
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.device_node, ptr %24, i32 0, i32 3
  %26 = tail call fastcc i32 @gic_init_bases(ptr noundef %23, ptr noundef %25)
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %1, align 4
  br i1 %27, label %42, label %29

29:                                               ; preds = %22
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %32, !prof !11

31:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1305, i32 noundef 9, ptr noundef null) #15
  br label %43

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gic_chip_data, ptr %28, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @iounmap(ptr noundef nonnull %34) #15
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.gic_chip_data, ptr %28, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  tail call void @iounmap(ptr noundef nonnull %39) #15
  br label %43

42:                                               ; preds = %22
  tail call void @irq_set_chained_handler_and_data(i32 noundef %2, ptr noundef nonnull @gic_handle_cascade_irq, ptr noundef %28) #15
  br label %43

43:                                               ; preds = %42, %41, %37, %31, %16, %13, %5, %3
  %44 = phi i32 [ 0, %42 ], [ -22, %5 ], [ -22, %3 ], [ -12, %13 ], [ %20, %16 ], [ %26, %31 ], [ %26, %37 ], [ %26, %41 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gic_of_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #15
  %8 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1432, i32 noundef 9, ptr noundef nonnull @.str.9) #15
  br label %22

11:                                               ; preds = %6
  %12 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 1) #15
  %13 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 4
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %16, !prof !11

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1436, i32 noundef 9, ptr noundef nonnull @.str.10) #15
  br label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 5
  %18 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef %17, i32 noundef 1, i32 noundef 0) #15
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  tail call void @gic_enable_of_quirks(ptr noundef nonnull %1, ptr noundef nonnull @gic_quirks, ptr noundef nonnull %0) #15
  br label %23

22:                                               ; preds = %15, %10
  tail call fastcc void @gic_teardown(ptr noundef nonnull %0)
  br label %23

23:                                               ; preds = %22, %21, %2
  %24 = phi i32 [ -12, %22 ], [ 0, %21 ], [ -22, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gic_init_bases(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %8 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %10 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %9, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %64, label %15, !prof !11

15:                                               ; preds = %6
  %16 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 3
  %21 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 4
  br label %22

22:                                               ; preds = %47, %19
  %23 = phi ptr [ %11, %19 ], [ %48, %47 ]
  %24 = phi i32 [ %16, %19 ], [ %44, %47 ]
  %25 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 255
  %28 = load i32, ptr %3, align 4
  %29 = mul i32 %28, %27
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  %32 = ptrtoint ptr %23 to i32
  %33 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = inttoptr i32 %35 to ptr
  store ptr %31, ptr %36, align 4
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr i8, ptr %37, i32 %29
  %39 = load ptr, ptr %10, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = load i32, ptr %33, align 4
  %42 = add i32 %41, %40
  %43 = inttoptr i32 %42 to ptr
  store ptr %38, ptr %43, align 4
  %44 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull @__cpu_possible_mask) #19
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %22
  %48 = load ptr, ptr %8, align 4
  br label %22

49:                                               ; preds = %22, %15
  %50 = load i8, ptr @static_key_initialized, align 1, !range !18
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53, !prof !11

52:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @frankengic_key) #15
  br label %53

53:                                               ; preds = %52, %49
  %54 = load volatile i32, ptr @frankengic_key, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load volatile i32, ptr @frankengic_key, align 4
  %58 = icmp ne i32 %57, 1
  %59 = load i1, ptr @static_key_enable.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %72, !prof !11

62:                                               ; preds = %56
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 321, i32 noundef 9, ptr noundef null) #15
  br label %72

63:                                               ; preds = %53
  store volatile i32 1, ptr @frankengic_key, align 4
  br label %72

64:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1162, i32 noundef 9, ptr noundef null) #15
  br label %162

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 2
  store ptr %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %65, %63, %62, %56
  %73 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  %74 = load volatile i32, ptr @frankengic_key, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %84, !prof !11

76:                                               ; preds = %72
  %77 = load ptr, ptr %73, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #5, !srcloc !12
  %82 = add i32 %81, %78
  %83 = inttoptr i32 %82 to ptr
  br label %84

84:                                               ; preds = %76, %72
  %85 = phi ptr [ %83, %76 ], [ %73, %72 ]
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #15, !srcloc !13
  %89 = shl i32 %88, 5
  %90 = and i32 %89, 992
  %91 = tail call i32 @llvm.umin.i32(i32 %90, i32 988)
  %92 = add nuw nsw i32 %91, 32
  %93 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 14
  store i32 %92, ptr %93, align 4
  %94 = icmp eq ptr %1, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %84
  %96 = tail call ptr @__irq_domain_add(ptr noundef nonnull %1, i32 noundef %92, i32 noundef %92, i32 noundef 0, ptr noundef nonnull @gic_irq_domain_hierarchy_ops, ptr noundef %0) #15
  br label %105

97:                                               ; preds = %84
  %98 = add nuw nsw i32 %91, 16
  %99 = tail call i32 @__irq_alloc_descs(i32 noundef 16, i32 noundef 16, i32 noundef %98, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1213, i32 noundef 9, ptr noundef nonnull @.str.16) #15
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32 [ 16, %101 ], [ %99, %97 ]
  %104 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef %98, i32 noundef %103, i32 noundef 16, ptr noundef nonnull @gic_irq_domain_ops, ptr noundef %0) #15
  br label %105

105:                                              ; preds = %102, %95
  %106 = phi ptr [ %104, %102 ], [ %96, %95 ]
  %107 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 13
  store ptr %106, ptr %107, align 4
  %108 = icmp eq ptr %106, null
  br i1 %108, label %109, label %110, !prof !11

109:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1221, i32 noundef 9, ptr noundef null) #15
  br label %162

110:                                              ; preds = %105
  %111 = load i32, ptr %93, align 4
  %112 = load volatile i32, ptr @frankengic_key, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %122, !prof !11

114:                                              ; preds = %110
  %115 = load ptr, ptr %73, align 4
  %116 = ptrtoint ptr %115 to i32
  %117 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %118 = inttoptr i32 %117 to ptr
  %119 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %118) #5, !srcloc !12
  %120 = add i32 %119, %116
  %121 = inttoptr i32 %120 to ptr
  br label %122

122:                                              ; preds = %114, %110
  %123 = phi ptr [ %121, %114 ], [ %73, %110 ]
  %124 = load ptr, ptr %123, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 0) #15, !srcloc !16
  %125 = tail call fastcc zeroext i8 @gic_get_cpumask(ptr noundef %0) #15
  %126 = zext i8 %125 to i32
  %127 = mul nuw i32 %126, 16843009
  %128 = icmp ugt i32 %111, 32
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = getelementptr i8, ptr %124, i32 2048
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i32 [ 32, %129 ], [ %135, %131 ]
  %133 = and i32 %132, 1073741820
  %134 = getelementptr i8, ptr %130, i32 %133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %127) #15, !srcloc !16
  %135 = add i32 %132, 4
  %136 = icmp ult i32 %135, %111
  br i1 %136, label %131, label %137

137:                                              ; preds = %131, %122
  tail call void @gic_dist_config(ptr noundef %124, i32 noundef %111, ptr noundef null) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 1) #15, !srcloc !16
  %138 = tail call fastcc i32 @gic_cpu_init(ptr noundef %0)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %137
  %141 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %142 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 10
  store ptr %141, ptr %142, align 4
  %143 = icmp eq ptr %141, null
  br i1 %143, label %144, label %145, !prof !11

144:                                              ; preds = %140
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 746, i32 noundef 9, ptr noundef null) #15
  br label %162

145:                                              ; preds = %140
  %146 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %147 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 11
  store ptr %146, ptr %147, align 4
  %148 = icmp eq ptr %146, null
  br i1 %148, label %149, label %150, !prof !11

149:                                              ; preds = %145
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 751, i32 noundef 9, ptr noundef null) #15
  br label %160

150:                                              ; preds = %145
  %151 = tail call noalias ptr @__alloc_percpu(i32 noundef 8, i32 noundef 4) #18
  %152 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 12
  store ptr %151, ptr %152, align 4
  %153 = icmp eq ptr %151, null
  br i1 %153, label %154, label %156, !prof !11

154:                                              ; preds = %150
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef null) #15
  %155 = load ptr, ptr %147, align 4
  tail call void @free_percpu(ptr noundef %155) #15
  br label %160

156:                                              ; preds = %150
  %157 = icmp eq ptr %0, @gic_data
  br i1 %157, label %158, label %171

158:                                              ; preds = %156
  %159 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @gic_notifier_block) #15
  br label %171

160:                                              ; preds = %154, %149
  %161 = load ptr, ptr %142, align 4
  tail call void @free_percpu(ptr noundef %161) #15
  br label %162

162:                                              ; preds = %160, %144, %137, %109, %64
  %163 = phi i32 [ -12, %64 ], [ -19, %109 ], [ %138, %137 ], [ -12, %144 ], [ -12, %160 ]
  %164 = load i32, ptr %3, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  tail call void @free_percpu(ptr noundef %168) #15
  %169 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  tail call void @free_percpu(ptr noundef %170) #15
  br label %171

171:                                              ; preds = %166, %162, %158, %156
  %172 = phi i32 [ %163, %166 ], [ %163, %162 ], [ 0, %158 ], [ 0, %156 ]
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gic_teardown(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1305, i32 noundef 9, ptr noundef null) #15
  br label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @iounmap(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @iounmap(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @gic_of_init(ptr noundef %0, ptr noundef readnone %1) #0 section ".init.text" {
  %3 = alloca %struct.resource, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1510, i32 noundef 9, ptr noundef null) #15
  br label %114

6:                                                ; preds = %2
  %7 = load i32, ptr @gic_cnt, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1513, i32 noundef 9, ptr noundef null) #15
  br label %114

10:                                               ; preds = %6
  %11 = getelementptr [1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 %7
  %12 = tail call fastcc i32 @gic_of_setup(ptr noundef %11, ptr noundef nonnull %0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %114

14:                                               ; preds = %10
  %15 = load i32, ptr @gic_cnt, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %90

17:                                               ; preds = %14
  %18 = getelementptr [1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 %7, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #15, !annotation !20
  %19 = call i32 @of_address_to_resource(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %3) #15
  %20 = load i32, ptr @__boot_cpu_mode, align 4
  %21 = and i32 %20, -2147483617
  %22 = icmp eq i32 %21, 26
  br i1 %22, label %23, label %89

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %3, align 4
  %27 = add i32 %25, 1
  %28 = sub i32 %27, %26
  %29 = icmp ult i32 %28, 8192
  br i1 %29, label %30, label %65

30:                                               ; preds = %23
  %31 = load ptr, ptr %18, align 4
  %32 = getelementptr i8, ptr %31, i32 252
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #15, !srcloc !13
  %34 = and i32 %33, 16715775
  %35 = icmp eq i32 %34, 132155
  br i1 %35, label %36, label %89

36:                                               ; preds = %30
  %37 = load i8, ptr @gicv2_force_probe, align 1, !range !18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #17
  br label %89

41:                                               ; preds = %36
  %42 = load i32, ptr %3, align 4
  %43 = call ptr @ioremap(i32 noundef %42, i32 noundef 8192) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %89, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %43, i32 4348
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #15, !srcloc !13
  %48 = and i32 %47, 16715775
  %49 = icmp eq i32 %48, 132155
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #17
  %52 = load ptr, ptr %18, align 4
  call void @iounmap(ptr noundef %52) #15
  store ptr %43, ptr %18, align 4
  br label %88

53:                                               ; preds = %45
  call void @iounmap(ptr noundef nonnull %43) #15
  %54 = load i32, ptr %3, align 4
  %55 = call ptr @ioremap(i32 noundef %54, i32 noundef 131072) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %89, label %57

57:                                               ; preds = %53
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %3) #17
  %59 = load i32, ptr %3, align 4
  %60 = add i32 %59, 131071
  store i32 %60, ptr %24, align 4
  %61 = load ptr, ptr %18, align 4
  call void @iounmap(ptr noundef %61) #15
  store ptr %55, ptr %18, align 4
  %62 = load i32, ptr %24, align 4
  %63 = load i32, ptr %3, align 4
  %64 = add i32 %62, 1
  br label %65

65:                                               ; preds = %57, %23
  %66 = phi i32 [ %64, %57 ], [ %27, %23 ]
  %67 = phi i32 [ %63, %57 ], [ %26, %23 ]
  %68 = sub i32 %66, %67
  %69 = icmp eq i32 %68, 131072
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load ptr, ptr %18, align 4
  %72 = getelementptr i8, ptr %71, i32 252
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #15, !srcloc !13
  %74 = and i32 %73, 16715775
  %75 = icmp eq i32 %74, 132155
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load ptr, ptr %18, align 4
  %78 = getelementptr i8, ptr %77, i32 61692
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #15, !srcloc !13
  %80 = and i32 %79, 16715775
  %81 = icmp eq i32 %80, 132155
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load ptr, ptr %18, align 4
  %84 = getelementptr i8, ptr %83, i32 61440
  store ptr %84, ptr %18, align 4
  %85 = load i32, ptr %3, align 4
  %86 = add i32 %85, 61440
  store i32 %86, ptr %3, align 4
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #17
  br label %88

88:                                               ; preds = %82, %65, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %90

89:                                               ; preds = %76, %70, %53, %41, %39, %30, %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  call fastcc void @static_key_disable()
  br label %90

90:                                               ; preds = %89, %88, %14
  %91 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %92 = call fastcc i32 @__gic_init_bases(ptr noundef %11, ptr noundef %91) #16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  call fastcc void @gic_teardown(ptr noundef %11)
  br label %114

95:                                               ; preds = %90
  %96 = load i32, ptr @gic_cnt, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  call fastcc void @gic_of_setup_kvm_info(ptr noundef nonnull %0) #16
  br label %99

99:                                               ; preds = %98, %95
  %100 = icmp eq ptr %1, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %99
  %102 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %0, i32 noundef 0) #15
  %103 = load i32, ptr @gic_cnt, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105, !prof !9

105:                                              ; preds = %101
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-gic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

106:                                              ; preds = %101
  call void @irq_set_chained_handler_and_data(i32 noundef %102, ptr noundef nonnull @gic_handle_cascade_irq, ptr noundef nonnull @gic_data) #15
  br label %107

107:                                              ; preds = %106, %99
  %108 = load i32, ptr @gic_cnt, align 4
  %109 = getelementptr [1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 %108, i32 13
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 @gicv2m_init(ptr noundef %91, ptr noundef %110) #15
  %112 = load i32, ptr @gic_cnt, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr @gic_cnt, align 4
  br label %114

114:                                              ; preds = %107, %94, %10, %9, %5
  %115 = phi i32 [ -19, %5 ], [ -22, %9 ], [ %92, %94 ], [ 0, %107 ], [ %12, %10 ]
  ret i32 %115
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @gic_of_setup_kvm_info(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  store i32 0, ptr @gic_v2_kvm_info, align 4
  %2 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #15
  store i32 %2, ptr getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v2_kvm_info, i32 0, i32 2), align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 2, ptr noundef getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v2_kvm_info, i32 0, i32 4)) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = tail call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 3, ptr noundef getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v2_kvm_info, i32 0, i32 1)) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load volatile i32, ptr @supports_deactivate_key, align 4
  br label %12

12:                                               ; preds = %10, %7, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gicv2m_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #6 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_handle_irq(ptr nocapture noundef readnone %0) #2 {
  %2 = load volatile i32, ptr @frankengic_key, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %12, !prof !11

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 2), align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #5, !srcloc !12
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi ptr [ %11, %4 ], [ getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 2), %1 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !13
  %17 = and i32 %16, 1023
  %18 = icmp ugt i32 %17, 1019
  br i1 %18, label %42, label %19, !prof !11

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %14, i32 16
  br label %21

21:                                               ; preds = %36, %19
  %22 = phi i32 [ %17, %19 ], [ %40, %36 ]
  %23 = phi i32 [ %16, %19 ], [ %39, %36 ]
  %24 = load volatile i32, ptr @supports_deactivate_key, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %23) #15, !srcloc !16
  br label %27

27:                                               ; preds = %26, %21
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  %28 = icmp ult i32 %22, 16
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !23
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #5, !srcloc !12
  %34 = add i32 %33, ptrtoint (ptr @sgi_intid to i32)
  %35 = inttoptr i32 %34 to ptr
  store i32 %23, ptr %35, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #15, !srcloc !24
  br label %36

36:                                               ; preds = %29, %27
  %37 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 13), align 4
  %38 = tail call i32 @generic_handle_domain_irq(ptr noundef %37, i32 noundef %22) #15
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !13
  %40 = and i32 %39, 1023
  %41 = icmp ugt i32 %40, 1019
  br i1 %41, label %42, label %21, !prof !11

42:                                               ; preds = %36, %12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @gic_smp_init() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #15
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %3 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 13), align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  store i32 1, ptr %6, align 4
  %7 = tail call i32 @__cpuhp_setup_state(i32 noundef 97, ptr noundef nonnull @.str.6, i1 noundef zeroext false, ptr noundef nonnull @gic_starting_cpu, ptr noundef null, i1 noundef zeroext false) #15
  %8 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 13), align 4
  %9 = call i32 @__irq_domain_alloc_irqs(ptr noundef %8, i32 noundef -1, i32 noundef 8, i32 noundef -1, ptr noundef nonnull %1, i1 noundef zeroext false, ptr noundef null) #15
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %0
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 872, i32 noundef 9, ptr noundef null) #15
  br label %13

12:                                               ; preds = %0
  call void @set_smp_ipi_range(i32 noundef %9, i32 noundef 8) #15
  br label %13

13:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_starting_cpu(i32 noundef %0) #2 {
  %2 = tail call fastcc i32 @gic_cpu_init(ptr noundef nonnull @gic_data)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gic_cpu_init(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr @frankengic_key, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13, !prof !11

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi ptr [ %12, %5 ], [ %2, %1 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 2
  %17 = load volatile i32, ptr @frankengic_key, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %27, !prof !11

19:                                               ; preds = %13
  %20 = load ptr, ptr %16, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #5, !srcloc !12
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %19, %13
  %28 = phi ptr [ %26, %19 ], [ %16, %13 ]
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr @llvm.thread.pointer() #15
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq ptr %0, @gic_data
  br i1 %33, label %34, label %89

34:                                               ; preds = %27
  %35 = icmp ugt i32 %32, 7
  br i1 %35, label %36, label %37, !prof !11

36:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 508, i32 noundef 9, ptr noundef null) #15
  br label %123

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i8 @gic_get_cpumask(ptr noundef nonnull @gic_data)
  %39 = getelementptr [8 x i8], ptr @gic_cpu_map, i32 0, i32 %32
  store i8 %38, ptr %39, align 1
  %40 = xor i8 %38, -1
  %41 = icmp eq i32 %32, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 1), align 1
  %44 = and i8 %43, %40
  store i8 %44, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 1), align 1
  br label %53

45:                                               ; preds = %37
  %46 = load i8, ptr @gic_cpu_map, align 1
  %47 = and i8 %46, %40
  store i8 %47, ptr @gic_cpu_map, align 1
  %48 = icmp eq i32 %32, 1
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 1), align 1
  %51 = and i8 %50, %40
  store i8 %51, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 1), align 1
  %52 = icmp eq i32 %32, 2
  br i1 %52, label %60, label %56

53:                                               ; preds = %45, %42
  %54 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 2), align 1
  %55 = and i8 %54, %40
  store i8 %55, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 2), align 1
  br label %60

56:                                               ; preds = %49
  %57 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 2), align 1
  %58 = and i8 %57, %40
  store i8 %58, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 2), align 1
  %59 = icmp eq i32 %32, 3
  br i1 %59, label %67, label %63

60:                                               ; preds = %53, %49
  %61 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 3), align 1
  %62 = and i8 %61, %40
  store i8 %62, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 3), align 1
  br label %67

63:                                               ; preds = %56
  %64 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 3), align 1
  %65 = and i8 %64, %40
  store i8 %65, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 3), align 1
  %66 = icmp eq i32 %32, 4
  br i1 %66, label %74, label %70

67:                                               ; preds = %60, %56
  %68 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 4), align 1
  %69 = and i8 %68, %40
  store i8 %69, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 4), align 1
  br label %74

70:                                               ; preds = %63
  %71 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 4), align 1
  %72 = and i8 %71, %40
  store i8 %72, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 4), align 1
  %73 = icmp eq i32 %32, 5
  br i1 %73, label %81, label %77

74:                                               ; preds = %67, %63
  %75 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 5), align 1
  %76 = and i8 %75, %40
  store i8 %76, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 5), align 1
  br label %81

77:                                               ; preds = %70
  %78 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 5), align 1
  %79 = and i8 %78, %40
  store i8 %79, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 5), align 1
  %80 = icmp eq i32 %32, 6
  br i1 %80, label %84, label %85

81:                                               ; preds = %74, %70
  %82 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 6), align 1
  %83 = and i8 %82, %40
  store i8 %83, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 6), align 1
  br label %84

84:                                               ; preds = %81, %77
  br label %85

85:                                               ; preds = %84, %77
  %86 = phi ptr [ getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 7), %84 ], [ getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 6), %77 ]
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, %40
  store i8 %88, ptr %86, align 1
  br label %89

89:                                               ; preds = %85, %27
  tail call void @gic_cpu_config(ptr noundef %15, i32 noundef 32, ptr noundef null) #15
  %90 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 240) #15, !srcloc !16
  %91 = load volatile i32, ptr @frankengic_key, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %101, !prof !11

93:                                               ; preds = %89
  %94 = load ptr, ptr %16, align 4
  %95 = ptrtoint ptr %94 to i32
  %96 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %97 = inttoptr i32 %96 to ptr
  %98 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %97) #5, !srcloc !12
  %99 = add i32 %98, %95
  %100 = inttoptr i32 %99 to ptr
  br label %101

101:                                              ; preds = %93, %89
  %102 = phi ptr [ %100, %93 ], [ %16, %89 ]
  %103 = load ptr, ptr %102, align 4
  br i1 %33, label %104, label %108

104:                                              ; preds = %101
  %105 = load volatile i32, ptr @supports_deactivate_key, align 4
  %106 = icmp slt i32 %105, 1
  %107 = select i1 %106, i32 1, i32 513
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i32 [ 1, %101 ], [ %107, %104 ]
  %110 = getelementptr i8, ptr %103, i32 252
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #15, !srcloc !13
  %112 = and i32 %111, 16715775
  %113 = icmp eq i32 %112, 132155
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = getelementptr i8, ptr %103, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 0) #15, !srcloc !16
  %116 = getelementptr i8, ptr %103, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 0) #15, !srcloc !16
  %117 = getelementptr i8, ptr %103, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 0) #15, !srcloc !16
  %118 = getelementptr i8, ptr %103, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 0) #15, !srcloc !16
  br label %119

119:                                              ; preds = %114, %108
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !17
  %121 = and i32 %120, 480
  %122 = or i32 %121, %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %122) #15, !srcloc !16
  br label %123

123:                                              ; preds = %119, %36
  %124 = phi i32 [ -22, %36 ], [ 0, %119 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @gic_get_cpumask(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gic_chip_data, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr @frankengic_key, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13, !prof !11

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi ptr [ %12, %5 ], [ %2, %1 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 2048
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #15, !srcloc !13
  %18 = lshr i32 %17, 16
  %19 = or i32 %18, %17
  %20 = lshr i32 %19, 8
  %21 = or i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %86

23:                                               ; preds = %13
  %24 = getelementptr i8, ptr %15, i32 2052
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #15, !srcloc !13
  %26 = lshr i32 %25, 16
  %27 = or i32 %26, %25
  %28 = lshr i32 %27, 8
  %29 = or i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %23
  %32 = getelementptr i8, ptr %15, i32 2056
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #15, !srcloc !13
  %34 = lshr i32 %33, 16
  %35 = or i32 %34, %33
  %36 = lshr i32 %35, 8
  %37 = or i32 %36, %35
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %86

39:                                               ; preds = %31
  %40 = getelementptr i8, ptr %15, i32 2060
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #15, !srcloc !13
  %42 = lshr i32 %41, 16
  %43 = or i32 %42, %41
  %44 = lshr i32 %43, 8
  %45 = or i32 %44, %43
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %39
  %48 = getelementptr i8, ptr %15, i32 2064
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #15, !srcloc !13
  %50 = lshr i32 %49, 16
  %51 = or i32 %50, %49
  %52 = lshr i32 %51, 8
  %53 = or i32 %52, %51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %47
  %56 = getelementptr i8, ptr %15, i32 2068
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #15, !srcloc !13
  %58 = lshr i32 %57, 16
  %59 = or i32 %58, %57
  %60 = lshr i32 %59, 8
  %61 = or i32 %60, %59
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %55
  %64 = getelementptr i8, ptr %15, i32 2072
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #15, !srcloc !13
  %66 = lshr i32 %65, 16
  %67 = or i32 %66, %65
  %68 = lshr i32 %67, 8
  %69 = or i32 %68, %67
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  %72 = getelementptr i8, ptr %15, i32 2076
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #15, !srcloc !13
  %74 = lshr i32 %73, 16
  %75 = or i32 %74, %73
  %76 = lshr i32 %75, 8
  %77 = or i32 %76, %75
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i32, ptr @__cpu_possible_mask, align 4
  %81 = and i32 %80, 65535
  %82 = tail call i32 @__sw_hweight32(i32 noundef %81) #15
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #17
  br label %86

86:                                               ; preds = %84, %79, %71, %63, %55, %47, %39, %31, %23, %13
  %87 = phi i32 [ 0, %84 ], [ 0, %79 ], [ %21, %13 ], [ %29, %23 ], [ %37, %31 ], [ %45, %39 ], [ %53, %47 ], [ %61, %55 ], [ %69, %63 ], [ %77, %71 ]
  %88 = trunc i32 %87 to i8
  ret i8 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_cpu_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_eoimode1_mask_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gic_chip_data, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr @frankengic_key, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %17, !prof !11

9:                                                ; preds = %1
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #5, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %9, %1
  %18 = phi ptr [ %16, %9 ], [ %6, %1 ]
  %19 = and i32 %3, 31
  %20 = shl nuw i32 1, %19
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 384
  %23 = lshr i32 %3, 3
  %24 = and i32 %23, 536870908
  %25 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #15, !srcloc !16
  %26 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %17
  %32 = load i32, ptr %2, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.gic_chip_data, ptr %33, i32 0, i32 1
  %35 = load volatile i32, ptr @frankengic_key, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %45, !prof !11

37:                                               ; preds = %31
  %38 = load ptr, ptr %34, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #5, !srcloc !12
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  br label %45

45:                                               ; preds = %37, %31
  %46 = phi ptr [ %44, %37 ], [ %34, %31 ]
  %47 = and i32 %32, 31
  %48 = shl nuw i32 1, %47
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr i8, ptr %49, i32 896
  %51 = lshr i32 %32, 3
  %52 = and i32 %51, 536870908
  %53 = getelementptr i8, ptr %50, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %48) #15, !srcloc !16
  br label %54

54:                                               ; preds = %45, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_eoimode1_eoi_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 16
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #5, !srcloc !12
  %15 = add i32 %14, ptrtoint (ptr @sgi_intid to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = load volatile i32, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i32 [ %17, %11 ], [ %9, %7 ]
  %20 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gic_chip_data, ptr %21, i32 0, i32 2
  %23 = load volatile i32, ptr @frankengic_key, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %33, !prof !11

25:                                               ; preds = %18
  %26 = load ptr, ptr %22, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #5, !srcloc !12
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  br label %33

33:                                               ; preds = %25, %18
  %34 = phi ptr [ %32, %25 ], [ %22, %18 ]
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %19) #15, !srcloc !16
  br label %37

37:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @gic_irq_set_vcpu_affinity(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #10 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 16
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %1, null
  %14 = load i32, ptr %4, align 4
  %15 = and i32 %14, -1048577
  %16 = select i1 %13, i32 0, i32 1048576
  %17 = or i32 %15, %16
  store i32 %17, ptr %4, align 4
  br label %18

18:                                               ; preds = %12, %8, %2
  %19 = phi i32 [ -22, %8 ], [ -22, %2 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_set_affinity(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gic_chip_data, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr @frankengic_key, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %17, !prof !11

9:                                                ; preds = %3
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #5, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %9, %3
  %18 = phi ptr [ %16, %9 ], [ %6, %3 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 2048
  %21 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  br i1 %2, label %32, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 4
  %26 = load i32, ptr @__cpu_online_mask, align 4
  %27 = and i32 %25, 65535
  %28 = and i32 %27, %26
  %29 = icmp eq i32 %28, 0
  %30 = tail call i32 @llvm.cttz.i32(i32 %28, i1 true) #15, !range !27
  %31 = select i1 %29, i32 16, i32 %30
  br label %34

32:                                               ; preds = %17
  %33 = tail call i32 @_find_first_bit_le(ptr noundef %1, i32 noundef 16) #15
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi i32 [ %33, %32 ], [ %31, %24 ]
  %36 = icmp ult i32 %35, 8
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %35, %37
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load volatile i32, ptr @needs_rmw_access, align 4
  %42 = icmp sgt i32 %41, 0
  %43 = getelementptr [8 x i8], ptr @gic_cpu_map, i32 0, i32 %35
  %44 = load i8, ptr %43, align 1
  br i1 %42, label %45, label %46, !prof !11

45:                                               ; preds = %40
  tail call fastcc void @rmw_writeb(i8 noundef zeroext %44, ptr noundef %23)
  br label %47

46:                                               ; preds = %40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %44) #15, !srcloc !28
  br label %47

47:                                               ; preds = %46, %45
  %48 = add nuw nsw i32 %35, 1
  %49 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %48
  %50 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.irq_common_data, ptr %51, i32 0, i32 4
  %53 = load i32, ptr %49, align 4
  store i32 %53, ptr %52, align 4
  br label %54

54:                                               ; preds = %47, %34
  %55 = phi i32 [ 2, %47 ], [ -22, %34 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_ipi_send_mask(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #2 {
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5, !prof !11

5:                                                ; preds = %2
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #19
  %7 = icmp ult i32 %6, %3
  br i1 %7, label %26, label %37

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 33554432
  %12 = load volatile i32, ptr @frankengic_key, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %22, !prof !11

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #5, !srcloc !12
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  br label %22

22:                                               ; preds = %14, %8
  %23 = phi ptr [ %21, %14 ], [ getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), %8 ]
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %11) #15, !srcloc !16
  br label %56

26:                                               ; preds = %26, %5
  %27 = phi i32 [ %33, %26 ], [ %6, %5 ]
  %28 = phi i32 [ %32, %26 ], [ 0, %5 ]
  %29 = getelementptr [8 x i8], ptr @gic_cpu_map, i32 0, i32 %27
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %28, %31
  %33 = tail call i32 @cpumask_next(i32 noundef %27, ptr noundef %1) #19
  %34 = icmp ult i32 %33, %3
  br i1 %34, label %26, label %35

35:                                               ; preds = %26
  %36 = shl i32 %32, 16
  br label %37

37:                                               ; preds = %35, %5
  %38 = phi i32 [ 0, %5 ], [ %36, %35 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !29
  %39 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, %38
  %42 = load volatile i32, ptr @frankengic_key, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %52, !prof !11

44:                                               ; preds = %37
  %45 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #5, !srcloc !12
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  br label %52

52:                                               ; preds = %44, %37
  %53 = phi ptr [ %51, %44 ], [ getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), %37 ]
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %41) #15, !srcloc !16
  br label %56

56:                                               ; preds = %52, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_mask_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gic_chip_data, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr @frankengic_key, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %17, !prof !11

9:                                                ; preds = %1
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #5, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %9, %1
  %18 = phi ptr [ %16, %9 ], [ %6, %1 ]
  %19 = and i32 %3, 31
  %20 = shl nuw i32 1, %19
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 384
  %23 = lshr i32 %3, 3
  %24 = and i32 %23, 536870908
  %25 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #15, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_unmask_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gic_chip_data, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr @frankengic_key, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %17, !prof !11

9:                                                ; preds = %1
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #5, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %9, %1
  %18 = phi ptr [ %16, %9 ], [ %6, %1 ]
  %19 = and i32 %3, 31
  %20 = shl nuw i32 1, %19
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 256
  %23 = lshr i32 %3, 3
  %24 = and i32 %23, 536870908
  %25 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #15, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gic_eoi_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 16
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #5, !srcloc !12
  %9 = add i32 %8, ptrtoint (ptr @sgi_intid to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load volatile i32, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ %3, %1 ]
  %14 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gic_chip_data, ptr %15, i32 0, i32 2
  %17 = load volatile i32, ptr @frankengic_key, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %27, !prof !11

19:                                               ; preds = %12
  %20 = load ptr, ptr %16, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #5, !srcloc !12
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %19, %12
  %28 = phi ptr [ %26, %19 ], [ %16, %12 ]
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %13) #15, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_retrigger(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gic_chip_data, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr @frankengic_key, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %17, !prof !11

9:                                                ; preds = %1
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #5, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %9, %1
  %18 = phi ptr [ %16, %9 ], [ %6, %1 ]
  %19 = and i32 %3, 31
  %20 = shl nuw i32 1, %19
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 512
  %23 = lshr i32 %3, 3
  %24 = and i32 %23, 536870908
  %25 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #15, !srcloc !16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gic_chip_data, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr @frankengic_key, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16, !prof !11

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #5, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi ptr [ %15, %8 ], [ %5, %2 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = icmp eq i32 %1, 1
  %24 = select i1 %23, i32 0, i32 -22
  br label %38

25:                                               ; preds = %16
  %26 = freeze i32 %20
  %27 = icmp ugt i32 %26, 31
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  switch i32 %1, label %38 [
    i32 4, label %29
    i32 1, label %29
  ]

29:                                               ; preds = %28, %28, %25
  %30 = getelementptr i8, ptr %18, i32 3072
  %31 = tail call i32 @gic_configure_irq(i32 noundef %26, i32 noundef %1, ptr noundef %30, ptr noundef null) #15
  %32 = icmp ne i32 %31, 0
  %33 = icmp ult i32 %26, 32
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = add nsw i32 %26, -16
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %36) #17
  br label %38

38:                                               ; preds = %35, %29, %28, %22
  %39 = phi i32 [ %24, %22 ], [ -22, %28 ], [ 0, %35 ], [ %31, %29 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_get_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  switch i32 %1, label %91 [
    i32 0, label %4
    i32 1, label %32
    i32 2, label %60
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gic_chip_data, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr @frankengic_key, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %20, !prof !11

12:                                               ; preds = %4
  %13 = load ptr, ptr %9, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #5, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  br label %20

20:                                               ; preds = %12, %4
  %21 = phi ptr [ %19, %12 ], [ %9, %4 ]
  %22 = and i32 %6, 31
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr i8, ptr %23, i32 512
  %25 = lshr i32 %6, 3
  %26 = and i32 %25, 536870908
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #15, !srcloc !13
  %29 = shl nuw i32 1, %22
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %88

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.gic_chip_data, ptr %36, i32 0, i32 1
  %38 = load volatile i32, ptr @frankengic_key, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %48, !prof !11

40:                                               ; preds = %32
  %41 = load ptr, ptr %37, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %44) #5, !srcloc !12
  %46 = add i32 %45, %42
  %47 = inttoptr i32 %46 to ptr
  br label %48

48:                                               ; preds = %40, %32
  %49 = phi ptr [ %47, %40 ], [ %37, %32 ]
  %50 = and i32 %34, 31
  %51 = load ptr, ptr %49, align 4
  %52 = getelementptr i8, ptr %51, i32 768
  %53 = lshr i32 %34, 3
  %54 = and i32 %53, 536870908
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #15, !srcloc !13
  %57 = shl nuw i32 1, %50
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br label %88

60:                                               ; preds = %3
  %61 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.gic_chip_data, ptr %64, i32 0, i32 1
  %66 = load volatile i32, ptr @frankengic_key, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %76, !prof !11

68:                                               ; preds = %60
  %69 = load ptr, ptr %65, align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %72 = inttoptr i32 %71 to ptr
  %73 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %72) #5, !srcloc !12
  %74 = add i32 %73, %70
  %75 = inttoptr i32 %74 to ptr
  br label %76

76:                                               ; preds = %68, %60
  %77 = phi ptr [ %75, %68 ], [ %65, %60 ]
  %78 = and i32 %62, 31
  %79 = load ptr, ptr %77, align 4
  %80 = getelementptr i8, ptr %79, i32 256
  %81 = lshr i32 %62, 3
  %82 = and i32 %81, 536870908
  %83 = getelementptr i8, ptr %80, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #15, !srcloc !13
  %85 = shl nuw i32 1, %78
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br label %88

88:                                               ; preds = %76, %48, %20
  %89 = phi i1 [ %31, %20 ], [ %59, %48 ], [ %87, %76 ]
  %90 = zext i1 %89 to i8
  store i8 %90, ptr %2, align 1
  br label %91

91:                                               ; preds = %88, %3
  %92 = phi i32 [ -22, %3 ], [ 0, %88 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_set_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #2 {
  switch i32 %1, label %36 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = select i1 %2, i32 512, i32 640
  br label %10

6:                                                ; preds = %3
  %7 = select i1 %2, i32 768, i32 896
  br label %10

8:                                                ; preds = %3
  %9 = select i1 %2, i32 384, i32 256
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = phi i32 [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gic_chip_data, ptr %15, i32 0, i32 1
  %17 = load volatile i32, ptr @frankengic_key, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %27, !prof !11

19:                                               ; preds = %10
  %20 = load ptr, ptr %16, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #5, !srcloc !12
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %19, %10
  %28 = phi ptr [ %26, %19 ], [ %16, %10 ]
  %29 = and i32 %13, 31
  %30 = shl nuw i32 1, %29
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr i8, ptr %31, i32 %11
  %33 = lshr i32 %13, 3
  %34 = and i32 %33, 536870908
  %35 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %30) #15, !srcloc !16
  br label %36

36:                                               ; preds = %27, %3
  %37 = phi i32 [ 0, %27 ], [ -22, %3 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_configure_irq(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rmw_writeb(i8 noundef zeroext %0, ptr noundef %1) unnamed_addr #2 {
  %3 = ptrtoint ptr %1 to i32
  %4 = and i32 %3, 3
  %5 = shl nuw nsw i32 %4, 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rmw_writeb.rmw_lock) #15
  %7 = sub nsw i32 0, %4
  %8 = getelementptr i8, ptr %1, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #15, !srcloc !13
  %10 = shl nsw i32 -1, %5
  %11 = xor i32 %5, 24
  %12 = lshr i32 -1, %11
  %13 = and i32 %12, %10
  %14 = xor i32 %13, -1
  %15 = and i32 %9, %14
  %16 = zext i8 %0 to i32
  %17 = shl nuw i32 %16, %5
  %18 = or i32 %15, %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %18) #15, !srcloc !16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rmw_writeb.rmw_lock, i32 noundef %6) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_of_quirks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @gic_enable_rmw_access(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.14) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr @static_key_initialized, align 1, !range !18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @needs_rmw_access) #15
  br label %8

8:                                                ; preds = %7, %4
  %9 = load volatile i32, ptr @needs_rmw_access, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load volatile i32, ptr @needs_rmw_access, align 4
  %13 = icmp ne i32 %12, 1
  %14 = load i1, ptr @static_key_enable.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %11
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 321, i32 noundef 9, ptr noundef null) #15
  br label %19

18:                                               ; preds = %8
  store volatile i32 1, ptr @needs_rmw_access, align 4
  br label %19

19:                                               ; preds = %18, %17, %11, %1
  %20 = xor i1 %3, true
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %7 = call i32 @gic_irq_domain_translate(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %18, %13 ]
  %15 = add i32 %14, %1
  %16 = add i32 %12, %14
  %17 = tail call i32 @gic_irq_domain_map(ptr noundef %0, i32 noundef %15, i32 noundef %16)
  %18 = add nuw i32 %14, 1
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %13

20:                                               ; preds = %13, %9, %4
  %21 = phi i32 [ %7, %4 ], [ 0, %9 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_top(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
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
  br label %52

13:                                               ; preds = %8, %4
  %14 = load ptr, ptr %1, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @of_fwnode_ops
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = icmp slt i32 %6, 3
  br i1 %23, label %52, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %52 [
    i32 0, label %28
    i32 1, label %27
  ]

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ 16, %27 ], [ 32, %24 ]
  %30 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  store i32 %32, ptr %2, align 4
  %33 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 15
  store i32 %35, ptr %3, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52, !prof !11

37:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef null) #15
  br label %52

38:                                               ; preds = %18, %13
  br i1 %15, label %52, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, @irqchip_fwnode_ops
  %43 = icmp eq i32 %6, 2
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %2, align 4
  %48 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52, !prof !11

51:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1091, i32 noundef 9, ptr noundef null) #15
  br label %52

52:                                               ; preds = %51, %45, %39, %38, %37, %28, %24, %22, %12
  %53 = phi i32 [ 0, %12 ], [ -22, %22 ], [ -22, %24 ], [ 0, %37 ], [ 0, %28 ], [ 0, %51 ], [ 0, %45 ], [ -22, %39 ], [ -22, %38 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_map(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @irq_to_desc(i32 noundef %1) #15
  %7 = icmp ult i32 %2, 32
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call i32 @irq_set_percpu_devid(i32 noundef %1) #15
  %10 = load ptr, ptr %4, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef %10, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #15
  br label %17

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef %12, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef null, ptr noundef null) #15
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 1024, i32 noundef 0) #15
  %13 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 16777216
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %11, %8
  %18 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 268435456
  store i32 %21, ptr %19, align 4
  ret i32 0
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @gic_irq_domain_unmap(ptr nocapture noundef %0, i32 noundef %1) #14 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gic_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  switch i32 %1, label %68 [
    i32 0, label %4
    i32 1, label %65
    i32 2, label %65
    i32 3, label %66
    i32 4, label %67
    i32 5, label %67
  ]

4:                                                ; preds = %3
  %5 = load volatile i32, ptr @frankengic_key, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %15, !prof !11

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #5, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi ptr [ %14, %7 ], [ getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), %4 ]
  %17 = load ptr, ptr %16, align 4
  %18 = load volatile i32, ptr @frankengic_key, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28, !prof !11

20:                                               ; preds = %15
  %21 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 2), align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #5, !srcloc !12
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  br label %28

28:                                               ; preds = %20, %15
  %29 = phi ptr [ %27, %20 ], [ getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 2), %15 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ne ptr %17, null
  %32 = icmp ne ptr %30, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %68

34:                                               ; preds = %28
  %35 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 10), align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #5, !srcloc !12
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr i8, ptr %17, i32 256
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #15, !srcloc !13
  store i32 %43, ptr %41, align 4
  %44 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 11), align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #5, !srcloc !12
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr i8, ptr %17, i32 768
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #15, !srcloc !13
  store i32 %52, ptr %50, align 4
  %53 = load ptr, ptr getelementptr inbounds ([1 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 12), align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #5, !srcloc !12
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr i8, ptr %17, i32 3072
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #15, !srcloc !13
  store i32 %61, ptr %59, align 4
  %62 = getelementptr i8, ptr %17, i32 3076
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #15, !srcloc !13
  %64 = getelementptr i32, ptr %59, i32 1
  store i32 %63, ptr %64, align 4
  br label %68

65:                                               ; preds = %3, %3
  tail call void @gic_cpu_restore(ptr noundef nonnull @gic_data)
  br label %68

66:                                               ; preds = %3
  tail call void @gic_dist_save(ptr noundef nonnull @gic_data)
  br label %68

67:                                               ; preds = %3, %3
  tail call void @gic_dist_restore(ptr noundef nonnull @gic_data)
  br label %68

68:                                               ; preds = %67, %66, %65, %34, %28, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153670383, i64 2153670873, i64 2153670420, i64 2153670476, i64 2153670510, i64 2153670534, i64 2153670575, i64 2153670596, i64 2153670624, i64 2153670658}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 378669}
!13 = !{i64 3686542}
!14 = !{i64 2153669841}
!15 = !{i64 2153676051}
!16 = !{i64 3686124}
!17 = !{i64 2153674192}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", i32 2000, i32 2002}
!20 = !{!"auto-init"}
!21 = !{i64 2153662179}
!22 = !{i64 2153662315}
!23 = !{i64 359969, i64 360030}
!24 = !{i64 362986}
!25 = !{i64 2153626362}
!26 = !{i64 2153641011}
!27 = !{i32 0, i32 33}
!28 = !{i64 3685927}
!29 = !{i64 2153694114}
!30 = !{i64 2153557832}
!31 = !{i64 2153572481}
