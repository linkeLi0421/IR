; ModuleID = '/llk/IR/drivers/irqchip/irq-gic-v3-its.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v3-its.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.gic_quirk = type { ptr, ptr, ptr, i32, i32 }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cpu_lpi_count = type { %struct.atomic_t, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.102 = type { %struct.raw_spinlock, ptr, ptr, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon = type { %struct.raw_spinlock, ptr, ptr, i32, i64, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rdists = type { ptr, i32, ptr, i64, i32, i32, i32, i8, i8, i8, i8 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.its_device = type { %struct.list_head, ptr, %struct.event_lpi_map, ptr, i32, i32, i8 }
%struct.event_lpi_map = type { ptr, ptr, i32, i32, %struct.raw_spinlock, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.its_cmd_desc = type { %union.anon.80 }
%union.anon.80 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, ptr, i32, i32, i8 }
%struct.its_node = type { %struct.raw_spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, ptr, ptr, [8 x %struct.its_baser], ptr, ptr, ptr, i64, i64, i32, i32, %struct.list_head, i64, i32, i32, i32, i32, i32 }
%struct.its_baser = type { ptr, i64, i32, i32 }
%struct.its_collection = type { i64, i16 }
%struct.anon.85 = type { ptr, i32 }
%struct.its_cmd_block = type { %union.anon.75 }
%union.anon.75 = type { [4 x i64] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.98] }
%union.anon.98 = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.anon.84 = type { ptr, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.anon.86 = type { ptr, i32, i32 }
%struct.anon.88 = type { ptr, i32 }
%struct.anon.87 = type { ptr, ptr, i32 }
%struct.anon.83 = type { ptr, i32 }
%struct.msi_msg = type { %union.anon.69, %union.anon.70, %union.anon.71 }
%union.anon.69 = type { i32 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { i32 }
%struct.anon.82 = type { ptr, i32 }
%struct.its_vm = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, [16 x i32] }
%struct.anon.91 = type { ptr, ptr, i8 }
%struct.its_vpe = type { ptr, ptr, %struct.atomic_t, i32, i32, i8, i8, %union.anon.76, %struct.raw_spinlock, i16, i16, i8 }
%union.anon.76 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr, [16 x %struct.anon.79], %struct.atomic_t }
%struct.anon.79 = type { i8, i8, i8 }
%struct.its_cmd_info = type { i32, %union.anon.99 }
%union.anon.99 = type { ptr }
%struct.its_vlpi_map = type { ptr, ptr, i32, i8, i8 }
%struct.anon.93 = type { ptr, ptr, i32, i8 }
%struct.anon.81 = type { ptr, i32 }
%struct.lpi_range = type { %struct.list_head, i32, i32 }
%struct.anon.96 = type { ptr, i8, i8, i8, i8, i8 }
%struct.anon.101 = type { i8, i8 }
%struct.anon.94 = type { ptr, ptr, i16, i16 }
%struct.anon.100 = type { i8, i8 }

@its_nodes = internal global %struct.list_head { ptr @its_nodes, ptr @its_nodes }, align 4
@gic_rdists = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [36 x i8] c"irqchip/arm/gicv3/memreserve:online\00", align 1
@its_parent = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\014ITS: No ITS available, not enabling LPIs\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"drivers/irqchip/irq-gic-v3-its.c\00", align 1
@its_sgi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_sgi_irq_domain_alloc, ptr @its_sgi_irq_domain_free, ptr @its_sgi_irq_domain_activate, ptr @its_sgi_irq_domain_deactivate, ptr null }, align 4
@its_vpe_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_vpe_irq_domain_alloc, ptr @its_vpe_irq_domain_free, ptr @its_vpe_irq_domain_activate, ptr @its_vpe_irq_domain_deactivate, ptr null }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\013ITS: Disabling GICv4 support\0A\00", align 1
@its_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @its_save_disable, ptr @its_restore_enable, ptr null }, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"\016CPU%d: LPIs not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"\014GICv3: CPU%d: Booted with LPIs enabled, memory probably corrupted\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\013CPU%d: Timeout while disabling LPIs\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"\013CPU%d: Failed to disable LPIs\0A\00", align 1
@lpi_id_bits = internal unnamed_addr global i32 0, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@its_cpu_init_lpis.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"\016GIC: using cache flushing for LPI property table\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"\016GICv3: CPU%d: using %s LPI pending table @%pa\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"allocated\00", align 1
@memblock = external dso_local global %struct.memblock, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"\014GICv3: Expected reserved range [%pa:%pa], not found\0A\00", align 1
@its_clear_vpend_valid._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.its_clear_vpend_valid = private unnamed_addr constant [22 x i8] c"its_clear_vpend_valid\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\013ITS virtual pending table not cleaning\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@its_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@its_send_single_command._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.its_send_single_command = private unnamed_addr constant [24 x i8] c"its_send_single_command\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\013ITS cmd %ps failed\0A\00", align 1
@its_allocate_entry._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.its_allocate_entry = private unnamed_addr constant [19 x i8] c"its_allocate_entry\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"\013ITS queue not draining\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@its_wait_for_range_completion._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.its_wait_for_range_completion = private unnamed_addr constant [30 x i8] c"its_wait_for_range_completion\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"\013ITS queue timeout (%llu %llu)\0A\00", align 1
@efi = external dso_local global %struct.efi, align 4
@cpus_booted_once_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@rdist_memreserve_cpuhp_cleanup_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @rdist_memreserve_cpuhp_cleanup_work, i64 4), ptr getelementptr (i8, ptr @rdist_memreserve_cpuhp_cleanup_work, i64 4) }, ptr @rdist_memreserve_cpuhp_cleanup_workfn }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@its_device_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3-its\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"msi-controller\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"\014%pOF: no msi-controller property, ITS ignored\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"\014%pOF: no regs?\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"\014ITS@%pa: Unable to map ITS registers\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"\014ITS@%pa: No ITS detected, giving up\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"\014ITS@%pa: Failed to quiesce, giving up\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"\016ITS %pR\0A\00", align 1
@its_probe_one.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"&its->dev_alloc_lock\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"\016ITS@%pa: Using ITS number %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"\016ITS@%pa: Single VMOVP capable\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"\016ITS@%pa: Using GICv4.1 mode %08x %08x\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"\016ITS: using cache flushing for cmd queue\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"\013ITS@%pa: failed probing (%d)\0A\00", align 1
@its_list_map = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [40 x i8] c"\013ITS@%pa: No ITSList entry available!\0A\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"\013ITS@%pa: Duplicate ITSList entry %d\0A\00", align 1
@its_quirks = internal constant [1 x %struct.gic_quirk] zeroinitializer, align 4
@.str.32 = private unnamed_addr constant [52 x i8] c"\014ITS@%pa: %s Table too large, reduce ids %llu->%u\0A\00", align 1
@its_base_type_string = internal unnamed_addr constant [8 x ptr] [ptr null, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"Devices\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Virtual CPUs\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Reserved (3)\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Interrupt Collections\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Reserved (5)\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Reserved (6)\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Reserved (7)\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"\014ITS@%pa: %s too large, reduce ITS pages %u->%u\0A\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"\013ITS@%pa: %s doesn't stick: %llx %llx\0A\00", align 1
@.str.42 = private unnamed_addr constant [63 x i8] c"\016ITS@%pa: allocated %d %s @%lx (%s, esz %d, psz %dK, shr %d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"indirect\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@its_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_irq_domain_alloc, ptr @its_irq_domain_free, ptr @its_irq_domain_activate, ptr @its_irq_domain_deactivate, ptr null }, align 4
@its_msi_domain_ops = internal global %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @its_msi_prepare, ptr null, ptr null, ptr null }, align 4
@its_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_mask_irq, ptr null, ptr @its_unmask_irq, ptr @irq_chip_eoi_parent, ptr @its_set_affinity, ptr @its_irq_retrigger, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_irq_compose_msi_msg, ptr null, ptr null, ptr @its_irq_set_irqchip_state, ptr @its_irq_set_vcpu_affinity, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.45 = private unnamed_addr constant [4 x i8] c"ITS\00", align 1
@dev_event_to_vlpi_map.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@its_send_single_vcommand._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.its_send_single_vcommand = private unnamed_addr constant [25 x i8] c"its_send_single_vcommand\00", align 1
@valid_col.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_lpi_count = internal global %struct.cpu_lpi_count zeroinitializer, section ".data..percpu", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@vmovp_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@lpi_range_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @lpi_range_lock, i64 12), ptr getelementptr (i8, ptr @lpi_range_lock, i64 12) } }, align 4
@lpi_range_list = internal global %struct.list_head { ptr @lpi_range_list, ptr @lpi_range_list }, align 4
@vpe_proxy = internal global %struct.anon.102 zeroinitializer, align 4
@its_msi_prepare.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"DevId %x clashes with GICv4 VPE proxy device\0A\00", align 1
@.str.47 = private unnamed_addr constant [50 x i8] c"\016GICv3: Using preallocated redistributor tables\0A\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"\013Failed to allocate PENDBASE for CPU%d\0A\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"\013Failed to allocate PROPBASE\0A\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"\016GICv3: using LPI property table @%pa\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"\016ITS: Using hypervisor restricted LPI range [%u]\0A\00", align 1
@its_sgi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.52, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_sgi_mask_irq, ptr null, ptr @its_sgi_unmask_irq, ptr null, ptr @its_sgi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_sgi_get_irqchip_state, ptr @its_sgi_set_irqchip_state, ptr @its_sgi_set_vcpu_affinity, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.52 = private unnamed_addr constant [12 x i8] c"GICv4.1-sgi\00", align 1
@find_4_1_its.its = internal unnamed_addr global ptr null, align 4
@its_sgi_get_irqchip_state._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.its_sgi_get_irqchip_state = private unnamed_addr constant [26 x i8] c"its_sgi_get_irqchip_state\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"\013Unable to get SGI status\0A\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"\016ITS: Using DirectLPI for VPE invalidation\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"\013ITS: Can't allocate GICv4 proxy device\0A\00", align 1
@.str.56 = private unnamed_addr constant [60 x i8] c"\016ITS: Allocated DevID %x as GICv4 proxy device (%d slots)\0A\00", align 1
@its_vpe_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.57, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_vpe_mask_irq, ptr null, ptr @its_vpe_unmask_irq, ptr @irq_chip_eoi_parent, ptr @its_vpe_set_affinity, ptr @its_vpe_retrigger, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_vpe_set_irqchip_state, ptr @its_vpe_set_vcpu_affinity, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@its_vpe_4_1_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_vpe_4_1_mask_irq, ptr null, ptr @its_vpe_4_1_unmask_irq, ptr @irq_chip_eoi_parent, ptr @its_vpe_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_vpe_4_1_set_vcpu_affinity, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.57 = private unnamed_addr constant [10 x i8] c"GICv4-vpe\00", align 1
@vmovp_seq_num = internal unnamed_addr global i16 0, align 2
@its_wait_vpt_parse_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"GICv4.1-vpe\00", align 1
@its_vpeid_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.59 = private unnamed_addr constant [34 x i8] c"\013ITS@%pa: failed to quiesce: %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"\013ITS@%pa: failed to quiesce on resume: %d\0A\00", align 1
@switch.table.its_vpe_irq_domain_alloc = private unnamed_addr constant [3 x i32] [i32 4096, i32 16384, i32 65536], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_cpu_init() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = load volatile ptr, ptr @its_nodes, align 4
  %3 = icmp eq ptr %2, @its_nodes
  br i1 %3, label %609, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @gic_rdists, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !9
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #17, !srcloc !10
  %17 = getelementptr i8, ptr %14, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #17, !srcloc !10
  %19 = and i32 %16, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = tail call ptr @llvm.thread.pointer() #17
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  br label %603

24:                                               ; preds = %4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #17, !srcloc !10
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @gic_rdists, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #5, !srcloc !9
  %35 = add i32 %34, %31
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 4
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.rdists, ptr %29, i32 0, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 2
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = tail call ptr @llvm.thread.pointer() #17
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %49) #18
  tail call void @add_taint(i32 noundef 10, i32 noundef 0) #17
  %51 = and i32 %25, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %51) #17, !srcloc !11
  tail call void asm sideeffect "dsb sy", "~{memory}"() #17, !srcloc !12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #17, !srcloc !10
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %58, %46
  %56 = phi i64 [ %60, %58 ], [ 1000000, %46 ]
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %603, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #17
  %60 = add nsw i64 %56, -1
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #17, !srcloc !10
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %55

64:                                               ; preds = %58, %46
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #17, !srcloc !10
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %603

68:                                               ; preds = %64, %41, %28, %24
  %69 = load ptr, ptr @gic_rdists, align 4
  %70 = load ptr, ptr %69, align 8
  %71 = ptrtoint ptr %70 to i32
  %72 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %73 = inttoptr i32 %72 to ptr
  %74 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %73) #5, !srcloc !9
  %75 = add i32 %74, %71
  %76 = inttoptr i32 %75 to ptr
  %77 = getelementptr inbounds %struct.anon, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #5, !srcloc !9
  %82 = add i32 %81, %71
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.anon, ptr %83, i32 0, i32 4
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 1
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %592

88:                                               ; preds = %68
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #17, !srcloc !10
  %90 = load ptr, ptr @gic_rdists, align 4
  %91 = getelementptr inbounds %struct.rdists, ptr %90, i32 0, i32 3
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 2
  %94 = icmp eq i64 %93, 0
  %95 = and i32 %89, 1
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %94, i1 true, i1 %96
  br i1 %97, label %134, label %98

98:                                               ; preds = %88
  %99 = getelementptr i8, ptr %78, i32 112
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #17, !srcloc !10
  %101 = getelementptr i8, ptr %78, i32 116
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #17, !srcloc !10
  %103 = and i32 %100, -4096
  %104 = load ptr, ptr @gic_rdists, align 4
  %105 = getelementptr inbounds %struct.rdists, ptr %104, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, %103
  br i1 %107, label %109, label %108, !prof !13

108:                                              ; preds = %98
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3063, i32 noundef 9, ptr noundef null) #17
  tail call void @add_taint(i32 noundef 10, i32 noundef 0) #17
  br label %109

109:                                              ; preds = %108, %98
  %110 = getelementptr i8, ptr %78, i32 120
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #17, !srcloc !10
  %112 = getelementptr i8, ptr %78, i32 124
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #17, !srcloc !10
  %114 = and i32 %111, -65536
  store i32 %114, ptr %1, align 4
  %115 = load i32, ptr @lpi_id_bits, align 4
  %116 = shl nuw i32 1, %115
  %117 = lshr i32 %116, 3
  %118 = add nuw nsw i32 %117, 65535
  %119 = and i32 %118, 1073676288
  %120 = tail call fastcc zeroext i1 @gic_check_reserved_range(i32 noundef %114, i32 noundef %119) #17
  br i1 %120, label %122, label %121, !prof !13

121:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3069, i32 noundef 9, ptr noundef null) #17
  br label %122

122:                                              ; preds = %121, %109
  %123 = load ptr, ptr @gic_rdists, align 4
  %124 = load ptr, ptr %123, align 8
  %125 = ptrtoint ptr %124 to i32
  %126 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %127 = inttoptr i32 %126 to ptr
  %128 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %127) #5, !srcloc !9
  %129 = add i32 %128, %125
  %130 = inttoptr i32 %129 to ptr
  %131 = getelementptr inbounds %struct.anon, ptr %130, i32 0, i32 4
  %132 = load i64, ptr %131, align 8
  %133 = or i64 %132, 2
  store i64 %133, ptr %131, align 8
  br label %564

134:                                              ; preds = %88
  %135 = load ptr, ptr %90, align 8
  %136 = ptrtoint ptr %135 to i32
  %137 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %138 = inttoptr i32 %137 to ptr
  %139 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %138) #5, !srcloc !9
  %140 = add i32 %139, %136
  %141 = inttoptr i32 %140 to ptr
  %142 = getelementptr inbounds %struct.anon, ptr %141, i32 0, i32 2
  %143 = load ptr, ptr %142, align 8
  %144 = load ptr, ptr @mem_map, align 4
  %145 = ptrtoint ptr %143 to i32
  %146 = ptrtoint ptr %144 to i32
  %147 = sub i32 %145, %146
  %148 = lshr exact i32 %147, 5
  %149 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %150 = add i32 %148, %149
  %151 = shl i32 %150, 12
  store i32 %151, ptr %1, align 4
  %152 = getelementptr inbounds %struct.rdists, ptr %90, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = load i32, ptr @lpi_id_bits, align 4
  %155 = add i32 %154, 31
  %156 = and i32 %155, 31
  %157 = or i32 %156, %153
  %158 = or i32 %157, 1920
  %159 = getelementptr i8, ptr %78, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %158) #17, !srcloc !11
  %160 = getelementptr i8, ptr %78, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 0) #17, !srcloc !11
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #17, !srcloc !10
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #17, !srcloc !10
  %163 = xor i32 %158, %161
  %164 = and i32 %163, 3072
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %134
  %167 = and i32 %161, 3072
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = and i32 %157, -3969
  %171 = or i32 %170, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %171) #17, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 0) #17, !srcloc !11
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i1, ptr @its_cpu_init_lpis.__already_done, align 1
  br i1 %173, label %176, label %174, !prof !13

174:                                              ; preds = %172
  store i1 true, ptr @its_cpu_init_lpis.__already_done, align 1
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #18
  br label %176

176:                                              ; preds = %174, %172
  %177 = load ptr, ptr @gic_rdists, align 4
  %178 = getelementptr inbounds %struct.rdists, ptr %177, i32 0, i32 3
  %179 = load i64, ptr %178, align 8
  %180 = or i64 %179, 1
  store i64 %180, ptr %178, align 8
  br label %181

181:                                              ; preds = %176, %134
  %182 = load ptr, ptr @mem_map, align 4
  %183 = ptrtoint ptr %182 to i32
  %184 = sub i32 %145, %183
  %185 = lshr exact i32 %184, 5
  %186 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %187 = add i32 %185, %186
  %188 = shl i32 %187, 12
  %189 = or i32 %188, 1920
  %190 = getelementptr i8, ptr %78, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %189) #17, !srcloc !11
  %191 = getelementptr i8, ptr %78, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 0) #17, !srcloc !11
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #17, !srcloc !10
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #17, !srcloc !10
  %194 = and i32 %192, 3072
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %181
  %197 = or i32 %188, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %197) #17, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 0) #17, !srcloc !11
  br label %198

198:                                              ; preds = %196, %181
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #17, !srcloc !10
  %200 = or i32 %199, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %200) #17, !srcloc !11
  %201 = load ptr, ptr @gic_rdists, align 4
  %202 = getelementptr inbounds %struct.rdists, ptr %201, i32 0, i32 7
  %203 = load i8, ptr %202, align 4, !range !14
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %227, label %205

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.rdists, ptr %201, i32 0, i32 8
  %207 = load i8, ptr %206, align 1, !range !14
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %205
  %210 = load ptr, ptr %201, align 8
  %211 = ptrtoint ptr %210 to i32
  %212 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %213 = inttoptr i32 %212 to ptr
  %214 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %213) #5, !srcloc !9
  %215 = add i32 %214, %211
  %216 = inttoptr i32 %215 to ptr
  %217 = getelementptr inbounds %struct.anon, ptr %216, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr i8, ptr %218, i32 131072
  %220 = load i32, ptr @lpi_id_bits, align 4
  %221 = add i32 %220, 31
  %222 = and i32 %221, 31
  %223 = getelementptr i8, ptr %218, i32 131184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %222) #17, !srcloc !11
  %224 = getelementptr i8, ptr %218, i32 131188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 0) #17, !srcloc !11
  %225 = tail call fastcc i64 @its_clear_vpend_valid(ptr noundef %219, i64 noundef 0, i64 noundef 0) #17
  %226 = load ptr, ptr @gic_rdists, align 4
  br label %227

227:                                              ; preds = %209, %205, %198
  %228 = phi ptr [ %226, %209 ], [ %201, %205 ], [ %201, %198 ]
  %229 = load ptr, ptr %228, align 8
  %230 = ptrtoint ptr %229 to i32
  %231 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %232 = inttoptr i32 %231 to ptr
  %233 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %232) #5, !srcloc !9
  %234 = add i32 %233, %230
  %235 = inttoptr i32 %234 to ptr
  %236 = getelementptr inbounds %struct.anon, ptr %235, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.rdists, ptr %228, i32 0, i32 8
  %239 = load i8, ptr %238, align 1, !range !14
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %562, label %241

241:                                              ; preds = %227
  %242 = getelementptr i8, ptr %237, i32 131192
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #17, !srcloc !10
  %244 = getelementptr i8, ptr %237, i32 131196
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #17, !srcloc !10
  %246 = icmp sgt i32 %245, -1
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #17, !srcloc !10
  %249 = icmp sgt i32 %248, -1
  br i1 %249, label %252, label %250

250:                                              ; preds = %247
  %251 = and i32 %248, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %251) #17, !srcloc !11
  br label %252

252:                                              ; preds = %250, %247
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 0) #17, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 536870912) #17, !srcloc !11
  br label %253

253:                                              ; preds = %252, %241
  %254 = load ptr, ptr @gic_rdists, align 4
  %255 = load ptr, ptr %254, align 8
  %256 = ptrtoint ptr %255 to i32
  %257 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %258 = inttoptr i32 %257 to ptr
  %259 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %258) #5, !srcloc !9
  %260 = add i32 %259, %256
  %261 = inttoptr i32 %260 to ptr
  %262 = getelementptr inbounds %struct.anon, ptr %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.anon, ptr %261, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr i8, ptr %264, i32 8
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #17, !srcloc !10
  %267 = getelementptr i8, ptr %264, i32 12
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #17, !srcloc !10
  %269 = lshr i32 %266, 21
  %270 = and i32 %269, 24
  %271 = lshr i32 -1, %270
  %272 = xor i32 %271, -1
  %273 = and i32 %268, %272
  %274 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %275 = load i32, ptr @nr_cpu_ids, align 4
  %276 = icmp ult i32 %274, %275
  br i1 %276, label %277, label %348

277:                                              ; preds = %253
  %278 = load ptr, ptr @gic_rdists, align 4
  br label %279

279:                                              ; preds = %311, %277
  %280 = phi i32 [ %312, %311 ], [ %275, %277 ]
  %281 = phi ptr [ %313, %311 ], [ %278, %277 ]
  %282 = phi i32 [ %314, %311 ], [ %274, %277 ]
  %283 = load ptr, ptr %281, align 8
  %284 = ptrtoint ptr %283 to i32
  %285 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %282
  %286 = load i32, ptr %285, align 4
  %287 = add i32 %286, %284
  %288 = inttoptr i32 %287 to ptr
  %289 = getelementptr inbounds %struct.anon, ptr %288, i32 0, i32 1
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %311, label %292

292:                                              ; preds = %279
  %293 = tail call ptr @llvm.thread.pointer() #17
  %294 = getelementptr inbounds %struct.thread_info, ptr %293, i32 0, i32 2
  %295 = load i32, ptr %294, align 8
  %296 = icmp eq i32 %282, %295
  br i1 %296, label %311, label %297

297:                                              ; preds = %292
  %298 = getelementptr i8, ptr %290, i32 8
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %298) #17, !srcloc !10
  %300 = getelementptr i8, ptr %290, i32 12
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %300) #17, !srcloc !10
  %302 = lshr i32 %299, 21
  %303 = and i32 %302, 24
  %304 = lshr i32 -1, %303
  %305 = xor i32 %304, -1
  %306 = and i32 %301, %305
  %307 = icmp eq i32 %273, %306
  br i1 %307, label %316, label %308

308:                                              ; preds = %297
  %309 = load ptr, ptr @gic_rdists, align 4
  %310 = load i32, ptr @nr_cpu_ids, align 4
  br label %311

311:                                              ; preds = %308, %292, %279
  %312 = phi i32 [ %310, %308 ], [ %280, %279 ], [ %280, %292 ]
  %313 = phi ptr [ %309, %308 ], [ %281, %279 ], [ %281, %292 ]
  %314 = tail call i32 @cpumask_next(i32 noundef %282, ptr noundef nonnull @__cpu_possible_mask) #19
  %315 = icmp ult i32 %314, %312
  br i1 %315, label %279, label %348

316:                                              ; preds = %297
  %317 = getelementptr i8, ptr %290, i32 131184
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #17, !srcloc !10
  %319 = getelementptr i8, ptr %290, i32 131188
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %319) #17, !srcloc !10
  %321 = zext i32 %320 to i64
  %322 = shl nuw i64 %321, 32
  %323 = and i64 %322, -4503603922337792
  %324 = load ptr, ptr @gic_rdists, align 4
  %325 = load ptr, ptr %324, align 8
  %326 = ptrtoint ptr %325 to i32
  %327 = load i32, ptr %285, align 4
  %328 = add i32 %327, %326
  %329 = inttoptr i32 %328 to ptr
  %330 = getelementptr inbounds %struct.anon, ptr %329, i32 0, i32 6
  %331 = load ptr, ptr %330, align 4
  %332 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %333 = inttoptr i32 %332 to ptr
  %334 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %333) #5, !srcloc !9
  %335 = add i32 %334, %326
  %336 = inttoptr i32 %335 to ptr
  %337 = getelementptr inbounds %struct.anon, ptr %336, i32 0, i32 6
  store ptr %331, ptr %337, align 4
  %338 = load ptr, ptr %324, align 8
  %339 = ptrtoint ptr %338 to i32
  %340 = load i32, ptr %285, align 4
  %341 = add i32 %340, %339
  %342 = inttoptr i32 %341 to ptr
  %343 = getelementptr inbounds %struct.anon, ptr %342, i32 0, i32 5
  %344 = load ptr, ptr %343, align 8
  store ptr %344, ptr %262, align 4
  %345 = icmp sgt i64 %323, -1
  %346 = lshr exact i64 %323, 32
  %347 = trunc i64 %346 to i32
  br i1 %345, label %348, label %540

348:                                              ; preds = %316, %311, %253
  %349 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %350 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %349, i32 noundef 2848, i32 noundef 4) #20
  %351 = load ptr, ptr @gic_rdists, align 4
  %352 = load ptr, ptr %351, align 8
  %353 = ptrtoint ptr %352 to i32
  %354 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %355 = inttoptr i32 %354 to ptr
  %356 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %355) #5, !srcloc !9
  %357 = add i32 %356, %353
  %358 = inttoptr i32 %357 to ptr
  %359 = getelementptr inbounds %struct.anon, ptr %358, i32 0, i32 5
  store ptr %350, ptr %359, align 8
  %360 = load ptr, ptr %351, align 8
  %361 = ptrtoint ptr %360 to i32
  %362 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %363 = inttoptr i32 %362 to ptr
  %364 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %363) #5, !srcloc !9
  %365 = add i32 %364, %361
  %366 = inttoptr i32 %365 to ptr
  %367 = getelementptr inbounds %struct.anon, ptr %366, i32 0, i32 5
  %368 = load ptr, ptr %367, align 8
  %369 = icmp eq ptr %368, null
  br i1 %369, label %558, label %370

370:                                              ; preds = %348
  %371 = getelementptr inbounds %struct.anon, ptr %366, i32 0, i32 1
  %372 = load ptr, ptr %371, align 4
  %373 = getelementptr i8, ptr %372, i32 8
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %373) #17, !srcloc !10
  %375 = getelementptr i8, ptr %372, i32 12
  %376 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %375) #17, !srcloc !10
  %377 = lshr i32 %374, 21
  %378 = and i32 %377, 24
  %379 = lshr i32 -1, %378
  %380 = xor i32 %379, -1
  %381 = and i32 %376, %380
  %382 = load ptr, ptr @its_nodes, align 4
  %383 = icmp eq ptr %382, @its_nodes
  br i1 %383, label %449, label %384

384:                                              ; preds = %434, %370
  %385 = phi ptr [ %435, %434 ], [ %382, %370 ]
  %386 = getelementptr i8, ptr %385, i32 240
  %387 = load i64, ptr %386, align 8
  %388 = and i64 %387, 1099511627776
  %389 = icmp eq i64 %388, 0
  %390 = and i64 %387, 6597069766656
  %391 = icmp eq i64 %390, 0
  %392 = or i1 %389, %391
  br i1 %392, label %434, label %393

393:                                              ; preds = %384
  %394 = getelementptr i8, ptr %385, i32 260
  %395 = load i32, ptr %394, align 4
  %396 = lshr i64 %387, 38
  %397 = trunc i64 %396 to i32
  %398 = and i32 %397, 24
  %399 = lshr i32 -1, %398
  %400 = xor i32 %399, -1
  %401 = and i32 %395, %400
  %402 = icmp eq i32 %381, %401
  br i1 %402, label %403, label %434

403:                                              ; preds = %393
  %404 = getelementptr i8, ptr %385, i32 88
  %405 = load i64, ptr %404, align 8
  %406 = icmp sgt i64 %405, -1
  br i1 %406, label %434, label %407

407:                                              ; preds = %403
  %408 = getelementptr i8, ptr %385, i32 80
  %409 = load ptr, ptr %408, align 8
  %410 = load ptr, ptr @gic_rdists, align 4
  %411 = load ptr, ptr %410, align 8
  %412 = ptrtoint ptr %411 to i32
  %413 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %414 = inttoptr i32 %413 to ptr
  %415 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %414) #5, !srcloc !9
  %416 = add i32 %415, %412
  %417 = inttoptr i32 %416 to ptr
  %418 = getelementptr inbounds %struct.anon, ptr %417, i32 0, i32 6
  store ptr %409, ptr %418, align 4
  %419 = and i64 %405, 4611686018427387904
  %420 = icmp eq i64 %419, 0
  %421 = select i1 %420, i64 -9223372036854775808, i64 -9187343239835811840
  %422 = lshr i64 %405, 8
  %423 = and i64 %422, 3
  %424 = shl nuw nsw i64 %423, 53
  %425 = or i64 %421, %424
  %426 = icmp eq i64 %423, 2
  br i1 %426, label %427, label %432

427:                                              ; preds = %407
  %428 = and i64 %405, 281474976645120
  %429 = shl i64 %405, 36
  %430 = and i64 %429, 4222124650659840
  %431 = or i64 %430, %428
  br label %437

432:                                              ; preds = %407
  %433 = and i64 %405, 281474976706560
  br label %437

434:                                              ; preds = %403, %393, %384
  %435 = load ptr, ptr %385, align 4
  %436 = icmp eq ptr %435, @its_nodes
  br i1 %436, label %449, label %384

437:                                              ; preds = %432, %427
  %438 = phi i64 [ %431, %427 ], [ %433, %432 ]
  %439 = and i64 %438, 4503599627366400
  %440 = or i64 %439, %425
  %441 = lshr i64 %405, 52
  %442 = and i64 %441, 896
  %443 = and i64 %405, 3199
  %444 = or i64 %442, %443
  %445 = or i64 %444, %439
  %446 = trunc i64 %445 to i32
  %447 = lshr i64 %440, 32
  %448 = trunc i64 %447 to i32
  br label %540

449:                                              ; preds = %434, %370
  %450 = getelementptr i8, ptr %237, i32 131184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %450, i32 0) #17, !srcloc !11
  %451 = getelementptr i8, ptr %237, i32 131188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %451, i32 4194304) #17, !srcloc !11
  %452 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %450) #17, !srcloc !10
  %453 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %451) #17, !srcloc !10
  %454 = lshr i32 %453, 21
  %455 = lshr i32 %453, 27
  %456 = and i32 %455, 7
  %457 = trunc i32 %454 to i2
  switch i2 %457, label %460 [
    i2 -2, label %459
    i2 1, label %458
  ]

458:                                              ; preds = %449
  br label %460

459:                                              ; preds = %449
  br label %460

460:                                              ; preds = %459, %458, %449
  %461 = phi i32 [ 65536, %459 ], [ 16384, %458 ], [ 4096, %449 ]
  %462 = phi i64 [ 18014398509481984, %459 ], [ 9007199254740992, %458 ], [ 0, %449 ]
  %463 = zext i32 %456 to i64
  %464 = shl nuw nsw i64 %463, 59
  %465 = or i64 %462, %464
  %466 = shl nuw nsw i32 %456, 3
  %467 = add nuw nsw i32 %466, 8
  %468 = udiv i32 %461, %467
  %469 = load ptr, ptr @gic_rdists, align 4
  %470 = getelementptr inbounds %struct.rdists, ptr %469, i32 0, i32 8
  %471 = load i8, ptr %470, align 1, !range !14
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %483, label %473

473:                                              ; preds = %460
  %474 = getelementptr inbounds %struct.rdists, ptr %469, i32 0, i32 5
  %475 = load i32, ptr %474, align 4
  %476 = and i32 %475, 128
  %477 = icmp eq i32 %476, 0
  %478 = and i32 %475, 31
  %479 = add nuw nsw i32 %478, 1
  %480 = select i1 %477, i32 16, i32 %479
  %481 = lshr i32 %468, %480
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %495

483:                                              ; preds = %473, %460
  %484 = phi i32 [ 16, %460 ], [ %480, %473 ]
  %485 = or i64 %465, 36028797018963968
  %486 = shl nuw i32 1, %484
  %487 = add nsw i32 %468, -1
  %488 = add i32 %487, %486
  %489 = udiv i32 %488, %468
  %490 = shl nuw nsw i32 %489, 3
  %491 = add nsw i32 %461, -1
  %492 = add nuw nsw i32 %491, %490
  %493 = udiv i32 %492, %461
  %494 = zext i32 %493 to i64
  br label %495

495:                                              ; preds = %483, %473
  %496 = phi i64 [ %494, %483 ], [ 1, %473 ]
  %497 = phi i64 [ %485, %483 ], [ %465, %473 ]
  %498 = add nuw nsw i64 %496, 127
  %499 = and i64 %498, 127
  %500 = trunc i64 %496 to i32
  %501 = mul i32 %461, %500
  %502 = add i32 %501, -1
  %503 = icmp eq i32 %502, 4095
  %504 = lshr i32 %502, 12
  %505 = tail call i32 @llvm.ctlz.i32(i32 %504, i1 false) #17, !range !15
  %506 = sub nuw nsw i32 32, %505
  %507 = select i1 %503, i32 0, i32 %506
  %508 = tail call ptr @__alloc_pages(i32 noundef 2848, i32 noundef %507, i32 noundef 0, ptr noundef null) #17
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %512

510:                                              ; preds = %495
  %511 = load ptr, ptr @gic_rdists, align 4
  br label %558

512:                                              ; preds = %495
  %513 = zext i32 %461 to i64
  %514 = tail call ptr @page_address(ptr noundef nonnull %508) #17
  %515 = load ptr, ptr @gic_rdists, align 4
  %516 = load ptr, ptr %515, align 8
  %517 = ptrtoint ptr %516 to i32
  %518 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %519 = inttoptr i32 %518 to ptr
  %520 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %519) #5, !srcloc !9
  %521 = add i32 %520, %517
  %522 = inttoptr i32 %521 to ptr
  %523 = getelementptr inbounds %struct.anon, ptr %522, i32 0, i32 6
  store ptr %514, ptr %523, align 4
  %524 = tail call ptr @page_address(ptr noundef nonnull %508) #17
  %525 = ptrtoint ptr %524 to i32
  %526 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %525, i32 -2130706432, i32 8454144) #21, !srcloc !16
  %527 = zext i32 %526 to i64
  %528 = add nuw nsw i64 %513, 4294967295
  %529 = and i64 %528, %527
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %532, label %531, !prof !13

531:                                              ; preds = %512
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2904, i32 noundef 9, ptr noundef null) #17
  br label %532

532:                                              ; preds = %531, %512
  %533 = and i64 %527, 4294963200
  %534 = or i64 %497, %499
  %535 = or i64 %534, %533
  %536 = or i64 %535, -9218868437227403904
  %537 = trunc i64 %536 to i32
  %538 = lshr i64 %536, 32
  %539 = trunc i64 %538 to i32
  br label %540

540:                                              ; preds = %532, %437, %316
  %541 = phi i32 [ %318, %316 ], [ %446, %437 ], [ %537, %532 ]
  %542 = phi i32 [ %347, %316 ], [ %448, %437 ], [ %539, %532 ]
  %543 = getelementptr i8, ptr %237, i32 131184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %543, i32 %541) #17, !srcloc !11
  %544 = getelementptr i8, ptr %237, i32 131188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %544, i32 %542) #17, !srcloc !11
  %545 = tail call ptr @llvm.thread.pointer() #17
  %546 = getelementptr inbounds %struct.thread_info, ptr %545, i32 0, i32 2
  %547 = load i32, ptr %546, align 8
  %548 = load ptr, ptr @gic_rdists, align 4
  %549 = load ptr, ptr %548, align 8
  %550 = ptrtoint ptr %549 to i32
  %551 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %552 = inttoptr i32 %551 to ptr
  %553 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %552) #5, !srcloc !9
  %554 = add i32 %553, %550
  %555 = inttoptr i32 %554 to ptr
  %556 = getelementptr inbounds %struct.anon, ptr %555, i32 0, i32 5
  %557 = load ptr, ptr %556, align 8
  tail call void @_set_bit(i32 noundef %547, ptr noundef %557) #17
  br label %562

558:                                              ; preds = %510, %348
  %559 = phi ptr [ %511, %510 ], [ %351, %348 ]
  %560 = getelementptr inbounds %struct.rdists, ptr %559, i32 0, i32 8
  store i8 0, ptr %560, align 1
  %561 = getelementptr inbounds %struct.rdists, ptr %559, i32 0, i32 7
  store i8 0, ptr %561, align 4
  br label %562

562:                                              ; preds = %558, %540, %227
  tail call void asm sideeffect "dsb sy", "~{memory}"() #17, !srcloc !17
  %563 = load ptr, ptr @gic_rdists, align 4
  br label %564

564:                                              ; preds = %562, %122
  %565 = phi ptr [ %123, %122 ], [ %563, %562 ]
  %566 = load ptr, ptr %565, align 8
  %567 = ptrtoint ptr %566 to i32
  %568 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %569 = inttoptr i32 %568 to ptr
  %570 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %569) #5, !srcloc !9
  %571 = add i32 %570, %567
  %572 = inttoptr i32 %571 to ptr
  %573 = getelementptr inbounds %struct.anon, ptr %572, i32 0, i32 4
  %574 = load i64, ptr %573, align 8
  %575 = or i64 %574, 1
  store i64 %575, ptr %573, align 8
  %576 = tail call ptr @llvm.thread.pointer() #17
  %577 = getelementptr inbounds %struct.thread_info, ptr %576, i32 0, i32 2
  %578 = load i32, ptr %577, align 8
  %579 = load ptr, ptr %565, align 8
  %580 = ptrtoint ptr %579 to i32
  %581 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %582 = inttoptr i32 %581 to ptr
  %583 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %582) #5, !srcloc !9
  %584 = add i32 %583, %580
  %585 = inttoptr i32 %584 to ptr
  %586 = getelementptr inbounds %struct.anon, ptr %585, i32 0, i32 4
  %587 = load i64, ptr %586, align 8
  %588 = and i64 %587, 2
  %589 = icmp eq i64 %588, 0
  %590 = select i1 %589, ptr @.str.11, ptr @.str.10
  %591 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %578, ptr noundef nonnull %590, ptr noundef nonnull %1) #18
  br label %592

592:                                              ; preds = %564, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  call void @_raw_spin_lock(ptr noundef nonnull @its_lock) #17
  %593 = load ptr, ptr @its_nodes, align 4
  %594 = icmp eq ptr %593, @its_nodes
  br i1 %594, label %600, label %595

595:                                              ; preds = %595, %592
  %596 = phi ptr [ %598, %595 ], [ %593, %592 ]
  %597 = getelementptr i8, ptr %596, i32 -24
  call fastcc void @its_cpu_init_collection(ptr noundef %597) #17
  %598 = load ptr, ptr %596, align 4
  %599 = icmp eq ptr %598, @its_nodes
  br i1 %599, label %600, label %595

600:                                              ; preds = %595, %592
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %601 = load i16, ptr @its_lock, align 4
  %602 = add i16 %601, 1
  store i16 %602, ptr @its_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %609

603:                                              ; preds = %64, %55, %21
  %604 = phi ptr [ %23, %21 ], [ %48, %64 ], [ %48, %55 ]
  %605 = phi ptr [ @.str.4, %21 ], [ @.str.7, %64 ], [ @.str.6, %55 ]
  %606 = phi i32 [ -6, %21 ], [ -16, %64 ], [ -110, %55 ]
  %607 = load i32, ptr %604, align 8
  %608 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %605, i32 noundef %607) #18
  br label %609

609:                                              ; preds = %603, %600, %0
  %610 = phi i32 [ %606, %603 ], [ 0, %600 ], [ 0, %0 ]
  ret i32 %610
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @its_lpi_memreserve_init() local_unnamed_addr #2 section ".init.text" {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %2 = and i32 %1, 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %0
  %5 = load volatile ptr, ptr @its_nodes, align 4
  %6 = icmp eq ptr %5, @its_nodes
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @gic_rdists, align 4
  %9 = getelementptr inbounds %struct.rdists, ptr %8, i32 0, i32 6
  store i32 -1, ptr %9, align 8
  %10 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @its_cpu_memreserve_lpi, ptr noundef null, i1 noundef zeroext false) #17
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @gic_rdists, align 4
  %14 = getelementptr inbounds %struct.rdists, ptr %13, i32 0, i32 6
  store i32 %10, ptr %14, align 8
  br label %15

15:                                               ; preds = %12, %7, %4, %0
  %16 = phi i32 [ 0, %12 ], [ 0, %0 ], [ 0, %4 ], [ %10, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_cpu_memreserve_lpi(i32 noundef %0) #0 {
  %2 = load ptr, ptr @gic_rdists, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #5, !srcloc !9
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 4
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 4
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %87

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !22

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 5242, i32 noundef 9, ptr noundef null) #17
  br label %65

19:                                               ; preds = %14
  %20 = and i64 %11, 2
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @page_address(ptr noundef nonnull %16) #17
  %24 = load i32, ptr @lpi_id_bits, align 4
  %25 = shl nuw i32 1, %24
  %26 = lshr i32 %25, 3
  %27 = add nuw nsw i32 %26, 65535
  %28 = and i32 %27, 1073676288
  %29 = add nsw i32 %28, -1
  %30 = lshr i32 %29, 12
  %31 = tail call i32 @llvm.ctlz.i32(i32 %30, i1 true) #17, !range !15
  %32 = sub nuw nsw i32 32, %31
  %33 = ptrtoint ptr %23 to i32
  tail call void @free_pages(i32 noundef %33, i32 noundef %32) #17
  %34 = load ptr, ptr @gic_rdists, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #5, !srcloc !9
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 2
  store ptr null, ptr %42, align 8
  br label %65

43:                                               ; preds = %19
  %44 = load ptr, ptr @mem_map, align 4
  %45 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %46 = load i32, ptr @lpi_id_bits, align 4
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %43
  %51 = shl nuw i32 1, %46
  %52 = lshr i32 %51, 3
  %53 = add nuw nsw i32 %52, 65535
  %54 = and i32 %53, 1073676288
  %55 = ptrtoint ptr %16 to i32
  %56 = ptrtoint ptr %44 to i32
  %57 = sub i32 %55, %56
  %58 = lshr exact i32 %57, 5
  %59 = add i32 %58, %45
  %60 = shl i32 %59, 12
  %61 = zext i32 %54 to i64
  %62 = tail call i32 @efi_mem_reserve_persistent(i32 noundef %60, i64 noundef %61) #17
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64, !prof !13

64:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 5256, i32 noundef 9, ptr noundef null) #17
  br label %65

65:                                               ; preds = %64, %50, %43, %22, %18
  %66 = phi i32 [ -12, %18 ], [ 0, %22 ], [ 0, %64 ], [ 0, %50 ], [ 0, %43 ]
  %67 = load i32, ptr @cpus_booted_once_mask, align 4
  %68 = load i32, ptr @__cpu_possible_mask, align 4
  %69 = xor i32 %68, %67
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load ptr, ptr @system_wq, align 4
  %74 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %73, ptr noundef nonnull @rdist_memreserve_cpuhp_cleanup_work) #17
  br label %75

75:                                               ; preds = %72, %65
  %76 = load ptr, ptr @gic_rdists, align 4
  %77 = load ptr, ptr %76, align 8
  %78 = ptrtoint ptr %77 to i32
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #5, !srcloc !9
  %82 = add i32 %81, %78
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.anon, ptr %83, i32 0, i32 4
  %85 = load i64, ptr %84, align 8
  %86 = or i64 %85, 4
  store i64 %86, ptr %84, align 8
  br label %87

87:                                               ; preds = %75, %1
  %88 = phi i32 [ %66, %75 ], [ 0, %1 ]
  ret i32 %88
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @its_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 section ".init.text" {
  store ptr %1, ptr @gic_rdists, align 4
  store ptr %2, ptr @its_parent, align 4
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ne ptr %9, @of_fwnode_ops
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = icmp eq ptr %11, null
  %13 = or i1 %12, %10
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call fastcc void @its_of_probe(ptr noundef nonnull %11) #22
  br label %15

15:                                               ; preds = %14, %7, %3
  %16 = load volatile ptr, ptr @its_nodes, align 4
  %17 = icmp eq ptr %16, @its_nodes
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #18
  br label %109

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @allocate_lpi_tables() #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %109

23:                                               ; preds = %20
  %24 = load ptr, ptr @its_nodes, align 4
  %25 = icmp eq ptr %24, @its_nodes
  br i1 %25, label %45, label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %42, %26 ], [ %24, %23 ]
  %28 = phi i32 [ %35, %26 ], [ 0, %23 ]
  %29 = phi i1 [ %41, %26 ], [ false, %23 ]
  %30 = getelementptr i8, ptr %27, i32 240
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = lshr i32 %32, 1
  %34 = and i32 %33, 1
  %35 = or i32 %34, %28
  %36 = lshr i64 %31, 40
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, 1
  %39 = zext i1 %29 to i32
  %40 = or i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = load ptr, ptr %27, align 4
  %43 = icmp eq ptr %42, @its_nodes
  br i1 %43, label %44, label %26

44:                                               ; preds = %26
  br i1 %41, label %51, label %45

45:                                               ; preds = %44, %23
  %46 = phi i32 [ %35, %44 ], [ 0, %23 ]
  %47 = getelementptr inbounds %struct.rdists, ptr %1, i32 0, i32 8
  %48 = load i8, ptr %47, align 1, !range !14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50, !prof !13

50:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 5569, i32 noundef 9, ptr noundef null) #17
  store i8 0, ptr %47, align 1
  br label %51

51:                                               ; preds = %50, %45, %44
  %52 = phi i32 [ %35, %44 ], [ %46, %45 ], [ %46, %50 ]
  %53 = phi ptr [ @its_sgi_domain_ops, %44 ], [ null, %45 ], [ null, %50 ]
  %54 = getelementptr inbounds %struct.rdists, ptr %1, i32 0, i32 7
  %55 = load i8, ptr %54, align 4, !range !14
  %56 = zext i8 %55 to i32
  %57 = and i32 %52, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %108, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr @gic_rdists, align 4
  %61 = getelementptr inbounds %struct.rdists, ptr %60, i32 0, i32 9
  %62 = load i8, ptr %61, align 2, !range !14
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #18
  br label %103

66:                                               ; preds = %59
  %67 = load ptr, ptr @its_nodes, align 4
  %68 = getelementptr i8, ptr %67, i32 -24
  %69 = load i32, ptr @nr_cpu_ids, align 4
  %70 = add i32 %69, -1
  %71 = icmp eq i32 %70, 0
  %72 = tail call i32 @llvm.ctlz.i32(i32 %70, i1 false) #17, !range !15
  %73 = sub nuw nsw i32 32, %72
  %74 = shl nuw i32 1, %73
  %75 = select i1 %71, i32 1, i32 %74
  %76 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %75, i32 4) #17
  %77 = extractvalue { i32, i1 } %76, 1
  br i1 %77, label %78, label %79, !prof !22

78:                                               ; preds = %66
  store ptr null, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 2), align 4
  br label %106

79:                                               ; preds = %66
  %80 = extractvalue { i32, i1 } %76, 0
  %81 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %80, i32 noundef 3520) #23
  store ptr %81, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 2), align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %106, label %83

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %67, i32 240
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = lshr i32 %86, 13
  %88 = and i32 %87, 31
  %89 = xor i32 %88, 31
  %90 = lshr i32 -1, %89
  %91 = tail call fastcc ptr @its_create_device(ptr noundef %68, i32 noundef %90, i32 noundef %75, i1 noundef zeroext false) #17
  store ptr %91, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %94) #17
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #18
  br label %106

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.its_device, ptr %91, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = icmp ugt i32 %75, %98
  br i1 %99, label %100, label %101, !prof !22

100:                                              ; preds = %96
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-gic-v3-its.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4945, 0\0A.popsection", ""() #17, !srcloc !23
  unreachable

101:                                              ; preds = %96
  store i32 0, ptr @vpe_proxy, align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 3), align 4
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %90, i32 noundef %98) #18
  br label %103

103:                                              ; preds = %101, %64
  %104 = tail call i32 @its_init_v4(ptr noundef %2, ptr noundef nonnull @its_vpe_domain_ops, ptr noundef %53) #17
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103, %93, %79, %78
  store i8 0, ptr %54, align 4
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #18
  br label %108

108:                                              ; preds = %106, %103, %51
  tail call void @register_syscore_ops(ptr noundef nonnull @its_syscore_ops) #17
  br label %109

109:                                              ; preds = %108, %20, %18
  %110 = phi i32 [ -6, %18 ], [ 0, %108 ], [ %21, %20 ]
  ret i32 %110
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @its_of_probe(ptr noundef %0) unnamed_addr #2 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !24
  %3 = tail call ptr @of_find_matching_node_and_match(ptr noundef %0, ptr noundef nonnull @its_device_id, ptr noundef null) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %17, %1
  %6 = phi ptr [ %18, %17 ], [ %3, %1 ]
  %7 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %6) #17
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = call ptr @of_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.17, ptr noundef null) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = call i32 @of_address_to_resource(ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %2) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call fastcc i32 @its_reset_one(ptr noundef nonnull %2) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %14, %11, %8, %5
  %18 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %6, ptr noundef nonnull @its_device_id, ptr noundef null) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5

20:                                               ; preds = %17, %1
  %21 = call ptr @of_find_matching_node_and_match(ptr noundef %0, ptr noundef nonnull @its_device_id, ptr noundef null) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %38, %20
  %24 = phi ptr [ %39, %38 ], [ %21, %20 ]
  %25 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %24) #17
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = call ptr @of_find_property(ptr noundef nonnull %24, ptr noundef nonnull @.str.17, ptr noundef null) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %24) #18
  br label %38

31:                                               ; preds = %26
  %32 = call i32 @of_address_to_resource(ptr noundef nonnull %24, i32 noundef 0, ptr noundef nonnull %2) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %24) #18
  br label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.device_node, ptr %24, i32 0, i32 3
  call fastcc void @its_probe_one(ptr noundef nonnull %2, ptr noundef %37) #22
  br label %38

38:                                               ; preds = %36, %34, %29, %23
  %39 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %24, ptr noundef nonnull @its_device_id, ptr noundef null) #17
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %23

41:                                               ; preds = %38, %20, %14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @allocate_lpi_tables() unnamed_addr #2 section ".init.text" {
  %1 = load ptr, ptr @gic_rdists, align 4
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #5, !srcloc !9
  %7 = add i32 %6, %3
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #17, !srcloc !10
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %0
  %15 = load ptr, ptr @gic_rdists, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #5, !srcloc !9
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 112
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #17, !srcloc !10
  %27 = getelementptr i8, ptr %24, i32 116
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #17, !srcloc !10
  %29 = and i32 %26, -4096
  %30 = load i32, ptr @lpi_id_bits, align 4
  %31 = shl nuw i32 1, %30
  %32 = add nuw i32 %31, 65535
  %33 = and i32 %32, -65536
  %34 = tail call fastcc zeroext i1 @gic_check_reserved_range(i32 noundef %29, i32 noundef %33) #17
  br i1 %34, label %35, label %41

35:                                               ; preds = %14
  %36 = load ptr, ptr @gic_rdists, align 4
  %37 = getelementptr inbounds %struct.rdists, ptr %36, i32 0, i32 3
  %38 = load i64, ptr %37, align 8
  %39 = or i64 %38, 3
  store i64 %39, ptr %37, align 8
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #18
  br label %41

41:                                               ; preds = %35, %14, %0
  %42 = tail call fastcc i32 @its_setup_lpi_prop_table() #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %54, %44
  %49 = phi i32 [ %63, %54 ], [ %45, %44 ]
  %50 = tail call fastcc ptr @its_allocate_pending_table(i32 noundef 2048)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %49) #18
  br label %66

54:                                               ; preds = %48
  %55 = load ptr, ptr @gic_rdists, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = ptrtoint ptr %56 to i32
  %58 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = inttoptr i32 %60 to ptr
  %62 = getelementptr inbounds %struct.anon, ptr %61, i32 0, i32 2
  store ptr %50, ptr %62, align 8
  %63 = tail call i32 @cpumask_next(i32 noundef %49, ptr noundef nonnull @__cpu_possible_mask) #19
  %64 = load i32, ptr @nr_cpu_ids, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %48, label %66

66:                                               ; preds = %54, %52, %44, %41
  %67 = phi i32 [ %42, %41 ], [ -12, %52 ], [ 0, %44 ], [ 0, %54 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @its_init_v4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gic_check_reserved_range(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %8 = add i32 %0, -1
  %9 = add i32 %8, %1
  store i32 %9, ptr %6, align 4
  store i64 0, ptr %7, align 8
  call void @__next_mem_range(ptr noundef nonnull %7, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #17
  %10 = load i64, ptr %7, align 8
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %21, label %12

12:                                               ; preds = %18, %2
  %13 = load i32, ptr %4, align 4
  %14 = icmp ugt i32 %13, %0
  %15 = load i32, ptr %5, align 4
  %16 = icmp ugt i32 %9, %15
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  call void @__next_mem_range(ptr noundef nonnull %7, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #17
  %19 = load i64, ptr %7, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %12

21:                                               ; preds = %18, %2
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %3, ptr noundef nonnull %6) #18
  call void @add_taint(i32 noundef 10, i32 noundef 0) #17
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi i1 [ false, %21 ], [ true, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @its_clear_vpend_valid(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 120
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #17, !srcloc !10
  %6 = zext i32 %5 to i64
  %7 = getelementptr i8, ptr %0, i32 124
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !10
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  %11 = and i64 %10, 9223372032559808512
  %12 = or i64 %11, %6
  %13 = xor i64 %1, -1
  %14 = and i64 %12, %13
  %15 = or i64 %14, %2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !10
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = and i32 %16, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %19) #17, !srcloc !11
  br label %20

20:                                               ; preds = %18, %3
  %21 = trunc i64 %15 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %21) #17, !srcloc !11
  %22 = lshr i64 %15, 32
  %23 = trunc i64 %22 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %23) #17, !srcloc !11
  br label %24

24:                                               ; preds = %31, %20
  %25 = phi i32 [ 1000000, %20 ], [ %32, %31 ]
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #17, !srcloc !10
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !10
  %28 = zext i32 %27 to i64
  %29 = and i64 %28, 268435456
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = add nsw i32 %25, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !26
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #17
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %24

35:                                               ; preds = %31
  %36 = zext i32 %26 to i64
  %37 = shl nuw i64 %28, 32
  %38 = or i64 %37, %36
  %39 = tail call i32 @___ratelimit(ptr noundef nonnull @its_clear_vpend_valid._rs, ptr noundef nonnull @__func__.its_clear_vpend_valid) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #18
  br label %43

43:                                               ; preds = %41, %35
  %44 = or i64 %38, 2305843009213693952
  br label %49

45:                                               ; preds = %24
  %46 = zext i32 %26 to i64
  %47 = shl nuw i64 %28, 32
  %48 = or i64 %47, %46
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i64 [ %44, %43 ], [ %48, %45 ]
  ret i64 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @its_cpu_init_collection(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.its_cmd_desc, align 4
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = tail call ptr @llvm.thread.pointer() #17
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 17
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 4
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = tail call ptr @of_get_cpu_node(i32 noundef %6, ptr noundef null) #17
  %13 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %62

16:                                               ; preds = %11, %1
  %17 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #17, !srcloc !10
  %21 = getelementptr i8, ptr %18, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #17, !srcloc !10
  %23 = and i32 %20, 524288
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr @gic_rdists, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #5
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  br i1 %24, label %37, label %33

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  br label %47

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #17, !srcloc !10
  %42 = zext i32 %41 to i64
  %43 = getelementptr i8, ptr %39, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #17, !srcloc !10
  %45 = shl nuw nsw i64 %42, 8
  %46 = and i64 %45, 4294901760
  br label %47

47:                                               ; preds = %37, %33
  %48 = phi i64 [ %36, %33 ], [ %46, %37 ]
  %49 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr %struct.its_collection, ptr %50, i32 %6
  store i64 %48, ptr %51, align 8
  %52 = trunc i32 %6 to i16
  %53 = load ptr, ptr %49, align 8
  %54 = getelementptr %struct.its_collection, ptr %53, i32 %6, i32 1
  store i16 %52, ptr %54, align 8
  %55 = load ptr, ptr %49, align 8
  %56 = getelementptr %struct.its_collection, ptr %55, i32 %6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %57 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %57, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %56, ptr %3, align 4
  %58 = getelementptr inbounds %struct.anon.85, ptr %3, i32 0, i32 1
  store i32 1, ptr %58, align 4
  call fastcc void @its_send_single_command(ptr noundef %0, ptr noundef nonnull @its_build_mapc_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  %59 = load ptr, ptr %49, align 8
  %60 = getelementptr %struct.its_collection, ptr %59, i32 %6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  %61 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %61, i8 0, i32 16, i1 false) #17, !annotation !24
  store ptr %60, ptr %2, align 4
  call fastcc void @its_send_single_command(ptr noundef %0, ptr noundef nonnull @its_build_invall_cmd, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  br label %62

62:                                               ; preds = %47, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @its_send_single_command(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %5 = tail call fastcc ptr @its_allocate_entry(ptr noundef %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #17
  br label %61

8:                                                ; preds = %3
  %9 = tail call ptr %1(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #17
  %10 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 17
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %15(ptr noundef nonnull %5, i32 noundef 32) #17
  br label %17

16:                                               ; preds = %8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !27
  br label %17

17:                                               ; preds = %16, %14
  %18 = icmp eq ptr %9, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %17
  %20 = tail call fastcc ptr @its_allocate_entry(ptr noundef %0)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, -256
  %25 = or i64 %24, 5
  store i64 %25, ptr %20, align 8
  %26 = load i64, ptr %9, align 8
  %27 = getelementptr [4 x i64], ptr %20, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, -4503599627304961
  %30 = and i64 %26, 4503599627304960
  %31 = or i64 %29, %30
  store i64 %31, ptr %27, align 8
  %32 = load i64, ptr %10, align 8
  %33 = and i64 %32, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  %36 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %36(ptr noundef nonnull %20, i32 noundef 32) #17
  br label %38

37:                                               ; preds = %22
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !27
  br label %38

38:                                               ; preds = %37, %35, %19, %17
  %39 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr i8, ptr %40, i32 144
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #17, !srcloc !10
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 7
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = ptrtoint ptr %45 to i32
  %49 = ptrtoint ptr %47 to i32
  %50 = sub i32 %48, %49
  %51 = load ptr, ptr %39, align 8
  %52 = getelementptr i8, ptr %51, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #17, !srcloc !11
  %53 = load ptr, ptr %44, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #17
  %54 = tail call fastcc i32 @its_wait_for_range_completion(ptr noundef %0, i64 noundef %43, ptr noundef %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %38
  %57 = tail call i32 @___ratelimit(ptr noundef nonnull @its_send_single_command._rs, ptr noundef nonnull @__func__.its_send_single_command) #17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %1) #18
  br label %61

61:                                               ; preds = %59, %56, %38, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @its_build_mapc_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #12 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, -256
  %6 = or i64 %5, 9
  store i64 %6, ptr %1, align 8
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.its_collection, ptr %7, i32 0, i32 1
  %9 = load i16, ptr %8, align 8
  %10 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %11 = zext i16 %9 to i64
  %12 = load i64, ptr %10, align 8
  %13 = and i64 %12, -65536
  %14 = or i64 %13, %11
  store i64 %14, ptr %10, align 8
  %15 = load ptr, ptr %2, align 4
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %14, -4503599627304961
  %18 = and i64 %16, 4503599627304960
  %19 = or i64 %18, %17
  store i64 %19, ptr %10, align 8
  %20 = getelementptr inbounds %struct.anon.85, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = and i64 %19, 9223372036854775807
  %24 = select i1 %22, i64 0, i64 -9223372036854775808
  %25 = or i64 %24, %23
  store i64 %25, ptr %10, align 8
  %26 = load ptr, ptr %2, align 4
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @its_allocate_entry(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %5 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = lshr exact i32 %9, 5
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr i8, ptr %11, i32 144
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #17, !srcloc !10
  %14 = lshr i32 %13, 5
  %15 = add nuw nsw i32 %10, 1
  %16 = and i32 %15, 2047
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %18, label %42

18:                                               ; preds = %27, %1
  %19 = phi i32 [ %20, %27 ], [ 1000000, %1 ]
  %20 = add nsw i32 %19, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = tail call i32 @___ratelimit(ptr noundef nonnull @its_allocate_entry._rs, ptr noundef nonnull @__func__.its_allocate_entry) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #18
  br label %49

27:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !29
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #17
  %29 = load ptr, ptr %2, align 8
  %30 = load ptr, ptr %3, align 4
  %31 = ptrtoint ptr %29 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = lshr exact i32 %33, 5
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr i8, ptr %35, i32 144
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #17, !srcloc !10
  %38 = lshr i32 %37, 5
  %39 = add nuw nsw i32 %34, 1
  %40 = and i32 %39, 2047
  %41 = icmp eq i32 %40, %38
  br i1 %41, label %18, label %42

42:                                               ; preds = %27, %1
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr %struct.its_cmd_block, ptr %43, i32 1
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr %struct.its_cmd_block, ptr %45, i32 2048
  %47 = icmp eq ptr %44, %46
  %48 = select i1 %47, ptr %45, ptr %44
  store ptr %48, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %43, i8 0, i64 32, i1 false)
  br label %49

49:                                               ; preds = %42, %25, %22
  %50 = phi ptr [ %43, %42 ], [ null, %25 ], [ null, %22 ]
  ret ptr %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @its_wait_for_range_completion(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %2 to i32
  %7 = ptrtoint ptr %5 to i32
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %9, %1
  %11 = add nuw nsw i64 %9, 65536
  %12 = select i1 %10, i64 %11, i64 %9
  %13 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 144
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #17, !srcloc !10
  %17 = zext i32 %16 to i64
  %18 = sub i64 %17, %1
  %19 = icmp ult i64 %17, %1
  %20 = add i64 %18, 65536
  %21 = select i1 %19, i64 %20, i64 %18
  %22 = add i64 %21, %1
  %23 = icmp ult i64 %22, %12
  br i1 %23, label %24, label %47

24:                                               ; preds = %35, %3
  %25 = phi i64 [ %45, %35 ], [ %22, %3 ]
  %26 = phi i64 [ %40, %35 ], [ %17, %3 ]
  %27 = phi i32 [ %28, %35 ], [ 1000000, %3 ]
  %28 = add nsw i32 %27, -1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = tail call i32 @___ratelimit(ptr noundef nonnull @its_wait_for_range_completion._rs, ptr noundef nonnull @__func__.its_wait_for_range_completion) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i64 noundef %12, i64 noundef %25) #18
  br label %47

35:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !31
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #17
  %37 = load ptr, ptr %13, align 8
  %38 = getelementptr i8, ptr %37, i32 144
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #17, !srcloc !10
  %40 = zext i32 %39 to i64
  %41 = sub nsw i64 %40, %26
  %42 = icmp ugt i64 %26, %40
  %43 = add nsw i64 %41, 65536
  %44 = select i1 %42, i64 %43, i64 %41
  %45 = add i64 %44, %25
  %46 = icmp ult i64 %45, %12
  br i1 %46, label %24, label %47

47:                                               ; preds = %35, %33, %30, %3
  %48 = phi i32 [ -1, %33 ], [ -1, %30 ], [ 0, %3 ], [ 0, %35 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @its_build_invall_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #12 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, -256
  %6 = or i64 %5, 13
  store i64 %6, ptr %1, align 8
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.its_collection, ptr %7, i32 0, i32 1
  %9 = load i16, ptr %8, align 8
  %10 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %11 = zext i16 %9 to i64
  %12 = load i64, ptr %10, align 8
  %13 = and i64 %12, -65536
  %14 = or i64 %13, %11
  store i64 %14, ptr %10, align 8
  %15 = load ptr, ptr %2, align 4
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_mem_reserve_persistent(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rdist_memreserve_cpuhp_cleanup_workfn(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @gic_rdists, align 4
  %3 = getelementptr inbounds %struct.rdists, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  tail call void @__cpuhp_remove_state(i32 noundef %4, i1 noundef zeroext false) #17
  %5 = load ptr, ptr @gic_rdists, align 4
  %6 = getelementptr inbounds %struct.rdists, ptr %5, i32 0, i32 6
  store i32 -1, ptr %6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @its_reset_one(ptr noundef %0) unnamed_addr #2 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !24
  %3 = call fastcc ptr @its_map_one(ptr noundef %0, ptr noundef nonnull %2) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 256
  br label %9

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  br label %17

9:                                                ; preds = %9, %5
  %10 = phi i32 [ 0, %5 ], [ %14, %9 ]
  %11 = shl i32 %10, 3
  %12 = getelementptr i8, ptr %6, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #17, !srcloc !11
  %13 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #17, !srcloc !11
  %14 = add nuw nsw i32 %10, 1
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %9

16:                                               ; preds = %9
  tail call void @iounmap(ptr noundef nonnull %3) #17
  br label %17

17:                                               ; preds = %16, %7
  %18 = phi i32 [ 0, %16 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @its_probe_one(ptr noundef %0, ptr noundef %1) unnamed_addr #2 section ".init.text" {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = call fastcc ptr @its_map_one(ptr noundef %0, ptr noundef nonnull %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %545, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %0) #18
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 328) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 -12, ptr %3, align 4
  br label %542

12:                                               ; preds = %6
  store i32 0, ptr %9, align 8
  %13 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef nonnull @its_probe_one.__key) #17
  %14 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 2
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 2, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 16
  store volatile ptr %16, ptr %16, align 8
  %17 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 16, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr i8, ptr %4, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #17, !srcloc !10
  %20 = zext i32 %19 to i64
  %21 = getelementptr i8, ptr %4, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #17, !srcloc !10
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = or i64 %24, %20
  %26 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 12
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 3
  store ptr %4, ptr %27, align 8
  %28 = load i32, ptr %0, align 4
  %29 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 5
  store i32 %28, ptr %29, align 8
  %30 = and i64 %20, 2
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %12
  %33 = and i64 %23, 32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = tail call fastcc i32 @its_compute_its_list_map(ptr noundef %0, ptr noundef nonnull %4) #22
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %540, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 18
  store i32 %36, ptr %39, align 8
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %0, i32 noundef %36) #18
  br label %43

41:                                               ; preds = %32
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %0) #18
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i64, ptr %26, align 8
  %45 = and i64 %44, 1099511627776
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %0, align 4
  %49 = add i32 %48, 131072
  %50 = tail call ptr @ioremap(i32 noundef %49, i32 noundef 65536) #17
  %51 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 4
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = lshr i32 %22, 9
  %55 = and i32 %54, 3
  %56 = getelementptr i8, ptr %4, i32 24
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #17, !srcloc !10
  %58 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 15
  store i32 %57, ptr %58, align 4
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %0, i32 noundef %57, i32 noundef %55) #18
  br label %61

60:                                               ; preds = %47
  store i32 -12, ptr %3, align 4
  br label %540

61:                                               ; preds = %53, %43, %12
  %62 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 19
  store i32 -1, ptr %62, align 4
  %63 = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 4, i32 noundef 0, ptr noundef null) #17
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 -12, ptr %3, align 4
  br label %534

66:                                               ; preds = %61
  %67 = tail call ptr @page_address(ptr noundef nonnull %63) #17
  %68 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 6
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 7
  store ptr %67, ptr %69, align 8
  %70 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 10
  store ptr %1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 11
  store ptr @its_irq_get_msi_base, ptr %71, align 8
  %72 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 20
  store i32 32, ptr %72, align 8
  %73 = load ptr, ptr %27, align 8
  %74 = getelementptr i8, ptr %73, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #17, !srcloc !10
  tail call void @gic_enable_quirks(i32 noundef %75, ptr noundef nonnull @its_quirks, ptr noundef nonnull %9) #17
  %76 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 17
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 2
  %79 = icmp eq i64 %78, 0
  %80 = select i1 %79, i64 4035225266123964416, i64 0
  %81 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 8
  %82 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 15
  br label %83

83:                                               ; preds = %430, %66
  %84 = phi i64 [ 1024, %66 ], [ %432, %430 ]
  %85 = phi i64 [ %80, %66 ], [ %431, %430 ]
  %86 = phi i32 [ 0, %66 ], [ %433, %430 ]
  %87 = getelementptr %struct.its_baser, ptr %81, i32 %86
  %88 = load ptr, ptr %27, align 8
  %89 = getelementptr i8, ptr %88, i32 256
  %90 = shl nsw i32 %86, 3
  %91 = getelementptr i8, ptr %89, i32 %90
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #17, !srcloc !10
  %93 = getelementptr i8, ptr %91, i32 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #17, !srcloc !10
  %95 = zext i32 %94 to i64
  %96 = lshr i64 %95, 24
  %97 = and i64 %95, 117440512
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %430, label %99

99:                                               ; preds = %83
  %100 = getelementptr %struct.its_baser, ptr %81, i32 %86, i32 1
  br label %101

101:                                              ; preds = %137, %99
  %102 = phi i1 [ false, %99 ], [ %138, %137 ]
  %103 = phi i1 [ true, %99 ], [ false, %137 ]
  %104 = phi i17 [ -65536, %99 ], [ %139, %137 ]
  %105 = phi i32 [ 65536, %99 ], [ %140, %137 ]
  %106 = load ptr, ptr %27, align 8
  %107 = getelementptr i8, ptr %106, i32 256
  %108 = getelementptr i8, ptr %107, i32 %90
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #17, !srcloc !10
  %110 = getelementptr i8, ptr %108, i32 4
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #17, !srcloc !10
  %112 = and i32 %109, -769
  %113 = zext i1 %102 to i64
  %114 = select i1 %103, i64 2, i64 %113
  %115 = load ptr, ptr %27, align 8
  %116 = getelementptr i8, ptr %115, i32 256
  %117 = getelementptr i8, ptr %116, i32 %90
  %118 = trunc i64 %114 to i32
  %119 = shl nuw nsw i32 %118, 8
  %120 = or i32 %119, %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %120) #17, !srcloc !11
  %121 = getelementptr i8, ptr %117, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %111) #17, !srcloc !11
  %122 = load ptr, ptr %27, align 8
  %123 = getelementptr i8, ptr %122, i32 256
  %124 = getelementptr i8, ptr %123, i32 %90
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #17, !srcloc !10
  %126 = zext i32 %125 to i64
  %127 = getelementptr i8, ptr %124, i32 4
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #17, !srcloc !10
  %129 = zext i32 %128 to i64
  %130 = shl nuw i64 %129, 32
  %131 = or i64 %130, %126
  store i64 %131, ptr %100, align 8
  %132 = lshr i64 %126, 8
  %133 = and i64 %132, 3
  %134 = icmp eq i64 %133, %114
  br i1 %134, label %141, label %135

135:                                              ; preds = %101
  switch i17 %104, label %435 [
    i17 -65536, label %137
    i17 16384, label %136
  ]

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %135
  %138 = phi i1 [ true, %135 ], [ false, %136 ]
  %139 = phi i17 [ 16384, %135 ], [ 4096, %136 ]
  %140 = phi i32 [ 16384, %135 ], [ 4096, %136 ]
  br label %101

141:                                              ; preds = %101
  %142 = getelementptr %struct.its_baser, ptr %81, i32 %86, i32 3
  store i32 %105, ptr %142, align 4
  %143 = add nsw i32 %105, -1
  %144 = lshr i32 %143, 12
  %145 = icmp eq i32 %143, 4095
  %146 = tail call i32 @llvm.ctlz.i32(i32 %144, i1 false) #17, !range !15
  %147 = sub nuw nsw i32 32, %146
  %148 = select i1 %145, i32 0, i32 %147
  %149 = trunc i64 %96 to i3
  switch i3 %149, label %313 [
    i3 1, label %150
    i3 2, label %156
  ]

150:                                              ; preds = %141
  %151 = load i64, ptr %26, align 8
  %152 = trunc i64 %151 to i32
  %153 = lshr i32 %152, 13
  %154 = and i32 %153, 31
  %155 = add nuw nsw i32 %154, 1
  br label %242

156:                                              ; preds = %141
  %157 = load i64, ptr %26, align 8
  %158 = and i64 %157, 1099511627776
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %229, label %160

160:                                              ; preds = %156
  %161 = icmp eq i32 %86, 2
  br i1 %161, label %164, label %162, !prof !13

162:                                              ; preds = %160
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2611, i32 noundef 9, ptr noundef null) #17
  %163 = load i64, ptr %26, align 8
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i64 [ %163, %162 ], [ %157, %160 ]
  %166 = and i64 %165, 6597069766656
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %229, label %168

168:                                              ; preds = %164
  %169 = load i32, ptr %82, align 4
  %170 = lshr i64 %165, 38
  %171 = trunc i64 %170 to i32
  %172 = and i32 %171, 24
  %173 = lshr i32 -1, %172
  %174 = xor i32 %173, -1
  %175 = and i32 %169, %174
  %176 = load ptr, ptr @its_nodes, align 4
  %177 = icmp eq ptr %176, @its_nodes
  br i1 %177, label %229, label %178

178:                                              ; preds = %204, %168
  %179 = phi ptr [ %205, %204 ], [ %176, %168 ]
  %180 = getelementptr i8, ptr %179, i32 -24
  %181 = getelementptr i8, ptr %179, i32 240
  %182 = load i64, ptr %181, align 8
  %183 = and i64 %182, 1099511627776
  %184 = icmp eq i64 %183, 0
  %185 = icmp eq ptr %180, %9
  %186 = select i1 %184, i1 true, i1 %185
  %187 = and i64 %182, 6597069766656
  %188 = icmp eq i64 %187, 0
  %189 = select i1 %186, i1 true, i1 %188
  br i1 %189, label %204, label %190

190:                                              ; preds = %178
  %191 = getelementptr i8, ptr %179, i32 260
  %192 = load i32, ptr %191, align 4
  %193 = lshr i64 %182, 38
  %194 = trunc i64 %193 to i32
  %195 = and i32 %194, 24
  %196 = lshr i32 -1, %195
  %197 = xor i32 %196, -1
  %198 = and i32 %192, %197
  %199 = icmp eq i32 %175, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %190
  %201 = getelementptr i8, ptr %179, i32 88
  %202 = load i64, ptr %201, align 8
  %203 = icmp sgt i64 %202, -1
  br i1 %203, label %204, label %207

204:                                              ; preds = %200, %190, %178
  %205 = load ptr, ptr %179, align 4
  %206 = icmp eq ptr %205, @its_nodes
  br i1 %206, label %229, label %178

207:                                              ; preds = %200
  %208 = icmp eq ptr %180, null
  br i1 %208, label %229, label %209

209:                                              ; preds = %207
  %210 = getelementptr i8, ptr %179, i32 80
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %87, ptr noundef align 8 dereferenceable(24) %210, i32 24, i1 false) #17
  %211 = load i64, ptr %100, align 8
  %212 = load ptr, ptr %27, align 8
  %213 = getelementptr i8, ptr %212, i32 256
  %214 = getelementptr i8, ptr %213, i32 %90
  %215 = trunc i64 %211 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %215) #17, !srcloc !11
  %216 = lshr i64 %211, 32
  %217 = trunc i64 %216 to i32
  %218 = getelementptr i8, ptr %214, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %217) #17, !srcloc !11
  %219 = load ptr, ptr %27, align 8
  %220 = getelementptr i8, ptr %219, i32 256
  %221 = getelementptr i8, ptr %220, i32 %90
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #17, !srcloc !10
  %223 = zext i32 %222 to i64
  %224 = getelementptr i8, ptr %221, i32 4
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #17, !srcloc !10
  %226 = zext i32 %225 to i64
  %227 = shl nuw i64 %226, 32
  %228 = or i64 %227, %223
  store i64 %228, ptr %100, align 8
  br label %430

229:                                              ; preds = %207, %204, %168, %164, %156
  %230 = load ptr, ptr @gic_rdists, align 4
  %231 = getelementptr inbounds %struct.rdists, ptr %230, i32 0, i32 8
  %232 = load i8, ptr %231, align 1, !range !14
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.rdists, ptr %230, i32 0, i32 5
  %236 = load i32, ptr %235, align 4
  %237 = and i32 %236, 128
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  %240 = and i32 %236, 31
  %241 = add nuw nsw i32 %240, 1
  br label %242

242:                                              ; preds = %239, %234, %229, %150
  %243 = phi i32 [ %155, %150 ], [ %241, %239 ], [ 16, %234 ], [ 16, %229 ]
  %244 = load ptr, ptr %27, align 8
  %245 = getelementptr i8, ptr %244, i32 256
  %246 = getelementptr i8, ptr %245, i32 %90
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #17, !srcloc !10
  %248 = getelementptr i8, ptr %246, i32 4
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #17, !srcloc !10
  %250 = lshr i32 %249, 24
  %251 = lshr i32 %249, 16
  %252 = and i32 %251, 31
  %253 = add nuw nsw i32 %252, 1
  %254 = zext i32 %253 to i64
  %255 = load i32, ptr %142, align 4
  %256 = zext i32 %243 to i64
  %257 = shl nuw nsw i64 %254, %256
  %258 = shl i32 %255, 1
  %259 = zext i32 %258 to i64
  %260 = icmp ugt i64 %257, %259
  br i1 %260, label %261, label %286

261:                                              ; preds = %242
  %262 = load ptr, ptr %27, align 8
  %263 = getelementptr i8, ptr %262, i32 256
  %264 = getelementptr i8, ptr %263, i32 %90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 1024) #17, !srcloc !11
  %265 = getelementptr i8, ptr %264, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 2013265920) #17, !srcloc !11
  %266 = load ptr, ptr %27, align 8
  %267 = getelementptr i8, ptr %266, i32 256
  %268 = getelementptr i8, ptr %267, i32 %90
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #17, !srcloc !10
  %270 = zext i32 %269 to i64
  %271 = getelementptr i8, ptr %268, i32 4
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #17, !srcloc !10
  %273 = zext i32 %272 to i64
  %274 = shl nuw i64 %273, 32
  %275 = or i64 %274, %270
  store i64 %275, ptr %100, align 8
  %276 = and i64 %273, 1073741824
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %286, label %278

278:                                              ; preds = %261
  %279 = icmp ugt i32 %255, %252
  %280 = udiv i32 %255, %253
  %281 = tail call i32 @llvm.ctlz.i32(i32 %280, i1 false) #17, !range !15
  %282 = add nsw i32 %281, -31
  %283 = select i1 %279, i32 %282, i32 1
  %284 = add nsw i32 %283, %243
  %285 = zext i32 %284 to i64
  br label %286

286:                                              ; preds = %278, %261, %242
  %287 = phi i64 [ %256, %261 ], [ %285, %278 ], [ %256, %242 ]
  %288 = phi i1 [ false, %261 ], [ true, %278 ], [ false, %242 ]
  %289 = phi i64 [ %254, %261 ], [ 8, %278 ], [ %254, %242 ]
  %290 = shl i64 %289, %287
  %291 = trunc i64 %290 to i32
  %292 = add i32 %291, -1
  %293 = icmp ult i32 %292, 4096
  %294 = lshr i32 %292, 12
  %295 = tail call i32 @llvm.ctlz.i32(i32 %294, i1 false) #17, !range !15
  %296 = sub nuw nsw i32 32, %295
  %297 = select i1 %293, i32 0, i32 %296
  %298 = tail call i32 @llvm.umax.i32(i32 %297, i32 %148) #17
  %299 = icmp ugt i32 %298, 11
  br i1 %299, label %300, label %313

300:                                              ; preds = %286
  %301 = trunc i64 %289 to i32
  %302 = udiv i32 8388608, %301
  %303 = tail call i32 @llvm.ctlz.i32(i32 %302, i1 false) #17, !range !32
  %304 = sub nsw i32 31, %303
  %305 = and i32 %250, 7
  %306 = getelementptr [8 x ptr], ptr @its_base_type_string, i32 0, i32 %305
  %307 = load ptr, ptr %306, align 4
  %308 = load i64, ptr %26, align 8
  %309 = lshr i64 %308, 13
  %310 = and i64 %309, 31
  %311 = add nuw nsw i64 %310, 1
  %312 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %29, ptr noundef %307, i64 noundef %311, i32 noundef %304) #18
  br label %313

313:                                              ; preds = %300, %286, %141
  %314 = phi i32 [ %148, %141 ], [ 11, %300 ], [ %298, %286 ]
  %315 = phi i1 [ false, %141 ], [ %288, %300 ], [ %288, %286 ]
  %316 = load ptr, ptr %27, align 8
  %317 = getelementptr i8, ptr %316, i32 256
  %318 = getelementptr i8, ptr %317, i32 %90
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #17, !srcloc !10
  %320 = getelementptr i8, ptr %318, i32 4
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %320) #17, !srcloc !10
  %322 = zext i32 %321 to i64
  %323 = lshr i64 %322, 16
  %324 = and i64 %323, 31
  %325 = lshr i64 %322, 24
  %326 = and i64 %325, 7
  %327 = load i32, ptr %142, align 4
  %328 = shl i32 4096, %314
  %329 = udiv i32 %328, %327
  %330 = icmp ugt i32 %329, 256
  br i1 %330, label %331, label %343

331:                                              ; preds = %313
  %332 = trunc i64 %326 to i32
  %333 = getelementptr [8 x ptr], ptr @its_base_type_string, i32 0, i32 %332
  %334 = load ptr, ptr %333, align 4
  %335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %29, ptr noundef %334, i32 noundef %329, i32 noundef 256) #18
  %336 = shl i32 %327, 8
  %337 = add i32 %336, -1
  %338 = lshr i32 %337, 12
  %339 = icmp ult i32 %337, 4096
  %340 = tail call i32 @llvm.ctlz.i32(i32 %338, i1 false) #17, !range !15
  %341 = sub nuw nsw i32 32, %340
  %342 = select i1 %339, i32 0, i32 %341
  br label %343

343:                                              ; preds = %331, %313
  %344 = phi i32 [ %314, %313 ], [ %342, %331 ]
  %345 = phi i32 [ %329, %313 ], [ 256, %331 ]
  %346 = load i32, ptr %62, align 4
  %347 = icmp eq i32 %346, -1
  %348 = select i1 %347, i32 0, i32 %346
  %349 = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef %344, i32 noundef %348, ptr noundef null) #17
  %350 = icmp eq ptr %349, null
  br i1 %350, label %435, label %351

351:                                              ; preds = %343
  %352 = tail call ptr @page_address(ptr noundef nonnull %349) #17
  %353 = ptrtoint ptr %352 to i32
  %354 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %353, i32 -2130706432, i32 8454144) #21, !srcloc !16
  %355 = zext i32 %354 to i64
  %356 = shl nuw nsw i64 %326, 56
  %357 = or i64 %356, %355
  %358 = shl nuw nsw i64 %324, 48
  %359 = or i64 %357, %358
  %360 = add nsw i32 %345, -1
  %361 = zext i32 %360 to i64
  %362 = select i1 %315, i64 4611686018427387904, i64 0
  %363 = or i64 %362, %361
  %364 = or i64 %363, %359
  %365 = shl i32 4096, %344
  br label %366

366:                                              ; preds = %403, %351
  %367 = phi i64 [ %401, %403 ], [ %84, %351 ]
  %368 = phi i64 [ 576460752303423488, %403 ], [ %85, %351 ]
  br label %369

369:                                              ; preds = %400, %366
  %370 = phi i64 [ %401, %400 ], [ %367, %366 ]
  %371 = or i64 %364, %370
  %372 = or i64 %371, %368
  %373 = or i64 %372, -9223372036854775808
  switch i32 %327, label %378 [
    i32 65536, label %376
    i32 16384, label %374
  ]

374:                                              ; preds = %369
  %375 = or i64 %372, -9223372036854775552
  br label %378

376:                                              ; preds = %369
  %377 = or i64 %372, -9223372036854775296
  br label %378

378:                                              ; preds = %376, %374, %369
  %379 = phi i64 [ %377, %376 ], [ %375, %374 ], [ %373, %369 ]
  %380 = load ptr, ptr %27, align 8
  %381 = getelementptr i8, ptr %380, i32 256
  %382 = getelementptr i8, ptr %381, i32 %90
  %383 = trunc i64 %379 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %382, i32 %383) #17, !srcloc !11
  %384 = lshr i64 %379, 32
  %385 = trunc i64 %384 to i32
  %386 = getelementptr i8, ptr %382, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 %385) #17, !srcloc !11
  %387 = load ptr, ptr %27, align 8
  %388 = getelementptr i8, ptr %387, i32 256
  %389 = getelementptr i8, ptr %388, i32 %90
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %389) #17, !srcloc !10
  %391 = zext i32 %390 to i64
  %392 = getelementptr i8, ptr %389, i32 4
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %392) #17, !srcloc !10
  %394 = zext i32 %393 to i64
  %395 = shl nuw i64 %394, 32
  %396 = or i64 %395, %391
  store i64 %396, ptr %100, align 8
  %397 = xor i64 %379, %391
  %398 = and i64 %397, 3072
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %405, label %400

400:                                              ; preds = %378
  %401 = and i64 %391, 3072
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %403, label %369

403:                                              ; preds = %400
  %404 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %404(ptr noundef %352, i32 noundef %365) #17
  br label %366

405:                                              ; preds = %378
  %406 = icmp eq i64 %379, %396
  br i1 %406, label %413, label %407

407:                                              ; preds = %405
  %408 = ptrtoint ptr %352 to i32
  %409 = trunc i64 %326 to i32
  %410 = getelementptr [8 x ptr], ptr @its_base_type_string, i32 0, i32 %409
  %411 = load ptr, ptr %410, align 4
  %412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %29, ptr noundef %411, i64 noundef %379, i64 noundef %396) #18
  tail call void @free_pages(i32 noundef %408, i32 noundef %344) #17
  br label %435

413:                                              ; preds = %405
  %414 = getelementptr %struct.its_baser, ptr %81, i32 %86, i32 2
  store i32 %344, ptr %414, align 8
  store ptr %352, ptr %87, align 8
  store i32 %327, ptr %142, align 4
  %415 = trunc i64 %324 to i32
  %416 = add nuw nsw i32 %415, 1
  %417 = select i1 %315, i32 8, i32 %416
  %418 = udiv i32 %365, %417
  %419 = trunc i64 %326 to i32
  %420 = getelementptr [8 x ptr], ptr @its_base_type_string, i32 0, i32 %419
  %421 = load ptr, ptr %420, align 4
  %422 = select i1 %315, ptr @.str.43, ptr @.str.44
  %423 = lshr i32 %327, 10
  %424 = trunc i64 %370 to i32
  %425 = ashr i32 %424, 10
  %426 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %29, i32 noundef %418, ptr noundef %421, i32 noundef %354, ptr noundef nonnull %422, i32 noundef %416, i32 noundef %423, i32 noundef %425) #18
  %427 = load i64, ptr %100, align 8
  %428 = and i64 %427, 4035225266123964416
  %429 = and i64 %427, 3072
  br label %430

430:                                              ; preds = %413, %209, %83
  %431 = phi i64 [ %85, %83 ], [ %85, %209 ], [ %428, %413 ]
  %432 = phi i64 [ %84, %83 ], [ %84, %209 ], [ %429, %413 ]
  %433 = add nuw nsw i32 %86, 1
  %434 = icmp eq i32 %433, 8
  br i1 %434, label %437, label %83

435:                                              ; preds = %407, %343, %135
  %436 = phi i32 [ -6, %407 ], [ -6, %135 ], [ -12, %343 ]
  tail call fastcc void @its_free_tables(ptr noundef nonnull %9) #17
  store i32 %436, ptr %3, align 4
  br label %530

437:                                              ; preds = %430
  %438 = load i32, ptr @nr_cpu_ids, align 4
  %439 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %438, i32 16) #17
  %440 = extractvalue { i32, i1 } %439, 1
  br i1 %440, label %441, label %443, !prof !22

441:                                              ; preds = %437
  %442 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 9
  store ptr null, ptr %442, align 8
  br label %529

443:                                              ; preds = %437
  %444 = extractvalue { i32, i1 } %439, 0
  %445 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %444, i32 noundef 3520) #23
  %446 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 9
  store ptr %445, ptr %446, align 8
  %447 = icmp eq ptr %445, null
  br i1 %447, label %529, label %448

448:                                              ; preds = %443
  %449 = load i32, ptr @nr_cpu_ids, align 4
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %465, label %451

451:                                              ; preds = %448
  store i64 -1, ptr %445, align 64
  %452 = load i32, ptr @nr_cpu_ids, align 4
  %453 = icmp ugt i32 %452, 1
  br i1 %453, label %454, label %465

454:                                              ; preds = %451
  %455 = getelementptr %struct.its_collection, ptr %445, i32 1
  store i64 -1, ptr %455, align 16
  %456 = load i32, ptr @nr_cpu_ids, align 4
  %457 = icmp ugt i32 %456, 2
  br i1 %457, label %458, label %465

458:                                              ; preds = %458, %454
  %459 = phi i32 [ %462, %458 ], [ 2, %454 ]
  %460 = load ptr, ptr %446, align 8
  %461 = getelementptr %struct.its_collection, ptr %460, i32 %459
  store i64 -1, ptr %461, align 8
  %462 = add nuw i32 %459, 1
  %463 = load i32, ptr @nr_cpu_ids, align 4
  %464 = icmp ult i32 %462, %463
  br i1 %464, label %458, label %465

465:                                              ; preds = %458, %454, %451, %448
  store i32 0, ptr %3, align 4
  %466 = load ptr, ptr %68, align 4
  %467 = ptrtoint ptr %466 to i32
  %468 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %467, i32 -2130706432, i32 8454144) #21, !srcloc !16
  %469 = zext i32 %468 to i64
  %470 = or i64 %469, -5188146770730810353
  %471 = load ptr, ptr %27, align 8
  %472 = getelementptr i8, ptr %471, i32 128
  %473 = trunc i64 %470 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %472, i32 %473) #17, !srcloc !11
  %474 = getelementptr i8, ptr %471, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %474, i32 -1207959552) #17, !srcloc !11
  %475 = load ptr, ptr %27, align 8
  %476 = getelementptr i8, ptr %475, i32 128
  %477 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %476) #17, !srcloc !10
  %478 = zext i32 %477 to i64
  %479 = getelementptr i8, ptr %475, i32 132
  %480 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %479) #17, !srcloc !10
  %481 = xor i64 %470, %478
  %482 = and i64 %481, 3072
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %496, label %484

484:                                              ; preds = %465
  %485 = and i64 %478, 3072
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %484
  %488 = load ptr, ptr %27, align 8
  %489 = getelementptr i8, ptr %488, i32 128
  %490 = and i32 %473, -3073
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %489, i32 %490) #17, !srcloc !11
  %491 = getelementptr i8, ptr %488, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %491, i32 -2013265920) #17, !srcloc !11
  br label %492

492:                                              ; preds = %487, %484
  %493 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #18
  %494 = load i64, ptr %76, align 8
  %495 = or i64 %494, 1
  store i64 %495, ptr %76, align 8
  br label %496

496:                                              ; preds = %492, %465
  %497 = load ptr, ptr %27, align 8
  %498 = getelementptr i8, ptr %497, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %498, i32 0) #17, !srcloc !11
  %499 = getelementptr i8, ptr %497, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %499, i32 0) #17, !srcloc !11
  %500 = load ptr, ptr %27, align 8
  %501 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %500) #17, !srcloc !10
  %502 = load i64, ptr %26, align 8
  %503 = and i64 %502, 2
  %504 = icmp eq i64 %503, 0
  %505 = select i1 %504, i32 1, i32 3
  %506 = or i32 %505, %501
  %507 = load ptr, ptr %27, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %507, i32 %506) #17, !srcloc !11
  %508 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %509 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %508, i32 noundef 3520, i32 noundef 32) #20
  %510 = icmp eq ptr %509, null
  br i1 %510, label %529, label %511

511:                                              ; preds = %496
  %512 = tail call ptr @__irq_domain_add(ptr noundef %1, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @its_domain_ops, ptr noundef nonnull %9) #17
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %515

514:                                              ; preds = %511
  tail call void @kfree(ptr noundef nonnull %509) #17
  br label %529

515:                                              ; preds = %511
  %516 = load ptr, ptr @its_parent, align 4
  %517 = getelementptr inbounds %struct.irq_domain, ptr %512, i32 0, i32 9
  store ptr %516, ptr %517, align 4
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %512, i32 noundef 5) #17
  %518 = load i32, ptr %72, align 8
  %519 = getelementptr inbounds %struct.irq_domain, ptr %512, i32 0, i32 4
  %520 = load i32, ptr %519, align 4
  %521 = or i32 %520, %518
  store i32 %521, ptr %519, align 4
  %522 = getelementptr inbounds %struct.msi_domain_info, ptr %509, i32 0, i32 1
  store ptr @its_msi_domain_ops, ptr %522, align 4
  %523 = getelementptr inbounds %struct.msi_domain_info, ptr %509, i32 0, i32 7
  store ptr %9, ptr %523, align 4
  %524 = getelementptr inbounds %struct.irq_domain, ptr %512, i32 0, i32 3
  store ptr %509, ptr %524, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @its_lock) #17
  %525 = load ptr, ptr @its_nodes, align 4
  %526 = getelementptr inbounds %struct.list_head, ptr %525, i32 0, i32 1
  store ptr %14, ptr %526, align 4
  store ptr %525, ptr %14, align 8
  store ptr @its_nodes, ptr %15, align 4
  store volatile ptr %14, ptr @its_nodes, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %527 = load i16, ptr @its_lock, align 4
  %528 = add i16 %527, 1
  store i16 %528, ptr @its_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %545

529:                                              ; preds = %514, %496, %443, %441
  store i32 -12, ptr %3, align 4
  tail call fastcc void @its_free_tables(ptr noundef nonnull %9)
  br label %530

530:                                              ; preds = %529, %435
  %531 = phi i32 [ %436, %435 ], [ -12, %529 ]
  %532 = load ptr, ptr %68, align 4
  %533 = ptrtoint ptr %532 to i32
  tail call void @free_pages(i32 noundef %533, i32 noundef 4) #17
  br label %534

534:                                              ; preds = %530, %65
  %535 = phi i32 [ %531, %530 ], [ -12, %65 ]
  %536 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 4
  %537 = load ptr, ptr %536, align 4
  %538 = icmp eq ptr %537, null
  br i1 %538, label %540, label %539

539:                                              ; preds = %534
  tail call void @iounmap(ptr noundef nonnull %537) #17
  br label %540

540:                                              ; preds = %539, %534, %60, %35
  %541 = phi i32 [ -12, %60 ], [ %535, %534 ], [ %535, %539 ], [ %36, %35 ]
  tail call void @kfree(ptr noundef nonnull %9) #17
  br label %542

542:                                              ; preds = %540, %11
  %543 = phi i32 [ %541, %540 ], [ -12, %11 ]
  tail call void @iounmap(ptr noundef nonnull %4) #17
  %544 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef %543) #18
  br label %545

545:                                              ; preds = %542, %515, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @its_map_one(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 section ".init.text" {
  %3 = load i32, ptr %0, align 4
  %4 = tail call ptr @ioremap(i32 noundef %3, i32 noundef 65536) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %0) #18
  store i32 -12, ptr %1, align 4
  br label %21

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %4, i32 65512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #17, !srcloc !10
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, -16
  switch i8 %12, label %13 [
    i8 64, label %15
    i8 48, label %15
  ]

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %0) #18
  store i32 -19, ptr %1, align 4
  br label %20

15:                                               ; preds = %8, %8
  %16 = tail call fastcc i32 @its_force_quiescent(ptr noundef nonnull %4)
  store i32 %16, ptr %1, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %0) #18
  br label %20

20:                                               ; preds = %18, %13
  tail call void @iounmap(ptr noundef nonnull %4) #17
  br label %21

21:                                               ; preds = %20, %15, %6
  %22 = phi ptr [ null, %20 ], [ null, %6 ], [ %4, %15 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @its_force_quiescent(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #17, !srcloc !10
  %3 = and i32 %2, -2147483647
  %4 = icmp eq i32 %3, -2147483648
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = and i32 %2, -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #17, !srcloc !11
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #17, !srcloc !10
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %17

9:                                                ; preds = %13, %5
  %10 = phi i32 [ %11, %13 ], [ 1000000, %5 ]
  %11 = add nsw i32 %10, -1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !33
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !34
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #17
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #17, !srcloc !10
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %9, label %17

17:                                               ; preds = %13, %9, %5, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %5 ], [ 0, %13 ], [ -16, %9 ]
  ret i32 %18
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @its_compute_its_list_map(ptr noundef %0, ptr noundef %1) unnamed_addr #2 section ".init.text" {
  %3 = tail call i32 @_find_first_zero_bit_le(ptr noundef nonnull @its_list_map, i32 noundef 16) #17
  %4 = icmp sgt i32 %3, 15
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %0) #18
  br label %21

7:                                                ; preds = %2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #17, !srcloc !10
  %9 = and i32 %8, -241
  %10 = shl i32 %3, 4
  %11 = or i32 %9, %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %11) #17, !srcloc !11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #17, !srcloc !10
  %13 = and i32 %12, 240
  %14 = icmp eq i32 %13, %10
  %15 = lshr exact i32 %13, 4
  %16 = select i1 %14, i32 %3, i32 %15
  %17 = tail call i32 @_test_and_set_bit(i32 noundef %16, ptr noundef nonnull @its_list_map) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %7
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %0, i32 noundef %16) #18
  br label %21

21:                                               ; preds = %19, %7, %5
  %22 = phi i32 [ -22, %5 ], [ -22, %19 ], [ %16, %7 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @its_irq_get_msi_base(ptr nocapture noundef readonly %0) #14 {
  %2 = getelementptr inbounds %struct.its_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.its_node, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 65600
  %7 = zext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @its_free_tables(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  %7 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  tail call void @free_pages(i32 noundef %6, i32 noundef %8) #17
  store ptr null, ptr %2, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = ptrtoint ptr %11 to i32
  %15 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 1, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void @free_pages(i32 noundef %14, i32 noundef %16) #17
  store ptr null, ptr %10, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = ptrtoint ptr %19 to i32
  %23 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 2, i32 2
  %24 = load i32, ptr %23, align 8
  tail call void @free_pages(i32 noundef %22, i32 noundef %24) #17
  store ptr null, ptr %18, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = ptrtoint ptr %27 to i32
  %31 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 3, i32 2
  %32 = load i32, ptr %31, align 8
  tail call void @free_pages(i32 noundef %30, i32 noundef %32) #17
  store ptr null, ptr %26, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = ptrtoint ptr %35 to i32
  %39 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 4, i32 2
  %40 = load i32, ptr %39, align 8
  tail call void @free_pages(i32 noundef %38, i32 noundef %40) #17
  store ptr null, ptr %34, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = ptrtoint ptr %43 to i32
  %47 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 5, i32 2
  %48 = load i32, ptr %47, align 8
  tail call void @free_pages(i32 noundef %46, i32 noundef %48) #17
  store ptr null, ptr %42, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = ptrtoint ptr %51 to i32
  %55 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 6, i32 2
  %56 = load i32, ptr %55, align 8
  tail call void @free_pages(i32 noundef %54, i32 noundef %56) #17
  store ptr null, ptr %50, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 7
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = ptrtoint ptr %59 to i32
  %63 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 7, i32 2
  %64 = load i32, ptr %63, align 8
  tail call void @free_pages(i32 noundef %62, i32 noundef %64) #17
  store ptr null, ptr %58, align 8
  br label %65

65:                                               ; preds = %61, %57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_quirks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.msi_alloc_info, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 2, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = add i32 %2, -1
  %17 = icmp eq i32 %16, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 false) #17, !range !15
  %19 = sub nuw nsw i32 32, %18
  %20 = select i1 %17, i32 0, i32 %19
  br label %21

21:                                               ; preds = %15, %4
  %22 = phi i32 [ %20, %15 ], [ -1, %4 ]
  %23 = tail call i32 @bitmap_find_free_region(ptr noundef %11, i32 noundef %13, i32 noundef %22) #17
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %80, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 2, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %23
  %29 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 11
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i64 %30(ptr noundef %7) #17
  br i1 %14, label %80, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %34 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  %36 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  %37 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  br label %38

38:                                               ; preds = %68, %32
  %39 = phi i32 [ 0, %32 ], [ %78, %68 ]
  %40 = add i32 %39, %1
  %41 = add i32 %28, %39
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #17, !annotation !24
  %42 = load ptr, ptr %33, align 4
  %43 = getelementptr inbounds %struct.irq_domain, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %47 = or i1 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.fwnode_handle, ptr %44, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ne ptr %50, @of_fwnode_ops
  %52 = getelementptr i8, ptr %44, i32 -12
  %53 = icmp eq ptr %52, null
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store ptr %44, ptr %5, align 4
  store i32 3, ptr %34, align 4
  store i32 -1592735507, ptr %35, align 4
  br label %63

56:                                               ; preds = %48, %38
  br i1 %45, label %62, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.fwnode_handle, ptr %44, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, @irqchip_fwnode_ops
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store ptr %44, ptr %5, align 4
  store i32 2, ptr %34, align 4
  br label %63

62:                                               ; preds = %57, %56
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #17
  br label %80

63:                                               ; preds = %61, %55
  %64 = phi ptr [ %36, %55 ], [ %35, %61 ]
  %65 = phi ptr [ %37, %55 ], [ %36, %61 ]
  store i32 %41, ptr %64, align 4
  store i32 1, ptr %65, align 4
  %66 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %40, i32 noundef 1, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #17
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %40, i32 noundef %41, ptr noundef nonnull @its_irq_chip, ptr noundef %7) #17
  %70 = call ptr @irq_get_irq_data(i32 noundef %40) #17
  %71 = getelementptr inbounds %struct.irq_data, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 16777216
  store i32 %74, ptr %72, align 4
  %75 = load ptr, ptr %71, align 4
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, 536870912
  store i32 %77, ptr %75, align 4
  %78 = add nuw i32 %39, 1
  %79 = icmp eq i32 %78, %2
  br i1 %79, label %80, label %38

80:                                               ; preds = %68, %63, %62, %25, %21
  %81 = phi i32 [ -28, %21 ], [ -22, %62 ], [ 0, %25 ], [ %66, %63 ], [ 0, %68 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #17
  %6 = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #17
  %13 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.its_device, ptr %14, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  tail call void @bitmap_release_region(ptr noundef %11, i32 noundef %19, i32 noundef -1) #17
  br label %34

22:                                               ; preds = %3
  %23 = add i32 %2, -1
  %24 = icmp eq i32 %23, 0
  %25 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 false) #17, !range !15
  %26 = sub nuw nsw i32 32, %25
  %27 = select i1 %24, i32 0, i32 %26
  tail call void @bitmap_release_region(ptr noundef %11, i32 noundef %19, i32 noundef %27) #17
  br label %28

28:                                               ; preds = %28, %22
  %29 = phi i32 [ %32, %28 ], [ 0, %22 ]
  %30 = add i32 %29, %1
  %31 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %30) #17
  tail call void @irq_domain_reset_irq_data(ptr noundef %31) #17
  %32 = add nuw i32 %29, 1
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %28

34:                                               ; preds = %28, %21
  %35 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %35) #17
  %36 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 6
  %37 = load i8, ptr %36, align 4, !range !14
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 2, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %10, align 4
  %43 = tail call i32 @_find_first_bit_le(ptr noundef %42, i32 noundef %41) #17
  %44 = icmp eq i32 %43, %41
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  %46 = load ptr, ptr %10, align 4
  %47 = load i32, ptr %40, align 4
  %48 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 2, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = tail call fastcc i32 @free_lpi_range(i32 noundef %49, i32 noundef %47) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !13

52:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2162, i32 noundef 9, ptr noundef null) #17
  br label %53

53:                                               ; preds = %52, %45
  tail call void @bitmap_free(ptr noundef %46) #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %54 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %54, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %7, ptr %4, align 4
  %55 = getelementptr inbounds %struct.anon.84, ptr %4, i32 0, i32 1
  store i32 0, ptr %55, align 4
  %56 = load ptr, ptr %8, align 4
  call fastcc void @its_send_single_command(ptr noundef %56, ptr noundef nonnull @its_build_mapd_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  %57 = load ptr, ptr %8, align 4
  %58 = call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #17
  %59 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %7, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store volatile ptr %61, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %59, align 4
  %63 = load ptr, ptr %8, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %63, i32 noundef %58) #17
  %64 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 2, i32 1
  %65 = load ptr, ptr %64, align 4
  call void @kfree(ptr noundef %65) #17
  %66 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  call void @kfree(ptr noundef %67) #17
  call void @kfree(ptr noundef %7) #17
  br label %68

68:                                               ; preds = %53, %39, %34
  call void @mutex_unlock(ptr noundef %35) #17
  call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_irq_domain_activate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 2, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = tail call fastcc i32 @its_select_cpu(ptr noundef %1, ptr noundef nonnull @__cpu_online_mask)
  %13 = icmp sgt i32 %12, -1
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %12, %14
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, ptrtoint (ptr @cpu_lpi_count to i32)
  %26 = inttoptr i32 %25 to ptr
  br i1 %22, label %29, label %27

27:                                               ; preds = %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #17, !srcloc !35
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #17, !srcloc !36
  br label %32

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.cpu_lpi_count, ptr %26, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #17, !srcloc !35
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #17, !srcloc !36
  br label %32

32:                                               ; preds = %29, %27
  %33 = trunc i32 %12 to i16
  %34 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i16, ptr %35, i32 %11
  store i16 %33, ptr %36, align 2
  %37 = and i32 %12, 31
  %38 = add nuw nsw i32 %37, 1
  %39 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %38
  %40 = lshr i32 %12, 5
  %41 = sub nsw i32 0, %40
  %42 = getelementptr i32, ptr %39, i32 %41
  %43 = load ptr, ptr %18, align 4
  %44 = getelementptr inbounds %struct.irq_common_data, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %42, align 4
  store i32 %45, ptr %44, align 4
  %46 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %47 = getelementptr inbounds i8, ptr %4, i32 12
  store i64 0, ptr %47, align 4, !annotation !24
  store ptr %6, ptr %4, align 4
  %48 = getelementptr inbounds %struct.anon.86, ptr %4, i32 0, i32 1
  store i32 %46, ptr %48, align 4
  %49 = getelementptr inbounds %struct.anon.86, ptr %4, i32 0, i32 2
  store i32 %11, ptr %49, align 4
  %50 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  call fastcc void @its_send_single_command(ptr noundef %51, ptr noundef nonnull @its_build_mapti_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  br label %52

52:                                               ; preds = %32, %3
  %53 = phi i32 [ 0, %32 ], [ -22, %3 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_irq_domain_deactivate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.its_device, ptr %5, i32 0, i32 2, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = getelementptr inbounds %struct.its_device, ptr %5, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i16, ptr %12, i32 %10
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2097152
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, ptrtoint (ptr @cpu_lpi_count to i32)
  %24 = inttoptr i32 %23 to ptr
  br i1 %20, label %27, label %25

25:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #17, !srcloc !35
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #17, !srcloc !37
  br label %30

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.cpu_lpi_count, ptr %24, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #17, !srcloc !35
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #17, !srcloc !37
  br label %30

30:                                               ; preds = %27, %25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %31 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %31, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %5, ptr %3, align 4
  %32 = getelementptr inbounds %struct.anon.88, ptr %3, i32 0, i32 1
  store i32 %10, ptr %32, align 4
  %33 = getelementptr inbounds %struct.its_device, ptr %5, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  call fastcc void @its_send_single_command(ptr noundef %34, ptr noundef nonnull @its_build_discard_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_mask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @its_vlpi_set_doorbell(ptr noundef %0, i1 noundef zeroext false)
  br label %8

8:                                                ; preds = %7, %1
  tail call fastcc void @lpi_update_config(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_unmask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @its_vlpi_set_doorbell(ptr noundef %0, i1 noundef zeroext true)
  br label %8

8:                                                ; preds = %7, %1
  tail call fastcc void @lpi_update_config(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_set_affinity(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 2, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1048576
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %120

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i16, ptr %19, i32 %11
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %14, 2097152
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, ptrtoint (ptr @cpu_lpi_count to i32)
  %28 = inttoptr i32 %27 to ptr
  br i1 %24, label %31, label %29

29:                                               ; preds = %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #17, !srcloc !35
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #17, !srcloc !37
  br label %34

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.cpu_lpi_count, ptr %28, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #17, !srcloc !35
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #17, !srcloc !37
  br label %34

34:                                               ; preds = %31, %29
  br i1 %2, label %38, label %35

35:                                               ; preds = %34
  %36 = tail call fastcc i32 @its_select_cpu(ptr noundef %0, ptr noundef %1)
  %37 = load i32, ptr @nr_cpu_ids, align 4
  br label %63

38:                                               ; preds = %34
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #19
  %41 = icmp ult i32 %40, %39
  br i1 %41, label %42, label %107

42:                                               ; preds = %38
  %43 = load ptr, ptr %12, align 4
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 2097152
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %47, %42
  %48 = phi i32 [ %40, %42 ], [ %61, %47 ]
  %49 = phi i32 [ 2147483647, %42 ], [ %60, %47 ]
  %50 = phi i32 [ %39, %42 ], [ %59, %47 ]
  %51 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, ptrtoint (ptr @cpu_lpi_count to i32)
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr inbounds %struct.cpu_lpi_count, ptr %54, i32 0, i32 1
  %56 = select i1 %46, ptr %55, ptr %54
  %57 = load volatile i32, ptr %56, align 4
  %58 = icmp slt i32 %57, %49
  %59 = select i1 %58, i32 %48, i32 %50
  %60 = tail call i32 @llvm.smin.i32(i32 %57, i32 %49) #17
  %61 = tail call i32 @cpumask_next(i32 noundef %48, ptr noundef %1) #19
  %62 = icmp ult i32 %61, %39
  br i1 %62, label %47, label %63

63:                                               ; preds = %47, %35
  %64 = phi i32 [ %37, %35 ], [ %39, %47 ]
  %65 = phi i32 [ %36, %35 ], [ %59, %47 ]
  %66 = icmp sgt i32 %65, -1
  %67 = icmp ult i32 %65, %64
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %107

69:                                               ; preds = %63
  %70 = icmp eq i32 %65, %22
  br i1 %70, label %93, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.its_node, ptr %73, i32 0, i32 9
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr %struct.its_collection, ptr %75, i32 %65
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %77 = getelementptr inbounds i8, ptr %4, i32 12
  store i64 0, ptr %77, align 4, !annotation !24
  store ptr %6, ptr %4, align 4
  %78 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  %79 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 2
  store i32 %11, ptr %79, align 4
  %80 = load ptr, ptr %72, align 4
  call fastcc void @its_send_single_command(ptr noundef %80, ptr noundef nonnull @its_build_movi_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  %81 = trunc i32 %65 to i16
  %82 = load ptr, ptr %18, align 4
  %83 = getelementptr i16, ptr %82, i32 %11
  store i16 %81, ptr %83, align 2
  %84 = and i32 %65, 31
  %85 = add nuw nsw i32 %84, 1
  %86 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %85
  %87 = lshr i32 %65, 5
  %88 = sub nsw i32 0, %87
  %89 = getelementptr i32, ptr %86, i32 %88
  %90 = load ptr, ptr %12, align 4
  %91 = getelementptr inbounds %struct.irq_common_data, ptr %90, i32 0, i32 4
  %92 = load i32, ptr %89, align 4
  store i32 %92, ptr %91, align 4
  br label %93

93:                                               ; preds = %71, %69
  %94 = load ptr, ptr %12, align 4
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 2097152
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, ptrtoint (ptr @cpu_lpi_count to i32)
  %101 = inttoptr i32 %100 to ptr
  br i1 %97, label %104, label %102

102:                                              ; preds = %93
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #17, !srcloc !35
  %103 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #17, !srcloc !36
  br label %120

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.cpu_lpi_count, ptr %101, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #17, !srcloc !35
  %106 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #17, !srcloc !36
  br label %120

107:                                              ; preds = %63, %38
  %108 = load ptr, ptr %12, align 4
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 2097152
  %111 = icmp eq i32 %110, 0
  %112 = load i32, ptr %25, align 4
  %113 = add i32 %112, ptrtoint (ptr @cpu_lpi_count to i32)
  %114 = inttoptr i32 %113 to ptr
  br i1 %111, label %117, label %115

115:                                              ; preds = %107
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %114) #17, !srcloc !35
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %114, ptr %114, i32 1, ptr elementtype(i32) %114) #17, !srcloc !36
  br label %120

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.cpu_lpi_count, ptr %114, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %118) #17, !srcloc !35
  %119 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %118, ptr %118, i32 1, ptr elementtype(i32) %118) #17, !srcloc !36
  br label %120

120:                                              ; preds = %117, %115, %104, %102, %3
  %121 = phi i32 [ -22, %3 ], [ 2, %102 ], [ 2, %104 ], [ -22, %115 ], [ -22, %117 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_irq_retrigger(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.its_cmd_desc, align 4
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.its_device, ptr %5, i32 0, i32 2, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1048576
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %17 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %17, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %5, ptr %3, align 4
  %18 = getelementptr inbounds %struct.anon.83, ptr %3, i32 0, i32 1
  store i32 %10, ptr %18, align 4
  %19 = getelementptr inbounds %struct.its_device, ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %20, ptr noundef nonnull @its_build_vint_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  br label %26

21:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  %22 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %22, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %5, ptr %2, align 4
  %23 = getelementptr inbounds %struct.anon.83, ptr %2, i32 0, i32 1
  store i32 %10, ptr %23, align 4
  %24 = getelementptr inbounds %struct.its_device, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  call fastcc void @its_send_single_command(ptr noundef %25, ptr noundef nonnull @its_build_int_cmd, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  br label %26

26:                                               ; preds = %21, %16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_irq_compose_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_node, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i64 %8(ptr noundef %4) #17
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %1, align 4
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.its_device, ptr %14, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_irq_set_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = alloca %struct.its_cmd_desc, align 4
  %6 = alloca %struct.its_cmd_desc, align 4
  %7 = alloca %struct.its_cmd_desc, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.its_device, ptr %9, i32 0, i32 2, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  br i1 %2, label %23, label %28

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #17
  %24 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %24, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %9, ptr %7, align 4
  %25 = getelementptr inbounds %struct.anon.83, ptr %7, i32 0, i32 1
  store i32 %14, ptr %25, align 4
  %26 = getelementptr inbounds %struct.its_device, ptr %9, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %27, ptr noundef nonnull @its_build_vint_cmd, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #17
  br label %44

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #17
  %29 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %29, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %9, ptr %6, align 4
  %30 = getelementptr inbounds %struct.anon.82, ptr %6, i32 0, i32 1
  store i32 %14, ptr %30, align 4
  %31 = getelementptr inbounds %struct.its_device, ptr %9, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %32, ptr noundef nonnull @its_build_vclear_cmd, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #17
  br label %44

33:                                               ; preds = %16
  br i1 %2, label %34, label %39

34:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #17
  %35 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %35, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %9, ptr %5, align 4
  %36 = getelementptr inbounds %struct.anon.83, ptr %5, i32 0, i32 1
  store i32 %14, ptr %36, align 4
  %37 = getelementptr inbounds %struct.its_device, ptr %9, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  call fastcc void @its_send_single_command(ptr noundef %38, ptr noundef nonnull @its_build_int_cmd, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #17
  br label %44

39:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %40 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %40, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %9, ptr %4, align 4
  %41 = getelementptr inbounds %struct.anon.82, ptr %4, i32 0, i32 1
  store i32 %14, ptr %41, align 4
  %42 = getelementptr inbounds %struct.its_device, ptr %9, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  call fastcc void @its_send_single_command(ptr noundef %43, ptr noundef nonnull @its_build_clear_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  br label %44

44:                                               ; preds = %39, %34, %28, %23, %3
  %45 = phi i32 [ -22, %3 ], [ 0, %34 ], [ 0, %39 ], [ 0, %23 ], [ 0, %28 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_irq_set_vcpu_affinity(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = alloca %struct.its_cmd_desc, align 4
  %6 = alloca %struct.its_cmd_desc, align 4
  %7 = alloca %struct.its_cmd_desc, align 4
  %8 = alloca %struct.its_cmd_desc, align 4
  %9 = alloca %struct.its_cmd_desc, align 4
  %10 = alloca %struct.its_cmd_desc, align 4
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.its_node, ptr %14, i32 0, i32 12
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %333, label %19

19:                                               ; preds = %2
  %20 = icmp eq ptr %1, null
  br i1 %20, label %21, label %101

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %23, %25
  %27 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 4
  tail call void @_raw_spin_lock(ptr noundef %27) #17
  %28 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %97, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1048576
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %97, label %37

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #17
  %38 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %38, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %12, ptr %10, align 4
  %39 = getelementptr inbounds %struct.anon.88, ptr %10, i32 0, i32 1
  store i32 %26, ptr %39, align 4
  %40 = load ptr, ptr %13, align 4
  call fastcc void @its_send_single_command(ptr noundef %40, ptr noundef nonnull @its_build_discard_cmd, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #17
  %41 = load ptr, ptr %32, align 4
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, -1048577
  store i32 %43, ptr %41, align 4
  %44 = load i32, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #17
  %45 = getelementptr inbounds i8, ptr %9, i32 12
  store i64 0, ptr %45, align 4, !annotation !24
  store ptr %12, ptr %9, align 4
  %46 = getelementptr inbounds %struct.anon.86, ptr %9, i32 0, i32 1
  store i32 %44, ptr %46, align 4
  %47 = getelementptr inbounds %struct.anon.86, ptr %9, i32 0, i32 2
  store i32 %26, ptr %47, align 4
  %48 = load ptr, ptr %13, align 4
  call fastcc void @its_send_single_command(ptr noundef %48, ptr noundef nonnull @its_build_mapti_cmd, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #17
  call fastcc void @lpi_update_config(ptr noundef %0, i8 noundef zeroext -1, i8 noundef zeroext -93) #17
  %49 = load ptr, ptr %13, align 4
  %50 = load ptr, ptr %28, align 4
  %51 = load i32, ptr @its_list_map, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %89, label %53

53:                                               ; preds = %37
  %54 = load ptr, ptr @gic_rdists, align 4
  %55 = getelementptr inbounds %struct.rdists, ptr %54, i32 0, i32 8
  %56 = load i8, ptr %55, align 1, !range !14
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %53
  %59 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vmovp_lock) #17
  %60 = getelementptr inbounds %struct.its_node, ptr %49, i32 0, i32 18
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr %struct.its_vm, ptr %50, i32 0, i32 8, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -1
  store i32 %64, ptr %62, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.its_vm, ptr %50, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.its_vm, ptr %50, i32 0, i32 3
  %72 = getelementptr inbounds i8, ptr %8, i32 8
  %73 = getelementptr inbounds %struct.its_node, ptr %49, i32 0, i32 9
  %74 = getelementptr inbounds %struct.anon.91, ptr %8, i32 0, i32 1
  br label %75

75:                                               ; preds = %75, %70
  %76 = phi i32 [ 0, %70 ], [ %85, %75 ]
  %77 = load ptr, ptr %71, align 4
  %78 = getelementptr ptr, ptr %77, i32 %76
  %79 = load ptr, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %72, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %79, ptr %8, align 4
  %80 = load ptr, ptr %73, align 8
  %81 = getelementptr inbounds %struct.its_vpe, ptr %79, i32 0, i32 9
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = getelementptr %struct.its_collection, ptr %80, i32 %83
  store ptr %84, ptr %74, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %49, ptr noundef nonnull @its_build_vmapp_cmd, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #17
  %85 = add nuw nsw i32 %76, 1
  %86 = load i32, ptr %67, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %75, label %88

88:                                               ; preds = %75, %66, %58
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vmovp_lock, i32 noundef %59) #17
  br label %89

89:                                               ; preds = %88, %53, %37
  %90 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 7
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, -1
  store i32 %92, ptr %90, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  store ptr null, ptr %28, align 4
  %95 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 6
  %96 = load ptr, ptr %95, align 4
  call void @kfree(ptr noundef %96) #17
  br label %97

97:                                               ; preds = %94, %89, %31, %21
  %98 = phi i32 [ 0, %89 ], [ 0, %94 ], [ -22, %31 ], [ -22, %21 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %99 = load i16, ptr %27, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %27, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %333

101:                                              ; preds = %19
  %102 = load i32, ptr %1, align 4
  switch i32 %102, label %333 [
    i32 0, label %103
    i32 1, label %275
    i32 2, label %313
    i32 3, label %313
  ]

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = sub i32 %105, %107
  %109 = getelementptr inbounds %struct.its_cmd_info, ptr %1, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %333, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 4
  tail call void @_raw_spin_lock(ptr noundef %113) #17
  %114 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %119, i32 16) #17
  %121 = extractvalue { i32, i1 } %120, 1
  br i1 %121, label %271, label %122, !prof !22

122:                                              ; preds = %117
  %123 = extractvalue { i32, i1 } %120, 0
  %124 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %123, i32 noundef 2848) #23
  %125 = icmp eq ptr %124, null
  br i1 %125, label %271, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %109, align 4
  %128 = load ptr, ptr %127, align 4
  store ptr %128, ptr %114, align 4
  %129 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 6
  store ptr %124, ptr %129, align 4
  %130 = load ptr, ptr %109, align 4
  br label %138

131:                                              ; preds = %112
  %132 = load ptr, ptr %109, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %115, %133
  br i1 %134, label %135, label %271

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 6
  %137 = load ptr, ptr %136, align 4
  br label %138

138:                                              ; preds = %135, %126
  %139 = phi ptr [ %132, %135 ], [ %130, %126 ]
  %140 = phi ptr [ %137, %135 ], [ %124, %126 ]
  %141 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 6
  %142 = getelementptr %struct.its_vlpi_map, ptr %140, i32 %108
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %142, ptr noundef align 4 dereferenceable(16) %139, i32 16, i1 false) #17
  %143 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, 1048576
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %170, label %148

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 3
  %150 = load i32, ptr %149, align 4
  %151 = icmp ule i32 %150, %108
  %152 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %153 = xor i1 %152, true
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %155, label %156, !prof !22

155:                                              ; preds = %148
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %156

156:                                              ; preds = %155, %148
  br i1 %151, label %160, label %157

157:                                              ; preds = %156
  %158 = load ptr, ptr %141, align 4
  %159 = getelementptr %struct.its_vlpi_map, ptr %158, i32 %108
  br label %160

160:                                              ; preds = %157, %156
  %161 = phi ptr [ %159, %157 ], [ null, %156 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #17
  %162 = getelementptr inbounds i8, ptr %7, i32 12
  store i64 0, ptr %162, align 4, !annotation !24
  %163 = getelementptr inbounds %struct.its_vlpi_map, ptr %161, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  store ptr %164, ptr %7, align 4
  %165 = getelementptr inbounds %struct.anon.93, ptr %7, i32 0, i32 1
  store ptr %12, ptr %165, align 4
  %166 = getelementptr inbounds %struct.anon.93, ptr %7, i32 0, i32 2
  store i32 %108, ptr %166, align 4
  %167 = getelementptr inbounds %struct.its_vlpi_map, ptr %161, i32 0, i32 4
  %168 = load i8, ptr %167, align 1, !range !14
  store i8 %168, ptr %162, align 4
  %169 = load ptr, ptr %13, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %169, ptr noundef nonnull @its_build_vmovi_cmd, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #17
  br label %271

170:                                              ; preds = %138
  %171 = load ptr, ptr %13, align 4
  %172 = load ptr, ptr %109, align 4
  %173 = load ptr, ptr %172, align 4
  %174 = load i32, ptr @its_list_map, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %234, label %176

176:                                              ; preds = %170
  %177 = load ptr, ptr @gic_rdists, align 4
  %178 = getelementptr inbounds %struct.rdists, ptr %177, i32 0, i32 8
  %179 = load i8, ptr %178, align 1, !range !14
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %234

181:                                              ; preds = %176
  %182 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vmovp_lock) #17
  %183 = getelementptr inbounds %struct.its_node, ptr %171, i32 0, i32 18
  %184 = load i32, ptr %183, align 8
  %185 = getelementptr %struct.its_vm, ptr %173, i32 0, i32 8, i32 %184
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, 1
  store i32 %187, ptr %185, align 4
  %188 = load i32, ptr %183, align 8
  %189 = getelementptr %struct.its_vm, ptr %173, i32 0, i32 8, i32 %188
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %231

192:                                              ; preds = %181
  %193 = getelementptr inbounds %struct.its_vm, ptr %173, i32 0, i32 4
  %194 = load i32, ptr %193, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %231

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.its_vm, ptr %173, i32 0, i32 3
  %198 = getelementptr inbounds i8, ptr %6, i32 8
  %199 = getelementptr inbounds %struct.its_node, ptr %171, i32 0, i32 9
  %200 = getelementptr inbounds %struct.anon.91, ptr %6, i32 0, i32 1
  %201 = getelementptr inbounds i8, ptr %5, i32 4
  br label %202

202:                                              ; preds = %202, %196
  %203 = phi i32 [ 0, %196 ], [ %228, %202 ]
  %204 = load ptr, ptr %197, align 4
  %205 = getelementptr ptr, ptr %204, i32 %203
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.its_vpe, ptr %206, i32 0, i32 3
  %208 = load i32, ptr %207, align 4
  %209 = call ptr @irq_get_irq_data(i32 noundef %208) #17
  %210 = call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #17
  %211 = trunc i32 %210 to i16
  %212 = getelementptr inbounds %struct.its_vpe, ptr %206, i32 0, i32 9
  store i16 %211, ptr %212, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %198, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %206, ptr %6, align 4
  store i8 1, ptr %198, align 4
  %213 = load ptr, ptr %199, align 8
  %214 = and i32 %210, 65535
  %215 = getelementptr %struct.its_collection, ptr %213, i32 %214
  store ptr %215, ptr %200, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %171, ptr noundef nonnull @its_build_vmapp_cmd, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %201, i8 0, i32 16, i1 false) #17, !annotation !24
  store ptr %206, ptr %5, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %171, ptr noundef nonnull @its_build_vinvall_cmd, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #17
  %216 = load i16, ptr %212, align 4
  %217 = zext i16 %216 to i32
  %218 = and i32 %217, 31
  %219 = add nuw nsw i32 %218, 1
  %220 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %219
  %221 = lshr i32 %217, 5
  %222 = sub nsw i32 0, %221
  %223 = getelementptr i32, ptr %220, i32 %222
  %224 = getelementptr inbounds %struct.irq_data, ptr %209, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.irq_common_data, ptr %225, i32 0, i32 4
  %227 = load i32, ptr %223, align 4
  store i32 %227, ptr %226, align 4
  %228 = add nuw nsw i32 %203, 1
  %229 = load i32, ptr %193, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %202, label %231

231:                                              ; preds = %202, %192, %181
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vmovp_lock, i32 noundef %182) #17
  %232 = load ptr, ptr %143, align 4
  %233 = load i32, ptr %232, align 4
  br label %234

234:                                              ; preds = %231, %176, %170
  %235 = phi i32 [ %145, %170 ], [ %145, %176 ], [ %233, %231 ]
  %236 = phi ptr [ %144, %170 ], [ %144, %176 ], [ %232, %231 ]
  %237 = or i32 %235, 1048576
  store i32 %237, ptr %236, align 4
  %238 = load ptr, ptr %109, align 4
  %239 = getelementptr inbounds %struct.its_vlpi_map, ptr %238, i32 0, i32 3
  %240 = load i8, ptr %239, align 4
  call fastcc void @lpi_write_config(ptr noundef %0, i8 noundef zeroext -1, i8 noundef zeroext %240) #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %241 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %241, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %12, ptr %4, align 4
  %242 = getelementptr inbounds %struct.anon.88, ptr %4, i32 0, i32 1
  store i32 %108, ptr %242, align 4
  %243 = load ptr, ptr %13, align 4
  call fastcc void @its_send_single_command(ptr noundef %243, ptr noundef nonnull @its_build_discard_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  %244 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 3
  %245 = load i32, ptr %244, align 4
  %246 = icmp ule i32 %245, %108
  %247 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %248 = xor i1 %247, true
  %249 = select i1 %246, i1 %248, i1 false
  br i1 %249, label %250, label %251, !prof !22

250:                                              ; preds = %234
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %251

251:                                              ; preds = %250, %234
  br i1 %246, label %255, label %252

252:                                              ; preds = %251
  %253 = load ptr, ptr %141, align 4
  %254 = getelementptr %struct.its_vlpi_map, ptr %253, i32 %108
  br label %255

255:                                              ; preds = %252, %251
  %256 = phi ptr [ %254, %252 ], [ null, %251 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %257 = getelementptr inbounds i8, ptr %3, i32 16
  store i32 0, ptr %257, align 4, !annotation !24
  %258 = getelementptr inbounds %struct.its_vlpi_map, ptr %256, i32 0, i32 1
  %259 = load ptr, ptr %258, align 4
  store ptr %259, ptr %3, align 4
  %260 = getelementptr inbounds %struct.anon.92, ptr %3, i32 0, i32 1
  store ptr %12, ptr %260, align 4
  %261 = getelementptr inbounds %struct.its_vlpi_map, ptr %256, i32 0, i32 2
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr inbounds %struct.anon.92, ptr %3, i32 0, i32 2
  store i32 %262, ptr %263, align 4
  %264 = getelementptr inbounds %struct.anon.92, ptr %3, i32 0, i32 3
  store i32 %108, ptr %264, align 4
  %265 = getelementptr inbounds %struct.its_vlpi_map, ptr %256, i32 0, i32 4
  %266 = load i8, ptr %265, align 1, !range !14
  store i8 %266, ptr %257, align 4
  %267 = load ptr, ptr %13, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %267, ptr noundef nonnull @its_build_vmapti_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  %268 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 7
  %269 = load i32, ptr %268, align 4
  %270 = add i32 %269, 1
  store i32 %270, ptr %268, align 4
  br label %271

271:                                              ; preds = %255, %160, %131, %122, %117
  %272 = phi i32 [ 0, %160 ], [ 0, %255 ], [ -22, %131 ], [ -12, %122 ], [ -12, %117 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %273 = load i16, ptr %113, align 4
  %274 = add i16 %273, 1
  store i16 %274, ptr %113, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %333

275:                                              ; preds = %101
  %276 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 4
  tail call void @_raw_spin_lock(ptr noundef %276) #17
  %277 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %278 = load ptr, ptr %277, align 4
  %279 = load i32, ptr %278, align 4
  %280 = and i32 %279, 1048576
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %309, label %282

282:                                              ; preds = %275
  %283 = load ptr, ptr %11, align 4
  %284 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr inbounds %struct.its_device, ptr %283, i32 0, i32 2, i32 2
  %287 = load i32, ptr %286, align 4
  %288 = sub i32 %285, %287
  %289 = getelementptr inbounds %struct.its_device, ptr %283, i32 0, i32 2, i32 3
  %290 = load i32, ptr %289, align 4
  %291 = icmp ule i32 %290, %288
  %292 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %293 = xor i1 %292, true
  %294 = select i1 %291, i1 %293, i1 false
  br i1 %294, label %295, label %296, !prof !22

295:                                              ; preds = %282
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %296

296:                                              ; preds = %295, %282
  br i1 %291, label %309, label %297

297:                                              ; preds = %296
  %298 = getelementptr inbounds %struct.its_device, ptr %283, i32 0, i32 2, i32 6
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr %struct.its_vlpi_map, ptr %299, i32 %288
  %301 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 5
  %302 = load ptr, ptr %301, align 4
  %303 = icmp ne ptr %302, null
  %304 = icmp ne ptr %300, null
  %305 = select i1 %303, i1 %304, i1 false
  br i1 %305, label %306, label %309

306:                                              ; preds = %297
  %307 = getelementptr inbounds %struct.its_cmd_info, ptr %1, i32 0, i32 1
  %308 = load ptr, ptr %307, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %308, ptr noundef nonnull align 4 dereferenceable(16) %300, i32 16, i1 false) #17
  br label %309

309:                                              ; preds = %306, %297, %296, %275
  %310 = phi i32 [ 0, %306 ], [ -22, %297 ], [ -22, %275 ], [ -22, %296 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %311 = load i16, ptr %276, align 4
  %312 = add i16 %311, 1
  store i16 %312, ptr %276, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %333

313:                                              ; preds = %101, %101
  %314 = getelementptr inbounds %struct.its_device, ptr %12, i32 0, i32 2, i32 5
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %333, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %319 = load ptr, ptr %318, align 4
  %320 = load i32, ptr %319, align 4
  %321 = and i32 %320, 1048576
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %333, label %323

323:                                              ; preds = %317
  %324 = icmp eq i32 %102, 3
  %325 = getelementptr inbounds %struct.its_cmd_info, ptr %1, i32 0, i32 1
  %326 = load i8, ptr %325, align 4
  br i1 %324, label %327, label %328

327:                                              ; preds = %323
  tail call fastcc void @lpi_update_config(ptr noundef %0, i8 noundef zeroext -1, i8 noundef zeroext %326) #17
  br label %329

328:                                              ; preds = %323
  tail call fastcc void @lpi_write_config(ptr noundef %0, i8 noundef zeroext -1, i8 noundef zeroext %326) #17
  br label %329

329:                                              ; preds = %328, %327
  %330 = load i8, ptr %325, align 4
  %331 = and i8 %330, 1
  %332 = icmp ne i8 %331, 0
  tail call fastcc void @its_vlpi_set_doorbell(ptr noundef %0, i1 noundef zeroext %332) #17
  br label %333

333:                                              ; preds = %329, %317, %313, %309, %271, %103, %101, %97, %2
  %334 = phi i32 [ %310, %309 ], [ %98, %97 ], [ -22, %2 ], [ -22, %101 ], [ %272, %271 ], [ -22, %103 ], [ 0, %329 ], [ -22, %317 ], [ -22, %313 ]
  ret i32 %334
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @its_vlpi_set_doorbell(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = zext i1 %1 to i8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 2, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.its_node, ptr %13, i32 0, i32 12
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 1099511627776
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 2, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ule i32 %20, %11
  %22 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !22

25:                                               ; preds = %18
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %26

26:                                               ; preds = %25, %18
  br i1 %21, label %31, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 2, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.its_vlpi_map, ptr %29, i32 %11
  br label %31

31:                                               ; preds = %27, %26
  %32 = phi ptr [ %30, %27 ], [ null, %26 ]
  %33 = getelementptr inbounds %struct.its_vlpi_map, ptr %32, i32 0, i32 4
  %34 = load i8, ptr %33, align 1, !range !14
  %35 = icmp eq i8 %34, %4
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  store i8 %4, ptr %33, align 1
  %37 = load i32, ptr %19, align 4
  %38 = icmp ule i32 %37, %11
  %39 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !22

42:                                               ; preds = %36
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %43

43:                                               ; preds = %42, %36
  br i1 %38, label %48, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.its_device, ptr %6, i32 0, i32 2, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr %struct.its_vlpi_map, ptr %46, i32 %11
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi ptr [ %47, %44 ], [ null, %43 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %50 = getelementptr inbounds i8, ptr %3, i32 12
  store i64 0, ptr %50, align 4, !annotation !24
  %51 = getelementptr inbounds %struct.its_vlpi_map, ptr %49, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %52, ptr %3, align 4
  %53 = getelementptr inbounds %struct.anon.93, ptr %3, i32 0, i32 1
  store ptr %6, ptr %53, align 4
  %54 = getelementptr inbounds %struct.anon.93, ptr %3, i32 0, i32 2
  store i32 %11, ptr %54, align 4
  %55 = getelementptr inbounds %struct.its_vlpi_map, ptr %49, i32 0, i32 4
  %56 = load i8, ptr %55, align 1, !range !14
  store i8 %56, ptr %50, align 4
  %57 = load ptr, ptr %12, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %57, ptr noundef nonnull @its_build_vmovi_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  br label %58

58:                                               ; preds = %48, %31, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpi_update_config(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = alloca %struct.its_cmd_desc, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @lpi_write_config(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2)
  %8 = load ptr, ptr @gic_rdists, align 4
  %9 = getelementptr inbounds %struct.rdists, ptr %8, i32 0, i32 9
  %10 = load i8, ptr %9, align 2, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  br label %178

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.its_node, ptr %18, i32 0, i32 12
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 1099511627776
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1048576
  br i1 %22, label %27, label %31

27:                                               ; preds = %16
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %178

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  br label %65

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %33 = icmp eq i32 %26, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.its_device, ptr %35, i32 0, i32 2, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %37, %39
  %41 = getelementptr inbounds %struct.its_device, ptr %35, i32 0, i32 2, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp ule i32 %42, %40
  %44 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !22

47:                                               ; preds = %34
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %48

48:                                               ; preds = %47, %34
  br i1 %43, label %65, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.its_device, ptr %35, i32 0, i32 2, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr %struct.its_vlpi_map, ptr %51, i32 %40
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr inbounds %struct.its_device, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.its_node, ptr %57, i32 0, i32 12
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 1099511627776
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63, !prof !22

62:                                               ; preds = %54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef null) #17
  br label %63

63:                                               ; preds = %62, %54
  %64 = getelementptr %struct.its_vlpi_map, ptr %51, i32 %40, i32 2
  br label %68

65:                                               ; preds = %49, %48, %31, %29
  %66 = phi ptr [ %30, %29 ], [ %32, %49 ], [ %32, %48 ], [ %32, %31 ]
  %67 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi ptr [ %32, %63 ], [ %66, %65 ]
  %70 = phi ptr [ %64, %63 ], [ %67, %65 ]
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %69, align 4
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 1048576
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %102, label %76

76:                                               ; preds = %68
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 2, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 %79, %81
  %83 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 2, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp ule i32 %84, %82
  %86 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %90, !prof !22

89:                                               ; preds = %76
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %90

90:                                               ; preds = %89, %76
  br i1 %85, label %102, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 2, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr %struct.its_vlpi_map, ptr %93, i32 %82
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = getelementptr %struct.its_vlpi_map, ptr %93, i32 %82, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.its_vpe, ptr %98, i32 0, i32 8
  %100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %99) #17
  %101 = getelementptr inbounds %struct.its_vpe, ptr %98, i32 0, i32 9
  br label %112

102:                                              ; preds = %91, %90, %68
  %103 = load ptr, ptr %6, align 4
  %104 = getelementptr inbounds %struct.its_device, ptr %103, i32 0, i32 2, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.its_device, ptr %103, i32 0, i32 2, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = sub i32 %107, %109
  %111 = getelementptr i16, ptr %105, i32 %110
  br label %112

112:                                              ; preds = %102, %96
  %113 = phi i32 [ 0, %102 ], [ %100, %96 ]
  %114 = phi ptr [ %111, %102 ], [ %101, %96 ]
  %115 = load i16, ptr %114, align 2
  %116 = zext i16 %115 to i32
  %117 = load ptr, ptr @gic_rdists, align 4
  %118 = load ptr, ptr %117, align 8
  %119 = ptrtoint ptr %118 to i32
  %120 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %116
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, %119
  %123 = inttoptr i32 %122 to ptr
  tail call void @_raw_spin_lock(ptr noundef %123) #17
  %124 = load ptr, ptr @gic_rdists, align 4
  %125 = load ptr, ptr %124, align 8
  %126 = ptrtoint ptr %125 to i32
  %127 = load i32, ptr %120, align 4
  %128 = add i32 %127, %126
  %129 = inttoptr i32 %128 to ptr
  %130 = getelementptr inbounds %struct.anon, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %71) #17, !srcloc !11
  %133 = getelementptr i8, ptr %131, i32 192
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #17, !srcloc !10
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %137, %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !39
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #17, !srcloc !10
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %137

141:                                              ; preds = %137, %112
  %142 = load ptr, ptr @gic_rdists, align 4
  %143 = load ptr, ptr %142, align 8
  %144 = ptrtoint ptr %143 to i32
  %145 = load i32, ptr %120, align 4
  %146 = add i32 %145, %144
  %147 = inttoptr i32 %146 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %148 = load i16, ptr %147, align 4
  %149 = add i16 %148, 1
  store i16 %149, ptr %147, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %150 = load ptr, ptr %69, align 4
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 1048576
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %198, label %154

154:                                              ; preds = %141
  %155 = load ptr, ptr %6, align 4
  %156 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.its_device, ptr %155, i32 0, i32 2, i32 2
  %159 = load i32, ptr %158, align 4
  %160 = sub i32 %157, %159
  %161 = getelementptr inbounds %struct.its_device, ptr %155, i32 0, i32 2, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = icmp ule i32 %162, %160
  %164 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %165 = xor i1 %164, true
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %167, label %168, !prof !22

167:                                              ; preds = %154
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %168

168:                                              ; preds = %167, %154
  br i1 %163, label %198, label %169

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.its_device, ptr %155, i32 0, i32 2, i32 6
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr %struct.its_vlpi_map, ptr %171, i32 %160
  %173 = icmp eq ptr %172, null
  br i1 %173, label %198, label %174

174:                                              ; preds = %169
  %175 = getelementptr %struct.its_vlpi_map, ptr %171, i32 %160, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.its_vpe, ptr %176, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %177, i32 noundef %113) #17
  br label %198

178:                                              ; preds = %27, %12
  %179 = phi i32 [ %15, %12 ], [ %25, %27 ]
  %180 = and i32 %179, 1048576
  %181 = icmp eq i32 %180, 0
  %182 = load ptr, ptr %6, align 4
  %183 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.its_device, ptr %182, i32 0, i32 2, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = sub i32 %184, %186
  br i1 %181, label %188, label %193

188:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #17
  %189 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %189, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %7, ptr %5, align 4
  %190 = getelementptr inbounds %struct.anon.81, ptr %5, i32 0, i32 1
  store i32 %187, ptr %190, align 4
  %191 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  call fastcc void @its_send_single_command(ptr noundef %192, ptr noundef nonnull @its_build_inv_cmd, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #17
  br label %198

193:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %194 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %194, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %7, ptr %4, align 4
  %195 = getelementptr inbounds %struct.anon.81, ptr %4, i32 0, i32 1
  store i32 %187, ptr %195, align 4
  %196 = getelementptr inbounds %struct.its_device, ptr %7, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %197, ptr noundef nonnull @its_build_vinv_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  br label %198

198:                                              ; preds = %193, %188, %174, %169, %168, %141
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @its_send_single_vcommand(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %5 = tail call fastcc ptr @its_allocate_entry(ptr noundef %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #17
  br label %63

8:                                                ; preds = %3
  %9 = tail call ptr %1(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #17
  %10 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 17
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %15(ptr noundef nonnull %5, i32 noundef 32) #17
  br label %17

16:                                               ; preds = %8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !27
  br label %17

17:                                               ; preds = %16, %14
  %18 = icmp eq ptr %9, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %17
  %20 = tail call fastcc ptr @its_allocate_entry(ptr noundef %0)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, -256
  %25 = or i64 %24, 37
  store i64 %25, ptr %20, align 8
  %26 = getelementptr inbounds %struct.its_vpe, ptr %9, i32 0, i32 10
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr [4 x i64], ptr %20, i32 0, i32 1
  %29 = zext i16 %27 to i64
  %30 = load i64, ptr %28, align 8
  %31 = and i64 %30, -281470681743361
  %32 = shl nuw nsw i64 %29, 32
  %33 = or i64 %31, %32
  store i64 %33, ptr %28, align 8
  %34 = load i64, ptr %10, align 8
  %35 = and i64 %34, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %22
  %38 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %38(ptr noundef nonnull %20, i32 noundef 32) #17
  br label %40

39:                                               ; preds = %22
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !27
  br label %40

40:                                               ; preds = %39, %37, %19, %17
  %41 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %42, i32 144
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #17, !srcloc !10
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 7
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = ptrtoint ptr %47 to i32
  %51 = ptrtoint ptr %49 to i32
  %52 = sub i32 %50, %51
  %53 = load ptr, ptr %41, align 8
  %54 = getelementptr i8, ptr %53, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #17, !srcloc !11
  %55 = load ptr, ptr %46, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #17
  %56 = tail call fastcc i32 @its_wait_for_range_completion(ptr noundef %0, i64 noundef %45, ptr noundef %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %40
  %59 = tail call i32 @___ratelimit(ptr noundef nonnull @its_send_single_vcommand._rs, ptr noundef nonnull @__func__.its_send_single_vcommand) #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %1) #18
  br label %63

63:                                               ; preds = %61, %58, %40, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_vmovi_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 12
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 1099511627776
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.anon.93, ptr %2, i32 0, i32 3
  %10 = load i8, ptr %9, align 4, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.its_vpe, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %8, %3
  %17 = phi i32 [ %15, %12 ], [ 1023, %8 ], [ 1023, %3 ]
  %18 = load i64, ptr %1, align 8
  %19 = and i64 %18, -256
  %20 = or i64 %19, 33
  store i64 %20, ptr %1, align 8
  %21 = getelementptr inbounds %struct.anon.93, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.its_device, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = and i64 %20, 4294967073
  %27 = shl nuw i64 %25, 32
  %28 = or i64 %27, %26
  store i64 %28, ptr %1, align 8
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.its_vpe, ptr %29, i32 0, i32 10
  %31 = load i16, ptr %30, align 2
  %32 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %33 = zext i16 %31 to i64
  %34 = load i64, ptr %32, align 8
  %35 = and i64 %34, -281470681743361
  %36 = shl nuw nsw i64 %33, 32
  %37 = or i64 %35, %36
  store i64 %37, ptr %32, align 8
  %38 = getelementptr inbounds %struct.anon.93, ptr %2, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = and i64 %37, -4294967296
  %42 = or i64 %41, %40
  store i64 %42, ptr %32, align 8
  %43 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %44 = zext i32 %17 to i64
  %45 = load i64, ptr %43, align 8
  %46 = and i64 %45, 4294967294
  %47 = shl nuw i64 %44, 32
  %48 = or i64 %46, %47
  %49 = or i64 %48, 1
  store i64 %49, ptr %43, align 8
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.its_vpe, ptr %50, i32 0, i32 9
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = getelementptr %struct.its_collection, ptr %52, i32 %55
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp ne i64 %58, 0
  %60 = load i1, ptr @valid_col.__already_done, align 1
  %61 = xor i1 %60, true
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %64, !prof !22

63:                                               ; preds = %16
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %64

64:                                               ; preds = %63, %16
  %65 = icmp eq ptr %56, null
  %66 = or i1 %59, %65
  %67 = select i1 %66, ptr null, ptr %50
  ret ptr %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpi_write_config(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.its_device, ptr %11, i32 0, i32 2, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = getelementptr inbounds %struct.its_device, ptr %11, i32 0, i32 2, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp ule i32 %18, %16
  %20 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !22

23:                                               ; preds = %9
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %24

24:                                               ; preds = %23, %9
  br i1 %19, label %44, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.its_device, ptr %11, i32 0, i32 2, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.its_vlpi_map, ptr %27, i32 %16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.its_vm, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @page_address(ptr noundef %33) #17
  %35 = getelementptr %struct.its_vlpi_map, ptr %27, i32 %16, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = xor i8 %1, -1
  %38 = getelementptr %struct.its_vlpi_map, ptr %27, i32 %16, i32 3
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, %37
  %41 = or i8 %40, %2
  %42 = or i8 %41, 2
  store i8 %42, ptr %38, align 4
  %43 = load ptr, ptr @gic_rdists, align 4
  br label %51

44:                                               ; preds = %25, %24, %3
  %45 = load ptr, ptr @gic_rdists, align 4
  %46 = getelementptr inbounds %struct.rdists, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = xor i8 %1, -1
  br label %51

51:                                               ; preds = %44, %30
  %52 = phi i8 [ %50, %44 ], [ %37, %30 ]
  %53 = phi ptr [ %45, %44 ], [ %43, %30 ]
  %54 = phi i32 [ %49, %44 ], [ %36, %30 ]
  %55 = phi ptr [ %47, %44 ], [ %34, %30 ]
  %56 = getelementptr i8, ptr %55, i32 %54
  %57 = getelementptr i8, ptr %56, i32 -8192
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, %52
  %60 = or i8 %59, %2
  %61 = or i8 %60, 2
  store i8 %61, ptr %57, align 1
  %62 = getelementptr inbounds %struct.rdists, ptr %53, i32 0, i32 3
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 1
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %51
  %67 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %67(ptr noundef %57, i32 noundef 1) #17
  br label %69

68:                                               ; preds = %51
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !40
  br label %69

69:                                               ; preds = %68, %66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_inv_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.81, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_node, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i16, ptr %12, i32 %6
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr %struct.its_collection, ptr %10, i32 %15
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, -256
  %19 = or i64 %18, 12
  store i64 %19, ptr %1, align 8
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.its_device, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = and i64 %19, 4294967052
  %25 = shl nuw i64 %23, 32
  %26 = or i64 %25, %24
  store i64 %26, ptr %1, align 8
  %27 = load i32, ptr %5, align 4
  %28 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %29 = zext i32 %27 to i64
  %30 = load i64, ptr %28, align 8
  %31 = and i64 %30, -4294967296
  %32 = or i64 %31, %29
  store i64 %32, ptr %28, align 8
  %33 = load i64, ptr %16, align 8
  %34 = and i64 %33, 65535
  %35 = icmp ne i64 %34, 0
  %36 = load i1, ptr @valid_col.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !22

39:                                               ; preds = %3
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %40

40:                                               ; preds = %39, %3
  %41 = select i1 %35, ptr null, ptr %16
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_vinv_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.81, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ule i32 %8, %6
  %10 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !22

13:                                               ; preds = %3
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %19, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.its_vlpi_map, ptr %17, i32 %6
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi ptr [ %18, %15 ], [ null, %14 ]
  %21 = load i64, ptr %1, align 8
  %22 = and i64 %21, -256
  %23 = or i64 %22, 12
  store i64 %23, ptr %1, align 8
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.its_device, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = and i64 %23, 4294967052
  %29 = shl nuw i64 %27, 32
  %30 = or i64 %29, %28
  store i64 %30, ptr %1, align 8
  %31 = load i32, ptr %5, align 4
  %32 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %33 = zext i32 %31 to i64
  %34 = load i64, ptr %32, align 8
  %35 = and i64 %34, -4294967296
  %36 = or i64 %35, %33
  store i64 %36, ptr %32, align 8
  %37 = getelementptr inbounds %struct.its_vlpi_map, ptr %20, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.its_vpe, ptr %38, i32 0, i32 9
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr %struct.its_collection, ptr %40, i32 %43
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp ne i64 %46, 0
  %48 = load i1, ptr @valid_col.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !22

51:                                               ; preds = %19
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %52

52:                                               ; preds = %51, %19
  %53 = icmp eq ptr %44, null
  %54 = or i1 %47, %53
  %55 = select i1 %54, ptr null, ptr %38
  ret ptr %55
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @its_select_cpu(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 {
  %3 = alloca [1 x %struct.cpumask], align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %6 = getelementptr inbounds %struct.its_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2097152
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %87

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.its_node, ptr %7, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, ptr %1, align 4
  %19 = load i32, ptr @__cpu_online_mask, align 4
  %20 = load i32, ptr @nr_cpu_ids, align 4
  br label %57

21:                                               ; preds = %13
  %22 = load i32, ptr @__cpu_online_mask, align 4
  %23 = load i32, ptr %1, align 4
  %24 = and i32 %22, 65535
  %25 = and i32 %24, %23
  store i32 %25, ptr %3, align 4
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %3) #19
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 2097152
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %33, %29
  %34 = phi i32 [ %27, %29 ], [ %47, %33 ]
  %35 = phi i32 [ 2147483647, %29 ], [ %46, %33 ]
  %36 = phi i32 [ %26, %29 ], [ %45, %33 ]
  %37 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, ptrtoint (ptr @cpu_lpi_count to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.cpu_lpi_count, ptr %40, i32 0, i32 1
  %42 = select i1 %32, ptr %41, ptr %40
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp slt i32 %43, %35
  %45 = select i1 %44, i32 %34, i32 %36
  %46 = call i32 @llvm.smin.i32(i32 %43, i32 %35) #17
  %47 = call i32 @cpumask_next(i32 noundef %34, ptr noundef nonnull %3) #19
  %48 = icmp ult i32 %47, %26
  br i1 %48, label %33, label %49

49:                                               ; preds = %33
  %50 = icmp ult i32 %45, %26
  br i1 %50, label %116, label %51

51:                                               ; preds = %49, %21
  %52 = phi i32 [ %45, %49 ], [ %26, %21 ]
  %53 = getelementptr inbounds %struct.its_node, ptr %7, i32 0, i32 17
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 4
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %116

57:                                               ; preds = %51, %17
  %58 = phi i32 [ %20, %17 ], [ %26, %51 ]
  %59 = phi i32 [ %19, %17 ], [ %22, %51 ]
  %60 = phi i32 [ %18, %17 ], [ %23, %51 ]
  %61 = and i32 %60, 65535
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 %59, i32 %62
  store i32 %64, ptr %3, align 4
  %65 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %3) #19
  %66 = icmp ult i32 %65, %58
  br i1 %66, label %67, label %116

67:                                               ; preds = %57
  %68 = load i32, ptr %9, align 4
  %69 = and i32 %68, 2097152
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %71, %67
  %72 = phi i32 [ %65, %67 ], [ %85, %71 ]
  %73 = phi i32 [ 2147483647, %67 ], [ %84, %71 ]
  %74 = phi i32 [ %58, %67 ], [ %83, %71 ]
  %75 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, ptrtoint (ptr @cpu_lpi_count to i32)
  %78 = inttoptr i32 %77 to ptr
  %79 = getelementptr inbounds %struct.cpu_lpi_count, ptr %78, i32 0, i32 1
  %80 = select i1 %70, ptr %79, ptr %78
  %81 = load volatile i32, ptr %80, align 4
  %82 = icmp slt i32 %81, %73
  %83 = select i1 %82, i32 %72, i32 %74
  %84 = call i32 @llvm.smin.i32(i32 %81, i32 %73) #17
  %85 = call i32 @cpumask_next(i32 noundef %72, ptr noundef nonnull %3) #19
  %86 = icmp ult i32 %85, %58
  br i1 %86, label %71, label %116

87:                                               ; preds = %2
  %88 = getelementptr inbounds %struct.irq_common_data, ptr %9, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr @__cpu_online_mask, align 4
  %91 = and i32 %89, 65535
  %92 = and i32 %91, %90
  store i32 %92, ptr %3, align 4
  %93 = load i32, ptr @nr_cpu_ids, align 4
  %94 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %3) #19
  %95 = icmp ult i32 %94, %93
  br i1 %95, label %96, label %116

96:                                               ; preds = %87
  %97 = load i32, ptr %9, align 4
  %98 = and i32 %97, 2097152
  %99 = icmp eq i32 %98, 0
  br label %100

100:                                              ; preds = %100, %96
  %101 = phi i32 [ %94, %96 ], [ %114, %100 ]
  %102 = phi i32 [ 2147483647, %96 ], [ %113, %100 ]
  %103 = phi i32 [ %93, %96 ], [ %112, %100 ]
  %104 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, ptrtoint (ptr @cpu_lpi_count to i32)
  %107 = inttoptr i32 %106 to ptr
  %108 = getelementptr inbounds %struct.cpu_lpi_count, ptr %107, i32 0, i32 1
  %109 = select i1 %99, ptr %108, ptr %107
  %110 = load volatile i32, ptr %109, align 4
  %111 = icmp slt i32 %110, %102
  %112 = select i1 %111, i32 %101, i32 %103
  %113 = call i32 @llvm.smin.i32(i32 %110, i32 %102) #17
  %114 = call i32 @cpumask_next(i32 noundef %101, ptr noundef nonnull %3) #19
  %115 = icmp ult i32 %114, %93
  br i1 %115, label %100, label %116

116:                                              ; preds = %100, %87, %71, %57, %51, %49
  %117 = phi i32 [ %45, %49 ], [ %52, %51 ], [ %58, %57 ], [ %93, %87 ], [ %83, %71 ], [ %112, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_movi_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.87, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_node, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i16, ptr %12, i32 %6
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr %struct.its_collection, ptr %10, i32 %15
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, -256
  %19 = or i64 %18, 1
  store i64 %19, ptr %1, align 8
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.its_device, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = and i64 %19, 4294967041
  %25 = shl nuw i64 %23, 32
  %26 = or i64 %25, %24
  store i64 %26, ptr %1, align 8
  %27 = load i32, ptr %5, align 4
  %28 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %29 = zext i32 %27 to i64
  %30 = load i64, ptr %28, align 8
  %31 = and i64 %30, -4294967296
  %32 = or i64 %31, %29
  store i64 %32, ptr %28, align 8
  %33 = getelementptr inbounds %struct.anon.87, ptr %2, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.its_collection, ptr %34, i32 0, i32 1
  %36 = load i16, ptr %35, align 8
  %37 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %38 = zext i16 %36 to i64
  %39 = load i64, ptr %37, align 8
  %40 = and i64 %39, -65536
  %41 = or i64 %40, %38
  store i64 %41, ptr %37, align 8
  %42 = load i64, ptr %16, align 8
  %43 = and i64 %42, 65535
  %44 = icmp ne i64 %43, 0
  %45 = load i1, ptr @valid_col.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !22

48:                                               ; preds = %3
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %49

49:                                               ; preds = %48, %3
  %50 = select i1 %44, ptr null, ptr %16
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_vint_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.83, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ule i32 %8, %6
  %10 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !22

13:                                               ; preds = %3
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %19, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.its_vlpi_map, ptr %17, i32 %6
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi ptr [ %18, %15 ], [ null, %14 ]
  %21 = load i64, ptr %1, align 8
  %22 = and i64 %21, -256
  %23 = or i64 %22, 3
  store i64 %23, ptr %1, align 8
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.its_device, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = and i64 %23, 4294967043
  %29 = shl nuw i64 %27, 32
  %30 = or i64 %29, %28
  store i64 %30, ptr %1, align 8
  %31 = load i32, ptr %5, align 4
  %32 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %33 = zext i32 %31 to i64
  %34 = load i64, ptr %32, align 8
  %35 = and i64 %34, -4294967296
  %36 = or i64 %35, %33
  store i64 %36, ptr %32, align 8
  %37 = getelementptr inbounds %struct.its_vlpi_map, ptr %20, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.its_vpe, ptr %38, i32 0, i32 9
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr %struct.its_collection, ptr %40, i32 %43
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp ne i64 %46, 0
  %48 = load i1, ptr @valid_col.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !22

51:                                               ; preds = %19
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %52

52:                                               ; preds = %51, %19
  %53 = icmp eq ptr %44, null
  %54 = or i1 %47, %53
  %55 = select i1 %54, ptr null, ptr %38
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_vclear_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.82, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ule i32 %8, %6
  %10 = load i1, ptr @dev_event_to_vlpi_map.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !22

13:                                               ; preds = %3
  store i1 true, ptr @dev_event_to_vlpi_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #17
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %19, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.its_vlpi_map, ptr %17, i32 %6
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi ptr [ %18, %15 ], [ null, %14 ]
  %21 = load i64, ptr %1, align 8
  %22 = and i64 %21, -256
  %23 = or i64 %22, 4
  store i64 %23, ptr %1, align 8
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.its_device, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = and i64 %23, 4294967044
  %29 = shl nuw i64 %27, 32
  %30 = or i64 %29, %28
  store i64 %30, ptr %1, align 8
  %31 = load i32, ptr %5, align 4
  %32 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %33 = zext i32 %31 to i64
  %34 = load i64, ptr %32, align 8
  %35 = and i64 %34, -4294967296
  %36 = or i64 %35, %33
  store i64 %36, ptr %32, align 8
  %37 = getelementptr inbounds %struct.its_vlpi_map, ptr %20, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.its_vpe, ptr %38, i32 0, i32 9
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr %struct.its_collection, ptr %40, i32 %43
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp ne i64 %46, 0
  %48 = load i1, ptr @valid_col.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !22

51:                                               ; preds = %19
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %52

52:                                               ; preds = %51, %19
  %53 = icmp eq ptr %44, null
  %54 = or i1 %47, %53
  %55 = select i1 %54, ptr null, ptr %38
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_int_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.83, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_node, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i16, ptr %12, i32 %6
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr %struct.its_collection, ptr %10, i32 %15
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, -256
  %19 = or i64 %18, 3
  store i64 %19, ptr %1, align 8
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.its_device, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = and i64 %19, 4294967043
  %25 = shl nuw i64 %23, 32
  %26 = or i64 %25, %24
  store i64 %26, ptr %1, align 8
  %27 = load i32, ptr %5, align 4
  %28 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %29 = zext i32 %27 to i64
  %30 = load i64, ptr %28, align 8
  %31 = and i64 %30, -4294967296
  %32 = or i64 %31, %29
  store i64 %32, ptr %28, align 8
  %33 = load i64, ptr %16, align 8
  %34 = and i64 %33, 65535
  %35 = icmp ne i64 %34, 0
  %36 = load i1, ptr @valid_col.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !22

39:                                               ; preds = %3
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %40

40:                                               ; preds = %39, %3
  %41 = select i1 %35, ptr null, ptr %16
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_clear_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.82, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_node, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i16, ptr %12, i32 %6
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr %struct.its_collection, ptr %10, i32 %15
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, -256
  %19 = or i64 %18, 4
  store i64 %19, ptr %1, align 8
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.its_device, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = and i64 %19, 4294967044
  %25 = shl nuw i64 %23, 32
  %26 = or i64 %25, %24
  store i64 %26, ptr %1, align 8
  %27 = load i32, ptr %5, align 4
  %28 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %29 = zext i32 %27 to i64
  %30 = load i64, ptr %28, align 8
  %31 = and i64 %30, -4294967296
  %32 = or i64 %31, %29
  store i64 %32, ptr %28, align 8
  %33 = load i64, ptr %16, align 8
  %34 = and i64 %33, 65535
  %35 = icmp ne i64 %34, 0
  %36 = load i1, ptr @valid_col.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !22

39:                                               ; preds = %3
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %40

40:                                               ; preds = %39, %3
  %41 = select i1 %35, ptr null, ptr %16
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_discard_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.88, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_node, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i16, ptr %12, i32 %6
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr %struct.its_collection, ptr %10, i32 %15
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, -256
  %19 = or i64 %18, 15
  store i64 %19, ptr %1, align 8
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.its_device, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = and i64 %19, 4294967055
  %25 = shl nuw i64 %23, 32
  %26 = or i64 %25, %24
  store i64 %26, ptr %1, align 8
  %27 = load i32, ptr %5, align 4
  %28 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %29 = zext i32 %27 to i64
  %30 = load i64, ptr %28, align 8
  %31 = and i64 %30, -4294967296
  %32 = or i64 %31, %29
  store i64 %32, ptr %28, align 8
  %33 = load i64, ptr %16, align 8
  %34 = and i64 %33, 65535
  %35 = icmp ne i64 %34, 0
  %36 = load i1, ptr @valid_col.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !22

39:                                               ; preds = %3
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %40

40:                                               ; preds = %39, %3
  %41 = select i1 %35, ptr null, ptr %16
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_mapti_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.anon.86, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_node, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i16, ptr %12, i32 %6
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr %struct.its_collection, ptr %10, i32 %15
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, -256
  %19 = or i64 %18, 10
  store i64 %19, ptr %1, align 8
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.its_device, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = and i64 %19, 4294967050
  %25 = shl nuw i64 %23, 32
  %26 = or i64 %25, %24
  store i64 %26, ptr %1, align 8
  %27 = load i32, ptr %5, align 4
  %28 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %29 = zext i32 %27 to i64
  %30 = load i64, ptr %28, align 8
  %31 = and i64 %30, -4294967296
  %32 = or i64 %31, %29
  store i64 %32, ptr %28, align 8
  %33 = getelementptr inbounds %struct.anon.86, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = zext i32 %34 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or i64 %36, %29
  store i64 %37, ptr %28, align 8
  %38 = getelementptr %struct.its_collection, ptr %10, i32 %15, i32 1
  %39 = load i16, ptr %38, align 8
  %40 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %41 = zext i16 %39 to i64
  %42 = load i64, ptr %40, align 8
  %43 = and i64 %42, -65536
  %44 = or i64 %43, %41
  store i64 %44, ptr %40, align 8
  %45 = load i64, ptr %16, align 8
  %46 = and i64 %45, 65535
  %47 = icmp ne i64 %46, 0
  %48 = load i1, ptr @valid_col.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !22

51:                                               ; preds = %3
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %52

52:                                               ; preds = %51, %3
  %53 = select i1 %47, ptr null, ptr %16
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_vmapp_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, -256
  %6 = or i64 %5, 41
  store i64 %6, ptr %1, align 8
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 10
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %11 = zext i16 %9 to i64
  %12 = load i64, ptr %10, align 8
  %13 = and i64 %12, -281470681743361
  %14 = shl nuw nsw i64 %11, 32
  %15 = or i64 %13, %14
  store i64 %15, ptr %10, align 8
  %16 = getelementptr inbounds %struct.anon.91, ptr %2, i32 0, i32 2
  %17 = load i8, ptr %16, align 4, !range !14
  %18 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %19 = icmp eq i8 %17, 0
  %20 = load i64, ptr %18, align 8
  %21 = and i64 %20, 9223372036854775807
  %22 = select i1 %19, i64 0, i64 -9223372036854775808
  %23 = or i64 %21, %22
  store i64 %23, ptr %18, align 8
  %24 = load i8, ptr %16, align 4, !range !14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 12
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 1099511627776
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %102, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.its_vpe, ptr %32, i32 0, i32 7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #17, !srcloc !35
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #17, !srcloc !42
  %35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !43
  %36 = icmp eq i32 %35, 0
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, -257
  %39 = select i1 %36, i64 256, i64 0
  %40 = or i64 %38, %39
  store i64 %40, ptr %1, align 8
  br label %102

41:                                               ; preds = %3
  %42 = load ptr, ptr %2, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = tail call ptr @page_address(ptr noundef %43) #17
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %45, i32 -2130706432, i32 8454144) #21, !srcloc !16
  %47 = getelementptr inbounds %struct.anon.91, ptr %2, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 22
  %51 = load i32, ptr %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add i64 %49, %52
  %54 = load i64, ptr %18, align 8
  %55 = and i64 %54, -4503599627304961
  %56 = and i64 %53, 4503599627304960
  %57 = or i64 %56, %55
  store i64 %57, ptr %18, align 8
  %58 = getelementptr [4 x i64], ptr %1, i32 0, i32 3
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, -4503599627304992
  %61 = and i32 %46, -65536
  %62 = zext i32 %61 to i64
  %63 = or i64 %60, %62
  %64 = load i32, ptr @lpi_id_bits, align 4
  %65 = trunc i32 %64 to i8
  %66 = add i8 %65, 31
  %67 = and i8 %66, 31
  %68 = zext i8 %67 to i64
  %69 = or i64 %63, %68
  store i64 %69, ptr %58, align 8
  %70 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 12
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 1099511627776
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %102, label %74

74:                                               ; preds = %41
  %75 = load ptr, ptr %2, align 4
  %76 = getelementptr inbounds %struct.its_vpe, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.its_vm, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = tail call ptr @page_address(ptr noundef %79) #17
  %81 = ptrtoint ptr %80 to i32
  %82 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %81, i32 -2130706432, i32 8454144) #21, !srcloc !16
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr inbounds %struct.its_vpe, ptr %83, i32 0, i32 7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !44
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #17, !srcloc !35
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #17, !srcloc !45
  %86 = extractvalue { i32, i32, i32 } %85, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  %87 = icmp eq i32 %86, 0
  %88 = load i64, ptr %1, align 8
  %89 = and i64 %88, -4503599627305729
  %90 = select i1 %87, i64 256, i64 0
  %91 = and i32 %82, -65536
  %92 = zext i32 %91 to i64
  %93 = or i64 %90, %92
  %94 = or i64 %93, %89
  store i64 %94, ptr %1, align 8
  %95 = load ptr, ptr %2, align 4
  %96 = getelementptr inbounds %struct.its_vpe, ptr %95, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64, ptr %10, align 8
  %100 = and i64 %99, -4294967296
  %101 = or i64 %100, %98
  store i64 %101, ptr %10, align 8
  br label %102

102:                                              ; preds = %74, %41, %31, %26
  %103 = load ptr, ptr %2, align 4
  %104 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.its_vpe, ptr %103, i32 0, i32 9
  %107 = load i16, ptr %106, align 4
  %108 = zext i16 %107 to i32
  %109 = getelementptr %struct.its_collection, ptr %105, i32 %108
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp ne i64 %111, 0
  %113 = load i1, ptr @valid_col.__already_done, align 1
  %114 = xor i1 %113, true
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %116, label %117, !prof !22

116:                                              ; preds = %102
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %117

117:                                              ; preds = %116, %102
  %118 = icmp eq ptr %109, null
  %119 = or i1 %112, %118
  %120 = select i1 %119, ptr null, ptr %103
  ret ptr %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_vinvall_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, -256
  %6 = or i64 %5, 45
  store i64 %6, ptr %1, align 8
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 10
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %11 = zext i16 %9 to i64
  %12 = load i64, ptr %10, align 8
  %13 = and i64 %12, -281470681743361
  %14 = shl nuw nsw i64 %11, 32
  %15 = or i64 %13, %14
  store i64 %15, ptr %10, align 8
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.its_vpe, ptr %16, i32 0, i32 9
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr %struct.its_collection, ptr %18, i32 %21
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp ne i64 %24, 0
  %26 = load i1, ptr @valid_col.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !22

29:                                               ; preds = %3
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %30

30:                                               ; preds = %29, %3
  %31 = icmp eq ptr %22, null
  %32 = or i1 %25, %31
  %33 = select i1 %32, ptr null, ptr %16
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_vmapti_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 12
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 1099511627776
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.anon.92, ptr %2, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.its_vpe, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %8, %3
  %17 = phi i32 [ %15, %12 ], [ 1023, %8 ], [ 1023, %3 ]
  %18 = load i64, ptr %1, align 8
  %19 = and i64 %18, -256
  %20 = or i64 %19, 42
  store i64 %20, ptr %1, align 8
  %21 = getelementptr inbounds %struct.anon.92, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.its_device, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = and i64 %20, 4294967082
  %27 = shl nuw i64 %25, 32
  %28 = or i64 %27, %26
  store i64 %28, ptr %1, align 8
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.its_vpe, ptr %29, i32 0, i32 10
  %31 = load i16, ptr %30, align 2
  %32 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %33 = zext i16 %31 to i64
  %34 = load i64, ptr %32, align 8
  %35 = and i64 %34, -281470681743361
  %36 = shl nuw nsw i64 %33, 32
  %37 = or i64 %35, %36
  store i64 %37, ptr %32, align 8
  %38 = getelementptr inbounds %struct.anon.92, ptr %2, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = and i64 %37, -4294967296
  %42 = or i64 %41, %40
  store i64 %42, ptr %32, align 8
  %43 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %44 = zext i32 %17 to i64
  %45 = load i64, ptr %43, align 8
  %46 = and i64 %45, 4294967295
  %47 = shl nuw i64 %44, 32
  %48 = or i64 %46, %47
  store i64 %48, ptr %43, align 8
  %49 = getelementptr inbounds %struct.anon.92, ptr %2, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = or i64 %47, %51
  store i64 %52, ptr %43, align 8
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.its_vpe, ptr %53, i32 0, i32 9
  %57 = load i16, ptr %56, align 4
  %58 = zext i16 %57 to i32
  %59 = getelementptr %struct.its_collection, ptr %55, i32 %58
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp ne i64 %61, 0
  %63 = load i1, ptr @valid_col.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !22

66:                                               ; preds = %16
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %67

67:                                               ; preds = %66, %16
  %68 = icmp eq ptr %59, null
  %69 = or i1 %62, %68
  %70 = select i1 %69, ptr null, ptr %53
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @free_lpi_range(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 16) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lpi_range, ptr %4, i32 0, i32 1
  store i32 %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.lpi_range, ptr %4, i32 0, i32 2
  store i32 %1, ptr %8, align 4
  tail call void @mutex_lock(ptr noundef nonnull @lpi_range_lock) #17
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @lpi_range_list, i32 0, i32 1), align 4
  %10 = icmp eq ptr %9, @lpi_range_list
  br i1 %10, label %11, label %15

11:                                               ; preds = %20, %6
  %12 = load ptr, ptr @lpi_range_list, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %4, ptr %13, align 4
  store ptr %12, ptr %4, align 8
  %14 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr @lpi_range_list, ptr %14, align 4
  store volatile ptr %4, ptr @lpi_range_list, align 4
  br label %45

15:                                               ; preds = %20, %6
  %16 = phi ptr [ %22, %20 ], [ %9, %6 ]
  %17 = getelementptr inbounds %struct.lpi_range, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @lpi_range_list
  br i1 %23, label %11, label %15

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.lpi_range, ptr %16, i32 0, i32 1
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %4, ptr %27, align 4
  store ptr %26, ptr %4, align 8
  %28 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %16, ptr %28, align 4
  store volatile ptr %4, ptr %16, align 4
  %29 = load i32, ptr %25, align 4
  %30 = getelementptr inbounds %struct.lpi_range, ptr %16, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  %33 = load i32, ptr %7, align 8
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  store i32 %29, ptr %7, align 8
  %36 = load i32, ptr %30, align 4
  %37 = load i32, ptr %8, align 4
  %38 = add i32 %37, %36
  store i32 %38, ptr %8, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  tail call void @kfree(ptr noundef %16) #17
  br label %43

43:                                               ; preds = %35, %24
  %44 = load ptr, ptr %4, align 8
  br label %45

45:                                               ; preds = %43, %11
  %46 = phi ptr [ %44, %43 ], [ %12, %11 ]
  %47 = phi ptr [ %28, %43 ], [ %14, %11 ]
  %48 = icmp eq ptr %46, @lpi_range_list
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %7, align 8
  %51 = load i32, ptr %8, align 4
  %52 = add i32 %51, %50
  %53 = getelementptr inbounds %struct.lpi_range, ptr %46, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  store i32 %50, ptr %53, align 4
  %57 = load i32, ptr %8, align 4
  %58 = getelementptr inbounds %struct.lpi_range, ptr %46, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  store i32 %60, ptr %58, align 4
  %61 = load ptr, ptr %47, align 4
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  tail call void @kfree(ptr noundef nonnull %4) #17
  br label %64

64:                                               ; preds = %56, %49, %45
  tail call void @mutex_unlock(ptr noundef nonnull @lpi_range_lock) #17
  br label %65

65:                                               ; preds = %64, %2
  %66 = phi i32 [ 0, %64 ], [ -12, %2 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_mapd_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #17, !range !15
  %9 = getelementptr inbounds %struct.its_device, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %11, i32 -2130706432, i32 8454144) #21, !srcloc !16
  %13 = add i32 %12, 255
  %14 = load i64, ptr %1, align 8
  %15 = and i64 %14, -256
  %16 = or i64 %15, 8
  store i64 %16, ptr %1, align 8
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.its_device, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  %21 = and i64 %16, 4294967048
  %22 = shl nuw i64 %20, 32
  %23 = or i64 %22, %21
  store i64 %23, ptr %1, align 8
  %24 = trunc i32 %8 to i8
  %25 = sub nsw i8 30, %24
  %26 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, -32
  %29 = and i8 %25, 31
  %30 = zext i8 %29 to i64
  %31 = select i1 %7, i64 30, i64 %30
  %32 = or i64 %28, %31
  store i64 %32, ptr %26, align 8
  %33 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, -4503599627370241
  %36 = and i32 %13, -256
  %37 = zext i32 %36 to i64
  %38 = or i64 %35, %37
  store i64 %38, ptr %33, align 8
  %39 = getelementptr inbounds %struct.anon.84, ptr %2, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = and i64 %38, 9218868441522372607
  %43 = select i1 %41, i64 0, i64 -9223372036854775808
  %44 = or i64 %43, %42
  store i64 %44, ptr %33, align 8
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_msi_prepare(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.msi_alloc_info, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @msi_get_domain_info(ptr noundef %0) #17
  %8 = getelementptr inbounds %struct.msi_domain_info, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr @gic_rdists, align 4
  %11 = getelementptr inbounds %struct.rdists, ptr %10, i32 0, i32 9
  %12 = load i8, ptr %11, align 2, !range !14
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.its_device, ptr %14, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %9
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.its_device, ptr %14, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %6, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i1, ptr @its_msi_prepare.__already_done, align 1
  br i1 %26, label %57, label %27, !prof !13

27:                                               ; preds = %25
  store i1 true, ptr @its_msi_prepare.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3475, i32 noundef 9, ptr noundef nonnull @.str.46, i32 noundef %6) #17
  br label %57

28:                                               ; preds = %21, %17, %4
  %29 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %29) #17
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #17
  %31 = getelementptr inbounds %struct.its_node, ptr %9, i32 0, i32 16
  br label %32

32:                                               ; preds = %37, %28
  %33 = phi ptr [ %31, %28 ], [ %34, %37 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %30) #17
  br label %43

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.its_device, ptr %34, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %6
  br i1 %40, label %41, label %32

41:                                               ; preds = %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %30) #17
  %42 = icmp eq ptr %34, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %41, %36
  %44 = tail call fastcc ptr @its_create_device(ptr noundef %9, i32 noundef %6, i32 noundef %2, i1 noundef zeroext true)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.msi_alloc_info, ptr %3, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %41
  %52 = phi ptr [ %34, %41 ], [ %44, %46 ]
  %53 = getelementptr inbounds %struct.its_device, ptr %52, i32 0, i32 6
  store i8 1, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %46, %43
  %55 = phi i32 [ -12, %43 ], [ 0, %46 ], [ 0, %51 ]
  %56 = phi ptr [ null, %43 ], [ %44, %46 ], [ %52, %51 ]
  tail call void @mutex_unlock(ptr noundef %29) #17
  store ptr %56, ptr %5, align 4
  br label %57

57:                                               ; preds = %54, %27, %25
  %58 = phi i32 [ %55, %54 ], [ -22, %27 ], [ -22, %25 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_get_domain_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @its_create_device(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.its_cmd_desc, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !24
  %8 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 504403158265495552
  %11 = icmp eq i64 %10, 72057594037927936
  br i1 %11, label %47, label %12

12:                                               ; preds = %4
  %13 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 1, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 504403158265495552
  %16 = icmp eq i64 %15, 72057594037927936
  br i1 %16, label %47, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 2, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 504403158265495552
  %21 = icmp eq i64 %20, 72057594037927936
  br i1 %21, label %47, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 3, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 504403158265495552
  %26 = icmp eq i64 %25, 72057594037927936
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 4, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 504403158265495552
  %31 = icmp eq i64 %30, 72057594037927936
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 5, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 504403158265495552
  %36 = icmp eq i64 %35, 72057594037927936
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 6, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 504403158265495552
  %41 = icmp eq i64 %40, 72057594037927936
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 7, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 504403158265495552
  %46 = icmp eq i64 %45, 72057594037927936
  br i1 %46, label %47, label %53

47:                                               ; preds = %42, %37, %32, %27, %22, %17, %12, %4
  %48 = phi i32 [ 0, %4 ], [ 1, %12 ], [ 2, %17 ], [ 3, %22 ], [ 4, %27 ], [ 5, %32 ], [ 6, %37 ], [ 7, %42 ]
  %49 = getelementptr %struct.its_node, ptr %0, i32 0, i32 8, i32 %48
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call fastcc zeroext i1 @its_alloc_table_entry(ptr noundef %0, ptr noundef nonnull %49, i32 noundef %1) #17
  br i1 %52, label %64, label %137

53:                                               ; preds = %47, %42
  %54 = icmp eq i32 %1, 0
  %55 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 false) #17, !range !15
  %56 = sub nsw i32 31, %55
  %57 = select i1 %54, i32 -1, i32 %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 12
  %60 = load i64, ptr %59, align 8
  %61 = lshr i64 %60, 13
  %62 = and i64 %61, 31
  %63 = icmp ult i64 %62, %58
  br i1 %63, label %137, label %64

64:                                               ; preds = %53, %51
  %65 = tail call i32 @llvm.ctpop.i32(i32 %2) #17, !range !15
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %74, label %67, !prof !47

67:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3367, i32 noundef 9, ptr noundef null) #17
  %68 = add i32 %2, -1
  %69 = icmp eq i32 %68, 0
  %70 = tail call i32 @llvm.ctlz.i32(i32 %68, i1 false) #17, !range !15
  %71 = sub nuw nsw i32 32, %70
  %72 = shl nuw i32 1, %71
  %73 = select i1 %69, i32 1, i32 %72
  br label %74

74:                                               ; preds = %67, %64
  %75 = phi i32 [ %73, %67 ], [ %2, %64 ]
  %76 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %77 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 60) #20
  %78 = tail call i32 @llvm.smax.i32(i32 %75, i32 2)
  %79 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 12
  %80 = load i64, ptr %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = lshr i32 %81, 4
  %83 = and i32 %82, 15
  %84 = add nuw nsw i32 %83, 1
  %85 = mul i32 %84, %78
  %86 = tail call i32 @llvm.smax.i32(i32 %85, i32 256)
  %87 = add nuw i32 %86, 255
  %88 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %87, i32 noundef 3520) #23
  br i1 %3, label %89, label %99

89:                                               ; preds = %74
  %90 = call fastcc ptr @its_lpi_alloc(i32 noundef %75, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %91 = icmp eq ptr %90, null
  br i1 %91, label %114, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %7, align 4
  %94 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %93, i32 2) #17
  %95 = extractvalue { i32, i1 } %94, 1
  br i1 %95, label %114, label %96, !prof !22

96:                                               ; preds = %92
  %97 = extractvalue { i32, i1 } %94, 0
  %98 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %97, i32 noundef 3520) #23
  br label %102

99:                                               ; preds = %74
  %100 = shl nuw i32 %78, 1
  %101 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %100, i32 noundef 3520) #23
  store i32 0, ptr %7, align 4
  store i32 0, ptr %6, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i32 [ 0, %99 ], [ %93, %96 ]
  %104 = phi ptr [ %101, %99 ], [ %98, %96 ]
  %105 = phi ptr [ null, %99 ], [ %90, %96 ]
  %106 = icmp eq ptr %77, null
  %107 = icmp eq ptr %88, null
  %108 = select i1 %106, i1 true, i1 %107
  %109 = icmp eq ptr %104, null
  %110 = select i1 %108, i1 true, i1 %109
  %111 = icmp eq ptr %105, null
  %112 = and i1 %111, %3
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %102, %92, %89
  %115 = phi ptr [ %105, %102 ], [ %90, %92 ], [ null, %89 ]
  %116 = phi ptr [ %104, %102 ], [ null, %92 ], [ null, %89 ]
  tail call void @kfree(ptr noundef %77) #17
  tail call void @kfree(ptr noundef %88) #17
  tail call void @bitmap_free(ptr noundef %115) #17
  tail call void @kfree(ptr noundef %116) #17
  br label %137

117:                                              ; preds = %102
  %118 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %118(ptr noundef nonnull %88, i32 noundef %87) #17
  %119 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 1
  store ptr %0, ptr %119, align 8
  %120 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 3
  store ptr %88, ptr %120, align 4
  %121 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 4
  store i32 %78, ptr %121, align 8
  %122 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 2
  store ptr %105, ptr %122, align 4
  %123 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 2, i32 1
  store ptr %104, ptr %123, align 8
  %124 = load i32, ptr %6, align 4
  %125 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 2, i32 2
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 2, i32 3
  store i32 %103, ptr %126, align 8
  %127 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 2, i32 4
  store i32 0, ptr %127, align 4
  %128 = getelementptr inbounds %struct.its_device, ptr %77, i32 0, i32 5
  store i32 %1, ptr %128, align 4
  store volatile ptr %77, ptr %77, align 8
  %129 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %77, ptr %129, align 4
  %130 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %131 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 16
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  store ptr %77, ptr %133, align 4
  store ptr %132, ptr %77, align 8
  store ptr %131, ptr %129, align 4
  store volatile ptr %77, ptr %131, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %130) #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #17
  %134 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %134, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %77, ptr %5, align 4
  %135 = getelementptr inbounds %struct.anon.84, ptr %5, i32 0, i32 1
  store i32 1, ptr %135, align 4
  %136 = load ptr, ptr %119, align 8
  call fastcc void @its_send_single_command(ptr noundef %136, ptr noundef nonnull @its_build_mapd_cmd, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #17
  br label %137

137:                                              ; preds = %117, %114, %53, %51
  %138 = phi ptr [ %77, %117 ], [ null, %114 ], [ null, %53 ], [ null, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret ptr %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @its_lpi_alloc(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %28, %3
  %5 = phi i32 [ %0, %3 ], [ %29, %28 ]
  tail call void @mutex_lock(ptr noundef nonnull @lpi_range_lock) #17
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ @lpi_range_list, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @lpi_range_list
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.lpi_range, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %5
  br i1 %13, label %6, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.lpi_range, ptr %8, i32 0, i32 2
  %16 = getelementptr inbounds %struct.lpi_range, ptr %8, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %1, align 4
  %18 = load i32, ptr %16, align 4
  %19 = add i32 %18, %5
  store i32 %19, ptr %16, align 4
  %20 = load i32, ptr %15, align 4
  %21 = sub i32 %20, %5
  store i32 %21, ptr %15, align 4
  %22 = icmp eq i32 %20, %5
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void @kfree(ptr noundef %8) #17
  br label %31

28:                                               ; preds = %6
  tail call void @mutex_unlock(ptr noundef nonnull @lpi_range_lock) #17
  %29 = sdiv i32 %5, 2
  %30 = icmp sgt i32 %5, 1
  br i1 %30, label %4, label %39

31:                                               ; preds = %23, %14
  tail call void @mutex_unlock(ptr noundef nonnull @lpi_range_lock) #17
  %32 = xor i1 %9, true
  %33 = icmp ne i32 %5, 0
  %34 = select i1 %33, i1 %32, i1 false
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = tail call ptr @bitmap_zalloc(i32 noundef %5, i32 noundef 2592) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 %5, ptr %2, align 4
  br label %40

39:                                               ; preds = %35, %31, %28
  store i32 0, ptr %2, align 4
  store i32 0, ptr %1, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi ptr [ null, %39 ], [ %36, %38 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @its_alloc_table_entry(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.its_baser, ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = lshr i64 %5, 48
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 31
  %9 = add nuw nsw i32 %8, 1
  %10 = and i64 %5, 4611686018427387904
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.its_baser, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 4096, %14
  %16 = udiv i32 %15, %9
  %17 = icmp ugt i32 %16, %2
  br label %75

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.its_baser, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %8, %20
  %22 = udiv i32 %20, %9
  %23 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 false) #17, !range !15
  %24 = sub nsw i32 31, %23
  %25 = select i1 %21, i32 %24, i32 -1
  %26 = lshr i32 %2, %25
  %27 = getelementptr inbounds %struct.its_baser, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = shl i32 4096, %28
  %30 = lshr exact i32 %29, 3
  %31 = icmp ult i32 %26, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %18
  %33 = load ptr, ptr %1, align 8
  %34 = getelementptr i64, ptr %33, i32 %26
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 19
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %20, -1
  %41 = icmp ult i32 %40, 4096
  %42 = lshr i32 %40, 12
  %43 = tail call i32 @llvm.ctlz.i32(i32 %42, i1 false) #17, !range !15
  %44 = sub nuw nsw i32 32, %43
  %45 = select i1 %41, i32 0, i32 %44
  %46 = icmp eq i32 %39, -1
  %47 = select i1 %46, i32 0, i32 %39
  %48 = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef %45, i32 noundef %47, ptr noundef null) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %75, label %50

50:                                               ; preds = %37
  %51 = load i64, ptr %4, align 8
  %52 = and i64 %51, 3072
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  %56 = tail call ptr @page_address(ptr noundef nonnull %48) #17
  %57 = load i32, ptr %19, align 4
  tail call void %55(ptr noundef %56, i32 noundef %57) #17
  br label %58

58:                                               ; preds = %54, %50
  %59 = load ptr, ptr @mem_map, align 4
  %60 = ptrtoint ptr %48 to i32
  %61 = ptrtoint ptr %59 to i32
  %62 = sub i32 %60, %61
  %63 = lshr exact i32 %62, 5
  %64 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %65 = add i32 %63, %64
  %66 = shl i32 %65, 12
  %67 = zext i32 %66 to i64
  %68 = or i64 %67, -9223372036854775808
  store i64 %68, ptr %34, align 8
  %69 = load i64, ptr %4, align 8
  %70 = and i64 %69, 3072
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %73(ptr noundef %34, i32 noundef 8) #17
  br label %74

74:                                               ; preds = %72, %58
  tail call void asm sideeffect "dsb sy", "~{memory}"() #17, !srcloc !48
  br label %75

75:                                               ; preds = %74, %37, %32, %18, %12
  %76 = phi i1 [ %17, %12 ], [ false, %18 ], [ false, %37 ], [ true, %74 ], [ true, %32 ]
  ret i1 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @its_setup_lpi_prop_table() unnamed_addr #2 section ".init.text" {
  %1 = load ptr, ptr @gic_rdists, align 4
  %2 = getelementptr inbounds %struct.rdists, ptr %1, i32 0, i32 3
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 2
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !9
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 112
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #17, !srcloc !10
  %18 = getelementptr i8, ptr %15, i32 116
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #17, !srcloc !10
  %20 = and i32 %17, 31
  %21 = add nuw nsw i32 %20, 1
  store i32 %21, ptr @lpi_id_bits, align 4
  %22 = and i32 %17, -4096
  %23 = load ptr, ptr @gic_rdists, align 4
  %24 = getelementptr inbounds %struct.rdists, ptr %23, i32 0, i32 1
  store i32 %22, ptr %24, align 4
  %25 = shl i32 2, %20
  %26 = add i32 %25, 65535
  %27 = and i32 %26, -65536
  %28 = tail call ptr @memremap(i32 noundef %22, i32 noundef %27, i32 noundef 1) #17
  %29 = load ptr, ptr @gic_rdists, align 4
  %30 = getelementptr inbounds %struct.rdists, ptr %29, i32 0, i32 2
  store ptr %28, ptr %30, align 8
  %31 = load i32, ptr @lpi_id_bits, align 4
  %32 = shl nuw i32 1, %31
  %33 = add nuw i32 %32, 65535
  %34 = and i32 %33, -65536
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 -94, i32 %34, i1 false) #17
  %35 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %35(ptr noundef %28, i32 noundef %34) #17
  br label %75

36:                                               ; preds = %0
  %37 = getelementptr inbounds %struct.rdists, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 19
  %40 = and i32 %39, 31
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 15)
  %42 = add nuw nsw i32 %41, 1
  store i32 %42, ptr @lpi_id_bits, align 4
  %43 = tail call fastcc ptr @its_allocate_prop_table(i32 noundef 2048)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %73, label %45

45:                                               ; preds = %36
  %46 = load ptr, ptr @mem_map, align 4
  %47 = ptrtoint ptr %43 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  %50 = lshr exact i32 %49, 5
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %52 = add i32 %50, %51
  %53 = shl i32 %52, 12
  %54 = load ptr, ptr @gic_rdists, align 4
  %55 = getelementptr inbounds %struct.rdists, ptr %54, i32 0, i32 1
  store i32 %53, ptr %55, align 4
  %56 = tail call ptr @page_address(ptr noundef nonnull %43) #17
  %57 = load ptr, ptr @gic_rdists, align 4
  %58 = getelementptr inbounds %struct.rdists, ptr %57, i32 0, i32 2
  store ptr %56, ptr %58, align 8
  %59 = getelementptr inbounds %struct.rdists, ptr %57, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr @lpi_id_bits, align 4
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %45
  %66 = shl nuw i32 1, %61
  %67 = add nuw i32 %66, 65535
  %68 = and i32 %67, -65536
  %69 = zext i32 %68 to i64
  %70 = tail call i32 @efi_mem_reserve_persistent(i32 noundef %60, i64 noundef %69) #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72, !prof !13

72:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2257, i32 noundef 9, ptr noundef null) #17
  br label %75

73:                                               ; preds = %36
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #18
  br label %81

75:                                               ; preds = %72, %65, %45, %6
  %76 = load ptr, ptr @gic_rdists, align 4
  %77 = getelementptr inbounds %struct.rdists, ptr %76, i32 0, i32 1
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %77) #18
  %79 = load i32, ptr @lpi_id_bits, align 4
  %80 = tail call fastcc i32 @its_lpi_init(i32 noundef %79) #22
  br label %81

81:                                               ; preds = %75, %73
  %82 = phi i32 [ %80, %75 ], [ -12, %73 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @its_allocate_pending_table(i32 noundef %0) unnamed_addr #0 {
  %2 = or i32 %0, 256
  %3 = load i32, ptr @lpi_id_bits, align 4
  %4 = shl nuw i32 1, %3
  %5 = lshr i32 %4, 3
  %6 = add nuw nsw i32 %5, 65535
  %7 = and i32 %6, 1073676288
  %8 = add nsw i32 %7, -1
  %9 = lshr i32 %8, 12
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 true) #17, !range !15
  %11 = sub nuw nsw i32 32, %10
  %12 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef %11, i32 noundef 0, ptr noundef null) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  %16 = tail call ptr @page_address(ptr noundef nonnull %12) #17
  %17 = load i32, ptr @lpi_id_bits, align 4
  %18 = shl nuw i32 1, %17
  %19 = lshr i32 %18, 3
  %20 = add nuw nsw i32 %19, 65535
  %21 = and i32 %20, 1073676288
  tail call void %15(ptr noundef %16, i32 noundef %21) #17
  br label %22

22:                                               ; preds = %14, %1
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @its_allocate_prop_table(i32 noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @lpi_id_bits, align 4
  %3 = shl nuw i32 1, %2
  %4 = add nuw i32 %3, 65535
  %5 = and i32 %4, -65536
  %6 = add i32 %5, -1
  %7 = lshr i32 %6, 12
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #17, !range !15
  %9 = sub nuw nsw i32 32, %8
  %10 = tail call ptr @__alloc_pages(i32 noundef %0, i32 noundef %9, i32 noundef 0, ptr noundef null) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @page_address(ptr noundef nonnull %10) #17
  %14 = load i32, ptr @lpi_id_bits, align 4
  %15 = shl nuw i32 1, %14
  %16 = add nuw i32 %15, 65535
  %17 = and i32 %16, -65536
  tail call void @llvm.memset.p0.i32(ptr align 1 %13, i8 -94, i32 %17, i1 false) #17
  %18 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %18(ptr noundef %13, i32 noundef %17) #17
  br label %19

19:                                               ; preds = %12, %1
  ret ptr %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @its_lpi_init(i32 noundef %0) unnamed_addr #2 section ".init.text" {
  %2 = shl nuw i32 1, %0
  %3 = add i32 %2, -8192
  %4 = load ptr, ptr @gic_rdists, align 4
  %5 = getelementptr inbounds %struct.rdists, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 11
  %8 = and i32 %7, 31
  %9 = shl i32 2, %8
  %10 = icmp ugt i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = icmp ugt i32 %9, %3
  br i1 %12, label %13, label %14, !prof !22

13:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2113, i32 noundef 9, ptr noundef null) #17
  br label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %9) #18
  br label %16

16:                                               ; preds = %14, %13, %1
  %17 = phi i32 [ %9, %14 ], [ %3, %1 ], [ %3, %13 ]
  %18 = tail call fastcc i32 @free_lpi_range(i32 noundef 8192, i32 noundef %17)
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_sgi_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq i32 %2, 16
  br i1 %5, label %7, label %6, !prof !13

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 4322, i32 noundef 9, ptr noundef null) #17
  br label %7

7:                                                ; preds = %6, %4
  br label %8

8:                                                ; preds = %8, %7
  %9 = phi i32 [ %15, %8 ], [ 0, %7 ]
  %10 = getelementptr %struct.its_vpe, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 %9
  store i8 0, ptr %10, align 1
  %11 = getelementptr %struct.its_vpe, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 %9, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr %struct.its_vpe, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 %9, i32 2
  store i8 0, ptr %12, align 1
  %13 = add i32 %9, %1
  %14 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %13, i32 noundef %9, ptr noundef nonnull @its_sgi_irq_chip, ptr noundef %3) #17
  tail call void @irq_modify_status(i32 noundef %13, i32 noundef 0, i32 noundef 524288) #17
  %15 = add nuw nsw i32 %9, 1
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %8

17:                                               ; preds = %8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @its_sgi_irq_domain_free(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #16 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_sgi_irq_domain_activate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %7 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %6, ptr %4, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 1
  store i8 %10, ptr %11, align 4
  %12 = getelementptr %struct.its_vpe, ptr %6, i32 0, i32 7, i32 0, i32 2, i32 %9
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 2
  store i8 %13, ptr %14, align 1
  %15 = getelementptr %struct.its_vpe, ptr %6, i32 0, i32 7, i32 0, i32 2, i32 %9, i32 1
  %16 = load i8, ptr %15, align 1, !range !14
  %17 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 3
  store i8 %16, ptr %17, align 2
  %18 = getelementptr %struct.its_vpe, ptr %6, i32 0, i32 7, i32 0, i32 2, i32 %9, i32 2
  %19 = load i8, ptr %18, align 1, !range !14
  %20 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 4
  store i8 %19, ptr %20, align 1
  %21 = load ptr, ptr @find_4_1_its.its, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %27, %3
  %24 = phi ptr [ %25, %27 ], [ @its_nodes, %3 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, @its_nodes
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %25, i32 240
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 1099511627776
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %23, label %32

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %25, i32 -24
  br label %34

34:                                               ; preds = %32, %23
  %35 = phi ptr [ %33, %32 ], [ null, %23 ]
  store ptr %35, ptr @find_4_1_its.its, align 4
  br label %36

36:                                               ; preds = %34, %3
  %37 = phi ptr [ %21, %3 ], [ %35, %34 ]
  call fastcc void @its_send_single_vcommand(ptr noundef %37, ptr noundef nonnull @its_build_vsgi_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_sgi_irq_domain_deactivate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.its_vpe, ptr %6, i32 0, i32 7, i32 0, i32 2, i32 %8, i32 1
  store i8 0, ptr %9, align 1
  %10 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %11 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %10, ptr %4, align 4
  %12 = load i32, ptr %7, align 4
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 1
  store i8 %13, ptr %14, align 4
  %15 = getelementptr %struct.its_vpe, ptr %10, i32 0, i32 7, i32 0, i32 2, i32 %12
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 2
  store i8 %16, ptr %17, align 1
  %18 = getelementptr %struct.its_vpe, ptr %10, i32 0, i32 7, i32 0, i32 2, i32 %12, i32 1
  %19 = load i8, ptr %18, align 1, !range !14
  %20 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 3
  store i8 %19, ptr %20, align 2
  %21 = getelementptr %struct.its_vpe, ptr %10, i32 0, i32 7, i32 0, i32 2, i32 %12, i32 2
  %22 = load i8, ptr %21, align 1, !range !14
  %23 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 4
  store i8 %22, ptr %23, align 1
  %24 = load ptr, ptr @find_4_1_its.its, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %30, %2
  %27 = phi ptr [ %28, %30 ], [ @its_nodes, %2 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, @its_nodes
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 240
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 1099511627776
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %26, label %35

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %28, i32 -24
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi ptr [ %36, %35 ], [ null, %26 ]
  store ptr %38, ptr @find_4_1_its.its, align 4
  br label %39

39:                                               ; preds = %37, %2
  %40 = phi ptr [ %24, %2 ], [ %38, %37 ]
  call fastcc void @its_send_single_vcommand(ptr noundef %40, ptr noundef nonnull @its_build_vsgi_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  %41 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %42 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %42, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %41, ptr %3, align 4
  %43 = load i32, ptr %7, align 4
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.anon.96, ptr %3, i32 0, i32 1
  store i8 %44, ptr %45, align 4
  %46 = getelementptr %struct.its_vpe, ptr %41, i32 0, i32 7, i32 0, i32 2, i32 %43
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr inbounds %struct.anon.96, ptr %3, i32 0, i32 2
  store i8 %47, ptr %48, align 1
  %49 = getelementptr %struct.its_vpe, ptr %41, i32 0, i32 7, i32 0, i32 2, i32 %43, i32 1
  %50 = load i8, ptr %49, align 1, !range !14
  %51 = getelementptr inbounds %struct.anon.96, ptr %3, i32 0, i32 3
  store i8 %50, ptr %51, align 2
  %52 = getelementptr %struct.its_vpe, ptr %41, i32 0, i32 7, i32 0, i32 2, i32 %43, i32 2
  %53 = load i8, ptr %52, align 1, !range !14
  %54 = getelementptr inbounds %struct.anon.96, ptr %3, i32 0, i32 4
  store i8 %53, ptr %54, align 1
  store i8 1, ptr %42, align 4
  %55 = load ptr, ptr @find_4_1_its.its, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %61, %39
  %58 = phi ptr [ %59, %61 ], [ @its_nodes, %39 ]
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, @its_nodes
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %59, i32 240
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 1099511627776
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %57, label %66

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %59, i32 -24
  br label %68

68:                                               ; preds = %66, %57
  %69 = phi ptr [ %67, %66 ], [ null, %57 ]
  store ptr %69, ptr @find_4_1_its.its, align 4
  br label %70

70:                                               ; preds = %68, %39
  %71 = phi ptr [ %55, %39 ], [ %69, %68 ]
  call fastcc void @its_send_single_vcommand(ptr noundef %71, ptr noundef nonnull @its_build_vsgi_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_sgi_mask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.its_cmd_desc, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.its_vpe, ptr %4, i32 0, i32 7, i32 0, i32 2, i32 %6, i32 1
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  %9 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %8, ptr %2, align 4
  %10 = load i32, ptr %5, align 4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 1
  store i8 %11, ptr %12, align 4
  %13 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %10
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 2
  store i8 %14, ptr %15, align 1
  %16 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %10, i32 1
  %17 = load i8, ptr %16, align 1, !range !14
  %18 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 3
  store i8 %17, ptr %18, align 2
  %19 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %10, i32 2
  %20 = load i8, ptr %19, align 1, !range !14
  %21 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 4
  store i8 %20, ptr %21, align 1
  %22 = load ptr, ptr @find_4_1_its.its, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %28, %1
  %25 = phi ptr [ %26, %28 ], [ @its_nodes, %1 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, @its_nodes
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 240
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 1099511627776
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %24, label %33

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %26, i32 -24
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %34, %33 ], [ null, %24 ]
  store ptr %36, ptr @find_4_1_its.its, align 4
  br label %37

37:                                               ; preds = %35, %1
  %38 = phi ptr [ %22, %1 ], [ %36, %35 ]
  call fastcc void @its_send_single_vcommand(ptr noundef %38, ptr noundef nonnull @its_build_vsgi_cmd, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_sgi_unmask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.its_cmd_desc, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.its_vpe, ptr %4, i32 0, i32 7, i32 0, i32 2, i32 %6, i32 1
  store i8 1, ptr %7, align 1
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  %9 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %8, ptr %2, align 4
  %10 = load i32, ptr %5, align 4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 1
  store i8 %11, ptr %12, align 4
  %13 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %10
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 2
  store i8 %14, ptr %15, align 1
  %16 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %10, i32 1
  %17 = load i8, ptr %16, align 1, !range !14
  %18 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 3
  store i8 %17, ptr %18, align 2
  %19 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %10, i32 2
  %20 = load i8, ptr %19, align 1, !range !14
  %21 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 4
  store i8 %20, ptr %21, align 1
  %22 = load ptr, ptr @find_4_1_its.its, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %28, %1
  %25 = phi ptr [ %26, %28 ], [ @its_nodes, %1 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, @its_nodes
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 240
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 1099511627776
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %24, label %33

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %26, i32 -24
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %34, %33 ], [ null, %24 ]
  store ptr %36, ptr @find_4_1_its.its, align 4
  br label %37

37:                                               ; preds = %35, %1
  %38 = phi ptr [ %22, %1 ], [ %36, %35 ]
  call fastcc void @its_send_single_vcommand(ptr noundef %38, ptr noundef nonnull @its_build_vsgi_cmd, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @its_sgi_set_affinity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #12 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_common_data, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_sgi_get_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %81

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 8
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #17
  %10 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 9
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = load ptr, ptr @gic_rdists, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %14 to i32
  %16 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = inttoptr i32 %18 to ptr
  tail call void @_raw_spin_lock(ptr noundef %19) #17
  %20 = load ptr, ptr @gic_rdists, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %21 to i32
  %23 = load i32, ptr %16, align 4
  %24 = add i32 %23, %22
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 10
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %27, i32 131200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #17, !srcloc !11
  %32 = getelementptr i8, ptr %27, i32 131208
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #17, !srcloc !10
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %65, label %35

35:                                               ; preds = %52, %5
  %36 = phi i32 [ %37, %52 ], [ 1000000, %5 ]
  %37 = add nsw i32 %36, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = tail call i32 @___ratelimit(ptr noundef nonnull @its_sgi_get_irqchip_state._rs, ptr noundef nonnull @__func__.its_sgi_get_irqchip_state) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #18
  %44 = load ptr, ptr @gic_rdists, align 4
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %45 to i32
  %47 = load i32, ptr %16, align 4
  %48 = add i32 %47, %46
  %49 = inttoptr i32 %48 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %50 = load i16, ptr %49, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #17
  br label %81

52:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !50
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #17
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #17, !srcloc !10
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %65, label %35

56:                                               ; preds = %39
  %57 = load ptr, ptr @gic_rdists, align 4
  %58 = load ptr, ptr %57, align 8
  %59 = ptrtoint ptr %58 to i32
  %60 = load i32, ptr %16, align 4
  %61 = add i32 %60, %59
  %62 = inttoptr i32 %61 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %63 = load i16, ptr %62, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #17
  br label %81

65:                                               ; preds = %52, %5
  %66 = phi i32 [ %33, %5 ], [ %54, %52 ]
  %67 = load ptr, ptr @gic_rdists, align 4
  %68 = load ptr, ptr %67, align 8
  %69 = ptrtoint ptr %68 to i32
  %70 = load i32, ptr %16, align 4
  %71 = add i32 %70, %69
  %72 = inttoptr i32 %71 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %73 = load i16, ptr %72, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #17
  %75 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %66
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i8
  store i8 %80, ptr %2, align 1
  br label %81

81:                                               ; preds = %65, %56, %42, %3
  %82 = phi i32 [ 0, %65 ], [ -22, %3 ], [ -6, %56 ], [ -6, %42 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_sgi_set_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %69

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  br i1 %2, label %9, label %37

9:                                                ; preds = %6
  %10 = load ptr, ptr @find_4_1_its.its, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %14, %16 ], [ @its_nodes, %9 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @its_nodes
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 240
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 1099511627776
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %12, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %14, i32 -24
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi ptr [ %22, %21 ], [ null, %12 ]
  store ptr %24, ptr @find_4_1_its.its, align 4
  br label %25

25:                                               ; preds = %23, %9
  %26 = phi ptr [ %10, %9 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.its_vpe, ptr %8, i32 0, i32 10
  %30 = load i16, ptr %29, align 2
  %31 = and i32 %28, 15
  %32 = getelementptr inbounds %struct.its_node, ptr %26, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #17, !srcloc !11
  %35 = zext i16 %30 to i32
  %36 = getelementptr i8, ptr %33, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #17, !srcloc !11
  br label %69

37:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %38 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %38, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %8, ptr %4, align 4
  %39 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 1
  store i8 %41, ptr %42, align 4
  %43 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %40
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 2
  store i8 %44, ptr %45, align 1
  %46 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %40, i32 1
  %47 = load i8, ptr %46, align 1, !range !14
  %48 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 3
  store i8 %47, ptr %48, align 2
  %49 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %40, i32 2
  %50 = load i8, ptr %49, align 1, !range !14
  %51 = getelementptr inbounds %struct.anon.96, ptr %4, i32 0, i32 4
  store i8 %50, ptr %51, align 1
  store i8 1, ptr %38, align 4
  %52 = load ptr, ptr @find_4_1_its.its, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %58, %37
  %55 = phi ptr [ %56, %58 ], [ @its_nodes, %37 ]
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, @its_nodes
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %56, i32 240
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 1099511627776
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %54, label %63

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %56, i32 -24
  br label %65

65:                                               ; preds = %63, %54
  %66 = phi ptr [ %64, %63 ], [ null, %54 ]
  store ptr %66, ptr @find_4_1_its.its, align 4
  br label %67

67:                                               ; preds = %65, %37
  %68 = phi ptr [ %52, %37 ], [ %66, %65 ]
  call fastcc void @its_send_single_vcommand(ptr noundef %68, ptr noundef nonnull @its_build_vsgi_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  br label %69

69:                                               ; preds = %67, %25, %3
  %70 = phi i32 [ -22, %3 ], [ 0, %67 ], [ 0, %25 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_sgi_set_vcpu_affinity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %6, label %49

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.its_cmd_info, ptr %1, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %12
  store i8 %10, ptr %13, align 1
  %14 = getelementptr inbounds %struct.anon.101, ptr %9, i32 0, i32 1
  %15 = load i8, ptr %14, align 1, !range !14
  %16 = load i32, ptr %11, align 4
  %17 = getelementptr %struct.its_vpe, ptr %8, i32 0, i32 7, i32 0, i32 2, i32 %16, i32 2
  store i8 %15, ptr %17, align 1
  %18 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %19 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %19, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %18, ptr %3, align 4
  %20 = load i32, ptr %11, align 4
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.anon.96, ptr %3, i32 0, i32 1
  store i8 %21, ptr %22, align 4
  %23 = getelementptr %struct.its_vpe, ptr %18, i32 0, i32 7, i32 0, i32 2, i32 %20
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.anon.96, ptr %3, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr %struct.its_vpe, ptr %18, i32 0, i32 7, i32 0, i32 2, i32 %20, i32 1
  %27 = load i8, ptr %26, align 1, !range !14
  %28 = getelementptr inbounds %struct.anon.96, ptr %3, i32 0, i32 3
  store i8 %27, ptr %28, align 2
  %29 = getelementptr %struct.its_vpe, ptr %18, i32 0, i32 7, i32 0, i32 2, i32 %20, i32 2
  %30 = load i8, ptr %29, align 1, !range !14
  %31 = getelementptr inbounds %struct.anon.96, ptr %3, i32 0, i32 4
  store i8 %30, ptr %31, align 1
  %32 = load ptr, ptr @find_4_1_its.its, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %38, %6
  %35 = phi ptr [ %36, %38 ], [ @its_nodes, %6 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, @its_nodes
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 240
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 1099511627776
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %34, label %43

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %36, i32 -24
  br label %45

45:                                               ; preds = %43, %34
  %46 = phi ptr [ %44, %43 ], [ null, %34 ]
  store ptr %46, ptr @find_4_1_its.its, align 4
  br label %47

47:                                               ; preds = %45, %6
  %48 = phi ptr [ %32, %6 ], [ %46, %45 ]
  call fastcc void @its_send_single_vcommand(ptr noundef %48, ptr noundef nonnull @its_build_vsgi_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  br label %49

49:                                               ; preds = %47, %2
  %50 = phi i32 [ 0, %47 ], [ -22, %2 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_vsgi_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 12
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 1099511627776
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9, !prof !22

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 959, i32 noundef 9, ptr noundef null) #17
  br label %72

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, -256
  %12 = or i64 %11, 35
  store i64 %12, ptr %1, align 8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.its_vpe, ptr %13, i32 0, i32 10
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %17 = zext i16 %15 to i64
  %18 = load i64, ptr %16, align 8
  %19 = and i64 %18, -281470681743361
  %20 = shl nuw nsw i64 %17, 32
  %21 = or i64 %19, %20
  store i64 %21, ptr %16, align 8
  %22 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i64
  %25 = and i64 %12, -64424509661
  %26 = shl nuw nsw i64 %24, 32
  %27 = and i64 %26, 64424509440
  %28 = or i64 %27, %25
  store i64 %28, ptr %1, align 8
  %29 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = lshr i8 %30, 4
  %32 = zext i8 %31 to i64
  %33 = and i64 %28, -15728861
  %34 = shl nuw nsw i64 %32, 20
  %35 = or i64 %33, %34
  store i64 %35, ptr %1, align 8
  %36 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 4
  %37 = load i8, ptr %36, align 1, !range !14
  %38 = icmp eq i8 %37, 0
  %39 = and i64 %35, -1245
  %40 = select i1 %38, i64 0, i64 1024
  %41 = or i64 %39, %40
  store i64 %41, ptr %1, align 8
  %42 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 5
  %43 = load i8, ptr %42, align 4, !range !14
  %44 = icmp eq i8 %43, 0
  %45 = and i64 %41, -733
  %46 = select i1 %44, i64 0, i64 512
  %47 = or i64 %45, %46
  store i64 %47, ptr %1, align 8
  %48 = getelementptr inbounds %struct.anon.96, ptr %2, i32 0, i32 3
  %49 = load i8, ptr %48, align 2, !range !14
  %50 = icmp eq i8 %49, 0
  %51 = and i64 %47, -477
  %52 = select i1 %50, i64 0, i64 256
  %53 = or i64 %51, %52
  store i64 %53, ptr %1, align 8
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.its_vpe, ptr %54, i32 0, i32 9
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = getelementptr %struct.its_collection, ptr %56, i32 %59
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp ne i64 %62, 0
  %64 = load i1, ptr @valid_col.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !22

67:                                               ; preds = %9
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %68

68:                                               ; preds = %67, %9
  %69 = icmp eq ptr %60, null
  %70 = or i1 %63, %69
  %71 = select i1 %70, ptr null, ptr %54
  br label %72

72:                                               ; preds = %68, %8
  %73 = phi ptr [ null, %8 ], [ %71, %68 ]
  ret ptr %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_vpe_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !24
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %10, !prof !22

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-gic-v3-its.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4466, 0\0A.popsection", ""() #17, !srcloc !51
  unreachable

10:                                               ; preds = %4
  %11 = add i32 %2, -1
  %12 = icmp eq i32 %11, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #17, !range !15
  %14 = sub nuw nsw i32 32, %13
  %15 = shl nuw i32 1, %14
  %16 = select i1 %12, i32 1, i32 %15
  %17 = call fastcc ptr @its_lpi_alloc(i32 noundef %16, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %372, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %7, align 4
  %21 = icmp ult i32 %20, %2
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, ptr %6, align 4
  %24 = tail call fastcc i32 @free_lpi_range(i32 noundef %23, i32 noundef %20) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !13

26:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2162, i32 noundef 9, ptr noundef null) #17
  br label %27

27:                                               ; preds = %26, %22
  tail call void @bitmap_free(ptr noundef nonnull %17) #17
  br label %372

28:                                               ; preds = %19
  %29 = load i32, ptr @lpi_id_bits, align 4
  %30 = shl nuw i32 1, %29
  %31 = add nuw i32 %30, 65535
  %32 = and i32 %31, -65536
  %33 = add i32 %32, -1
  %34 = lshr i32 %33, 12
  %35 = tail call i32 @llvm.ctlz.i32(i32 %34, i1 true) #17, !range !15
  %36 = sub nuw nsw i32 32, %35
  %37 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef %36, i32 noundef 0, ptr noundef null) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i32, ptr %6, align 4
  %41 = tail call fastcc i32 @free_lpi_range(i32 noundef %40, i32 noundef %20) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !13

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2162, i32 noundef 9, ptr noundef null) #17
  br label %44

44:                                               ; preds = %43, %39
  tail call void @bitmap_free(ptr noundef nonnull %17) #17
  br label %372

45:                                               ; preds = %28
  %46 = tail call ptr @page_address(ptr noundef nonnull %37) #17
  %47 = load i32, ptr @lpi_id_bits, align 4
  %48 = shl nuw i32 1, %47
  %49 = add nuw i32 %48, 65535
  %50 = and i32 %49, -65536
  tail call void @llvm.memset.p0.i32(ptr align 1 %46, i8 -94, i32 %50, i1 false) #17
  %51 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %51(ptr noundef %46, i32 noundef %50) #17
  %52 = getelementptr inbounds %struct.its_vm, ptr %3, i32 0, i32 6
  store ptr %17, ptr %52, align 4
  %53 = load i32, ptr %6, align 4
  %54 = getelementptr inbounds %struct.its_vm, ptr %3, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.its_vm, ptr %3, i32 0, i32 7
  store i32 %20, ptr %55, align 4
  %56 = getelementptr inbounds %struct.its_vm, ptr %3, i32 0, i32 2
  store ptr %37, ptr %56, align 4
  %57 = load ptr, ptr @gic_rdists, align 4
  %58 = getelementptr inbounds %struct.rdists, ptr %57, i32 0, i32 8
  %59 = load i8, ptr %58, align 1, !range !14
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, ptr @its_vpe_irq_chip, ptr @its_vpe_4_1_irq_chip
  %62 = icmp eq i32 %2, 0
  br i1 %62, label %372, label %63

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct.its_vm, ptr %3, i32 0, i32 3
  %65 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %66 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  %67 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  %68 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  %69 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  br label %70

70:                                               ; preds = %351, %63
  %71 = phi ptr [ %57, %63 ], [ %352, %351 ]
  %72 = phi i32 [ 0, %63 ], [ %349, %351 ]
  %73 = add i32 %72, %53
  %74 = load ptr, ptr %64, align 4
  %75 = getelementptr ptr, ptr %74, i32 %72
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.its_vpe, ptr %76, i32 0, i32 4
  store i32 %73, ptr %77, align 4
  %78 = load ptr, ptr %64, align 4
  %79 = getelementptr ptr, ptr %78, i32 %72
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.rdists, ptr %71, i32 0, i32 8
  %82 = load i8, ptr %81, align 1, !range !14
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.rdists, ptr %71, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 128
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = and i32 %86, 31
  %91 = add nuw nsw i32 %90, 1
  br label %92

92:                                               ; preds = %89, %84, %70
  %93 = phi i32 [ %91, %89 ], [ 16, %84 ], [ 16, %70 ]
  %94 = shl nsw i32 -1, %93
  %95 = xor i32 %94, -1
  %96 = call i32 @ida_alloc_range(ptr noundef nonnull @its_vpeid_ida, i32 noundef 0, i32 noundef %95, i32 noundef 3264) #17
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %353, label %98

98:                                               ; preds = %92
  %99 = load i32, ptr @lpi_id_bits, align 4
  %100 = shl nuw i32 1, %99
  %101 = lshr i32 %100, 3
  %102 = add nuw nsw i32 %101, 65535
  %103 = and i32 %102, 1073676288
  %104 = add nsw i32 %103, -1
  %105 = lshr i32 %104, 12
  %106 = call i32 @llvm.ctlz.i32(i32 %105, i1 true) #17, !range !15
  %107 = sub nuw nsw i32 32, %106
  %108 = call ptr @__alloc_pages(i32 noundef 3520, i32 noundef %107, i32 noundef 0, ptr noundef null) #17
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %98
  %111 = and i32 %96, 65535
  call void @ida_free(ptr noundef nonnull @its_vpeid_ida, i32 noundef %111) #17
  br label %353

112:                                              ; preds = %98
  %113 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  %114 = call ptr @page_address(ptr noundef nonnull %108) #17
  %115 = load i32, ptr @lpi_id_bits, align 4
  %116 = shl nuw i32 1, %115
  %117 = lshr i32 %116, 3
  %118 = add nuw nsw i32 %117, 65535
  %119 = and i32 %118, 1073676288
  call void %113(ptr noundef %114, i32 noundef %119) #17
  %120 = load ptr, ptr @its_nodes, align 4
  %121 = icmp eq ptr %120, @its_nodes
  br i1 %121, label %178, label %122

122:                                              ; preds = %175, %112
  %123 = phi ptr [ %176, %175 ], [ %120, %112 ]
  %124 = getelementptr i8, ptr %123, i32 -24
  %125 = getelementptr i8, ptr %123, i32 240
  %126 = load i64, ptr %125, align 8
  %127 = and i64 %126, 2
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %175, label %129

129:                                              ; preds = %122
  %130 = getelementptr i8, ptr %123, i32 40
  %131 = load i64, ptr %130, align 8
  %132 = and i64 %131, 504403158265495552
  %133 = icmp eq i64 %132, 144115188075855872
  br i1 %133, label %169, label %134

134:                                              ; preds = %129
  %135 = getelementptr i8, ptr %123, i32 64
  %136 = load i64, ptr %135, align 8
  %137 = and i64 %136, 504403158265495552
  %138 = icmp eq i64 %137, 144115188075855872
  br i1 %138, label %169, label %139

139:                                              ; preds = %134
  %140 = getelementptr i8, ptr %123, i32 88
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 504403158265495552
  %143 = icmp eq i64 %142, 144115188075855872
  br i1 %143, label %169, label %144

144:                                              ; preds = %139
  %145 = getelementptr i8, ptr %123, i32 112
  %146 = load i64, ptr %145, align 8
  %147 = and i64 %146, 504403158265495552
  %148 = icmp eq i64 %147, 144115188075855872
  br i1 %148, label %169, label %149

149:                                              ; preds = %144
  %150 = getelementptr i8, ptr %123, i32 136
  %151 = load i64, ptr %150, align 8
  %152 = and i64 %151, 504403158265495552
  %153 = icmp eq i64 %152, 144115188075855872
  br i1 %153, label %169, label %154

154:                                              ; preds = %149
  %155 = getelementptr i8, ptr %123, i32 160
  %156 = load i64, ptr %155, align 8
  %157 = and i64 %156, 504403158265495552
  %158 = icmp eq i64 %157, 144115188075855872
  br i1 %158, label %169, label %159

159:                                              ; preds = %154
  %160 = getelementptr i8, ptr %123, i32 184
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 504403158265495552
  %163 = icmp eq i64 %162, 144115188075855872
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = getelementptr i8, ptr %123, i32 208
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 504403158265495552
  %168 = icmp eq i64 %167, 144115188075855872
  br i1 %168, label %169, label %286

169:                                              ; preds = %164, %159, %154, %149, %144, %139, %134, %129
  %170 = phi i32 [ 0, %129 ], [ 1, %134 ], [ 2, %139 ], [ 3, %144 ], [ 4, %149 ], [ 5, %154 ], [ 6, %159 ], [ 7, %164 ]
  %171 = getelementptr %struct.its_node, ptr %124, i32 0, i32 8, i32 %170
  %172 = icmp eq ptr %171, null
  br i1 %172, label %286, label %173

173:                                              ; preds = %169
  %174 = call fastcc zeroext i1 @its_alloc_table_entry(ptr noundef %124, ptr noundef nonnull %171, i32 noundef %96) #17
  br i1 %174, label %175, label %286

175:                                              ; preds = %173, %122
  %176 = load ptr, ptr %123, align 4
  %177 = icmp eq ptr %176, @its_nodes
  br i1 %177, label %178, label %122

178:                                              ; preds = %175, %112
  %179 = load ptr, ptr @gic_rdists, align 4
  %180 = getelementptr inbounds %struct.rdists, ptr %179, i32 0, i32 8
  %181 = load i8, ptr %180, align 1, !range !14
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %299, label %183

183:                                              ; preds = %178
  %184 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %185 = load i32, ptr @nr_cpu_ids, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %299

187:                                              ; preds = %233, %183
  %188 = phi i8 [ %235, %233 ], [ 1, %183 ]
  %189 = phi ptr [ %232, %233 ], [ %179, %183 ]
  %190 = phi i32 [ %229, %233 ], [ %184, %183 ]
  %191 = load ptr, ptr %189, align 8
  %192 = ptrtoint ptr %191 to i32
  %193 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %190
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, %192
  %196 = inttoptr i32 %195 to ptr
  %197 = getelementptr inbounds %struct.anon, ptr %196, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq i8 %188, 0
  %200 = icmp eq ptr %198, null
  %201 = select i1 %199, i1 true, i1 %200
  br i1 %201, label %228, label %202

202:                                              ; preds = %187
  %203 = getelementptr i8, ptr %198, i32 131184
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #17, !srcloc !10
  %205 = getelementptr i8, ptr %198, i32 131188
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #17, !srcloc !10
  %207 = lshr i32 %206, 27
  %208 = and i32 %207, 7
  %209 = add nuw nsw i32 %208, 1
  %210 = lshr i32 %206, 21
  %211 = and i32 %210, 3
  %212 = and i32 %204, 127
  %213 = add nuw nsw i32 %212, 1
  %214 = icmp eq i32 %211, 3
  br i1 %214, label %215, label %216

215:                                              ; preds = %202
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2753, i32 noundef 9, ptr noundef null) #17
  br label %219

216:                                              ; preds = %202
  %217 = getelementptr inbounds [3 x i32], ptr @switch.table.its_vpe_irq_domain_alloc, i32 0, i32 %211
  %218 = load i32, ptr %217, align 4
  br label %219

219:                                              ; preds = %216, %215
  %220 = phi i32 [ 4096, %215 ], [ %218, %216 ]
  %221 = and i32 %206, 8388608
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %219
  %224 = mul nuw nsw i32 %220, %213
  %225 = shl nuw nsw i32 %209, 3
  %226 = udiv i32 %224, %225
  %227 = icmp ugt i32 %226, %96
  br i1 %227, label %228, label %286

228:                                              ; preds = %285, %245, %223, %187
  %229 = call i32 @cpumask_next(i32 noundef %190, ptr noundef nonnull @__cpu_possible_mask) #19
  %230 = load i32, ptr @nr_cpu_ids, align 4
  %231 = icmp ult i32 %229, %230
  %232 = load ptr, ptr @gic_rdists, align 4
  br i1 %231, label %233, label %299

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.rdists, ptr %232, i32 0, i32 8
  %235 = load i8, ptr %234, align 1, !range !14
  br label %187

236:                                              ; preds = %219
  %237 = shl nuw nsw i32 %209, 3
  %238 = udiv i32 %220, %237
  %239 = call i32 @llvm.ctlz.i32(i32 %238, i1 false) #17, !range !52
  %240 = sub nsw i32 31, %239
  %241 = lshr i32 %96, %240
  %242 = mul nuw nsw i32 %220, %213
  %243 = lshr exact i32 %242, 3
  %244 = icmp ult i32 %241, %243
  br i1 %244, label %245, label %286

245:                                              ; preds = %236
  %246 = load ptr, ptr @gic_rdists, align 4
  %247 = load ptr, ptr %246, align 8
  %248 = ptrtoint ptr %247 to i32
  %249 = load i32, ptr %193, align 4
  %250 = add i32 %249, %248
  %251 = inttoptr i32 %250 to ptr
  %252 = getelementptr inbounds %struct.anon, ptr %251, i32 0, i32 6
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr i64, ptr %253, i32 %241
  %255 = load i64, ptr %254, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %228

257:                                              ; preds = %245
  %258 = add nsw i32 %220, -1
  %259 = icmp eq i32 %258, 4095
  %260 = lshr i32 %258, 12
  %261 = call i32 @llvm.ctlz.i32(i32 %260, i1 false) #17, !range !15
  %262 = sub nuw nsw i32 32, %261
  %263 = select i1 %259, i32 0, i32 %262
  %264 = call ptr @__alloc_pages(i32 noundef 3520, i32 noundef %263, i32 noundef 0, ptr noundef null) #17
  %265 = icmp eq ptr %264, null
  br i1 %265, label %286, label %266

266:                                              ; preds = %257
  %267 = and i32 %204, 3072
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  %271 = call ptr @page_address(ptr noundef nonnull %264) #17
  call void %270(ptr noundef %271, i32 noundef %220) #17
  br label %272

272:                                              ; preds = %269, %266
  %273 = load ptr, ptr @mem_map, align 4
  %274 = ptrtoint ptr %264 to i32
  %275 = ptrtoint ptr %273 to i32
  %276 = sub i32 %274, %275
  %277 = lshr exact i32 %276, 5
  %278 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %279 = add i32 %277, %278
  %280 = shl i32 %279, 12
  %281 = zext i32 %280 to i64
  %282 = or i64 %281, -9223372036854775808
  store i64 %282, ptr %254, align 8
  br i1 %268, label %283, label %285

283:                                              ; preds = %272
  %284 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %284(ptr noundef %254, i32 noundef 8) #17
  br label %285

285:                                              ; preds = %283, %272
  call void asm sideeffect "dsb sy", "~{memory}"() #17, !srcloc !53
  br label %228

286:                                              ; preds = %257, %236, %223, %173, %169, %164
  %287 = and i32 %96, 65535
  call void @ida_free(ptr noundef nonnull @its_vpeid_ida, i32 noundef %287) #17
  %288 = call ptr @page_address(ptr noundef nonnull %108) #17
  %289 = load i32, ptr @lpi_id_bits, align 4
  %290 = shl nuw i32 1, %289
  %291 = lshr i32 %290, 3
  %292 = add nuw nsw i32 %291, 65535
  %293 = and i32 %292, 1073676288
  %294 = add nsw i32 %293, -1
  %295 = lshr i32 %294, 12
  %296 = call i32 @llvm.ctlz.i32(i32 %295, i1 true) #17, !range !15
  %297 = sub nuw nsw i32 32, %296
  %298 = ptrtoint ptr %288 to i32
  call void @free_pages(i32 noundef %298, i32 noundef %297) #17
  br label %353

299:                                              ; preds = %228, %183, %178
  %300 = phi ptr [ %179, %183 ], [ %179, %178 ], [ %232, %228 ]
  %301 = getelementptr inbounds %struct.its_vpe, ptr %80, i32 0, i32 8
  store i32 0, ptr %301, align 4
  %302 = trunc i32 %96 to i16
  %303 = getelementptr inbounds %struct.its_vpe, ptr %80, i32 0, i32 10
  store i16 %302, ptr %303, align 2
  store ptr %108, ptr %80, align 4
  %304 = getelementptr inbounds %struct.rdists, ptr %300, i32 0, i32 8
  %305 = load i8, ptr %304, align 1, !range !14
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %299
  %308 = getelementptr inbounds %struct.its_vpe, ptr %80, i32 0, i32 7, i32 0, i32 3
  store volatile i32 0, ptr %308, align 4
  br label %311

309:                                              ; preds = %299
  %310 = getelementptr inbounds %struct.its_vpe, ptr %80, i32 0, i32 7
  store i32 -1, ptr %310, align 4
  br label %311

311:                                              ; preds = %309, %307
  %312 = add i32 %72, %1
  %313 = load ptr, ptr %64, align 4
  %314 = getelementptr ptr, ptr %313, i32 %72
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.its_vpe, ptr %315, i32 0, i32 4
  %317 = load i32, ptr %316, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #17, !annotation !24
  %318 = load ptr, ptr %65, align 4
  %319 = getelementptr inbounds %struct.irq_domain, ptr %318, i32 0, i32 6
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  %322 = icmp ugt ptr %320, inttoptr (i32 -4096 to ptr)
  %323 = or i1 %321, %322
  br i1 %323, label %332, label %324

324:                                              ; preds = %311
  %325 = getelementptr inbounds %struct.fwnode_handle, ptr %320, i32 0, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = icmp ne ptr %326, @of_fwnode_ops
  %328 = getelementptr i8, ptr %320, i32 -12
  %329 = icmp eq ptr %328, null
  %330 = select i1 %327, i1 true, i1 %329
  br i1 %330, label %332, label %331

331:                                              ; preds = %324
  store ptr %320, ptr %5, align 4
  store i32 3, ptr %66, align 4
  store i32 -1592735507, ptr %67, align 4
  br label %339

332:                                              ; preds = %324, %311
  br i1 %321, label %338, label %333

333:                                              ; preds = %332
  %334 = getelementptr inbounds %struct.fwnode_handle, ptr %320, i32 0, i32 1
  %335 = load ptr, ptr %334, align 4
  %336 = icmp eq ptr %335, @irqchip_fwnode_ops
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  store ptr %320, ptr %5, align 4
  store i32 2, ptr %66, align 4
  br label %339

338:                                              ; preds = %333, %332
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #17
  br label %353

339:                                              ; preds = %337, %331
  %340 = phi ptr [ %68, %331 ], [ %67, %337 ]
  %341 = phi ptr [ %69, %331 ], [ %68, %337 ]
  store i32 %317, ptr %340, align 4
  store i32 1, ptr %341, align 4
  %342 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %312, i32 noundef 1, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #17
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %339
  %345 = load ptr, ptr %64, align 4
  %346 = getelementptr ptr, ptr %345, i32 %72
  %347 = load ptr, ptr %346, align 4
  %348 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %312, i32 noundef %72, ptr noundef nonnull %61, ptr noundef %347) #17
  call void @_set_bit(i32 noundef %72, ptr noundef nonnull %17) #17
  %349 = add nuw i32 %72, 1
  %350 = icmp eq i32 %349, %2
  br i1 %350, label %372, label %351

351:                                              ; preds = %344
  %352 = load ptr, ptr @gic_rdists, align 4
  br label %70

353:                                              ; preds = %339, %338, %286, %110, %92
  %354 = phi i32 [ -22, %338 ], [ -12, %110 ], [ -12, %286 ], [ %342, %339 ], [ %96, %92 ]
  %355 = icmp sgt i32 %72, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  call void @its_vpe_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %72)
  br label %357

357:                                              ; preds = %356, %353
  %358 = call fastcc i32 @free_lpi_range(i32 noundef %53, i32 noundef %20) #17
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %361, label %360, !prof !13

360:                                              ; preds = %357
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2162, i32 noundef 9, ptr noundef null) #17
  br label %361

361:                                              ; preds = %360, %357
  call void @bitmap_free(ptr noundef nonnull %17) #17
  %362 = call ptr @page_address(ptr noundef nonnull %37) #17
  %363 = load i32, ptr @lpi_id_bits, align 4
  %364 = shl nuw i32 1, %363
  %365 = add nuw i32 %364, 65535
  %366 = and i32 %365, -65536
  %367 = add i32 %366, -1
  %368 = lshr i32 %367, 12
  %369 = call i32 @llvm.ctlz.i32(i32 %368, i1 true) #17, !range !15
  %370 = sub nuw nsw i32 32, %369
  %371 = ptrtoint ptr %362 to i32
  call void @free_pages(i32 noundef %371, i32 noundef %370) #17
  br label %372

372:                                              ; preds = %361, %344, %45, %44, %27, %10
  %373 = phi i32 [ -12, %27 ], [ -12, %44 ], [ -12, %10 ], [ %354, %361 ], [ 0, %45 ], [ 0, %344 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret i32 %373
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_vpe_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2) #17
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %78, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.its_vm, ptr %6, i32 0, i32 6
  %10 = getelementptr inbounds i8, ptr %4, i32 8
  %11 = getelementptr inbounds %struct.anon.88, ptr %4, i32 0, i32 1
  br label %12

12:                                               ; preds = %60, %8
  %13 = phi i32 [ 0, %8 ], [ %76, %60 ]
  %14 = add i32 %13, %1
  %15 = call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.irq_data, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.its_vpe, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %6, %19
  br i1 %20, label %22, label %21, !prof !13

21:                                               ; preds = %12
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-gic-v3-its.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4444, 0\0A.popsection", ""() #17, !srcloc !54
  unreachable

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.irq_data, ptr %15, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %9, align 4
  call void @_clear_bit(i32 noundef %24, ptr noundef %25) #17
  %26 = load ptr, ptr @gic_rdists, align 4
  %27 = getelementptr inbounds %struct.rdists, ptr %26, i32 0, i32 8
  %28 = load i8, ptr %27, align 1, !range !14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rdists, ptr %26, i32 0, i32 9
  %32 = load i8, ptr %31, align 2, !range !14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpe_proxy) #17
  %36 = load ptr, ptr @gic_rdists, align 4
  %37 = getelementptr inbounds %struct.rdists, ptr %36, i32 0, i32 8
  %38 = load i8, ptr %37, align 1, !range !14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.its_vpe, ptr %17, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %45, ptr %4, align 4
  store i32 %42, ptr %11, align 4
  %46 = getelementptr inbounds %struct.its_device, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  call fastcc void @its_send_single_command(ptr noundef %47, ptr noundef nonnull @its_build_discard_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  %48 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 2), align 4
  %49 = load i32, ptr %41, align 4
  %50 = getelementptr ptr, ptr %48, i32 %49
  store ptr null, ptr %50, align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 2), align 4
  %52 = load i32, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 3), align 4
  %53 = getelementptr ptr, ptr %51, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %44
  %57 = load i32, ptr %41, align 4
  store i32 %57, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 3), align 4
  br label %58

58:                                               ; preds = %56, %44
  store i32 -1, ptr %41, align 4
  br label %59

59:                                               ; preds = %58, %40, %34
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpe_proxy, i32 noundef %35) #17
  br label %60

60:                                               ; preds = %59, %30, %22
  %61 = getelementptr inbounds %struct.its_vpe, ptr %17, i32 0, i32 10
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  call void @ida_free(ptr noundef nonnull @its_vpeid_ida, i32 noundef %63) #17
  %64 = load ptr, ptr %17, align 4
  %65 = call ptr @page_address(ptr noundef %64) #17
  %66 = load i32, ptr @lpi_id_bits, align 4
  %67 = shl nuw i32 1, %66
  %68 = lshr i32 %67, 3
  %69 = add nuw nsw i32 %68, 65535
  %70 = and i32 %69, 1073676288
  %71 = add nsw i32 %70, -1
  %72 = lshr i32 %71, 12
  %73 = call i32 @llvm.ctlz.i32(i32 %72, i1 true) #17, !range !15
  %74 = sub nuw nsw i32 32, %73
  %75 = ptrtoint ptr %65 to i32
  call void @free_pages(i32 noundef %75, i32 noundef %74) #17
  call void @irq_domain_reset_irq_data(ptr noundef %15) #17
  %76 = add nuw i32 %13, 1
  %77 = icmp eq i32 %76, %2
  br i1 %77, label %78, label %12

78:                                               ; preds = %60, %3
  %79 = getelementptr inbounds %struct.its_vm, ptr %6, i32 0, i32 6
  %80 = getelementptr inbounds %struct.its_vm, ptr %6, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %79, align 4
  %83 = call i32 @_find_first_bit_le(ptr noundef %82, i32 noundef %81) #17
  %84 = icmp eq i32 %83, %81
  br i1 %84, label %85, label %106

85:                                               ; preds = %78
  %86 = load ptr, ptr %79, align 4
  %87 = load i32, ptr %80, align 4
  %88 = getelementptr inbounds %struct.its_vm, ptr %6, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = call fastcc i32 @free_lpi_range(i32 noundef %89, i32 noundef %87) #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92, !prof !13

92:                                               ; preds = %85
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2162, i32 noundef 9, ptr noundef null) #17
  br label %93

93:                                               ; preds = %92, %85
  call void @bitmap_free(ptr noundef %86) #17
  %94 = getelementptr inbounds %struct.its_vm, ptr %6, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = call ptr @page_address(ptr noundef %95) #17
  %97 = load i32, ptr @lpi_id_bits, align 4
  %98 = shl nuw i32 1, %97
  %99 = add nuw i32 %98, 65535
  %100 = and i32 %99, -65536
  %101 = add i32 %100, -1
  %102 = lshr i32 %101, 12
  %103 = call i32 @llvm.ctlz.i32(i32 %102, i1 true) #17, !range !15
  %104 = sub nuw nsw i32 32, %103
  %105 = ptrtoint ptr %96 to i32
  call void @free_pages(i32 noundef %105, i32 noundef %104) #17
  br label %106

106:                                              ; preds = %93, %78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_vpe_irq_domain_activate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = alloca %struct.its_cmd_desc, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @its_list_map, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @gic_rdists, align 4
  %12 = getelementptr inbounds %struct.rdists, ptr %11, i32 0, i32 8
  %13 = load i8, ptr %12, align 1, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %10, %3
  %16 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #17
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 9
  store i16 %17, ptr %18, align 4
  %19 = load ptr, ptr @its_nodes, align 4
  %20 = icmp eq ptr %19, @its_nodes
  br i1 %20, label %43, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %5, i32 8
  %23 = getelementptr inbounds %struct.anon.91, ptr %5, i32 0, i32 1
  %24 = getelementptr inbounds i8, ptr %4, i32 4
  br label %25

25:                                               ; preds = %38, %21
  %26 = phi ptr [ %19, %21 ], [ %39, %38 ]
  %27 = getelementptr i8, ptr %26, i32 240
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 2
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 -24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %22, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %7, ptr %5, align 4
  store i8 1, ptr %22, align 4
  %33 = getelementptr i8, ptr %26, i32 224
  %34 = load ptr, ptr %33, align 8
  %35 = load i16, ptr %18, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr %struct.its_collection, ptr %34, i32 %36
  store ptr %37, ptr %23, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %32, ptr noundef nonnull @its_build_vmapp_cmd, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %24, i8 0, i32 16, i1 false) #17, !annotation !24
  store ptr %7, ptr %4, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %32, ptr noundef nonnull @its_build_vinvall_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  br label %38

38:                                               ; preds = %31, %25
  %39 = load ptr, ptr %26, align 4
  %40 = icmp eq ptr %39, @its_nodes
  br i1 %40, label %41, label %25

41:                                               ; preds = %38
  %42 = load i16, ptr %18, align 4
  br label %43

43:                                               ; preds = %41, %15
  %44 = phi i16 [ %42, %41 ], [ %17, %15 ]
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 31
  %47 = add nuw nsw i32 %46, 1
  %48 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %47
  %49 = lshr i32 %45, 5
  %50 = sub nsw i32 0, %49
  %51 = getelementptr i32, ptr %48, i32 %50
  %52 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.irq_common_data, ptr %53, i32 0, i32 4
  %55 = load i32, ptr %51, align 4
  store i32 %55, ptr %54, align 4
  br label %56

56:                                               ; preds = %43, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_vpe_irq_domain_deactivate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @its_list_map, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @gic_rdists, align 4
  %10 = getelementptr inbounds %struct.rdists, ptr %9, i32 0, i32 8
  %11 = load i8, ptr %10, align 1, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %8, %2
  %14 = load ptr, ptr @its_nodes, align 4
  %15 = icmp eq ptr %14, @its_nodes
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %3, i32 8
  %18 = getelementptr inbounds %struct.its_vpe, ptr %5, i32 0, i32 9
  %19 = getelementptr inbounds %struct.anon.91, ptr %3, i32 0, i32 1
  br label %20

20:                                               ; preds = %33, %16
  %21 = phi ptr [ %14, %16 ], [ %34, %33 ]
  %22 = getelementptr i8, ptr %21, i32 240
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 2
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %21, i32 -24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %17, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %5, ptr %3, align 4
  %28 = getelementptr i8, ptr %21, i32 224
  %29 = load ptr, ptr %28, align 8
  %30 = load i16, ptr %18, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr %struct.its_collection, ptr %29, i32 %31
  store ptr %32, ptr %19, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %27, ptr noundef nonnull @its_build_vmapp_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  br label %33

33:                                               ; preds = %26, %20
  %34 = load ptr, ptr %21, align 4
  %35 = icmp eq ptr %34, @its_nodes
  br i1 %35, label %36, label %20

36:                                               ; preds = %33, %13
  %37 = load ptr, ptr @find_4_1_its.its, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %44, %36
  %40 = phi ptr [ %41, %44 ], [ @its_nodes, %36 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, @its_nodes
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr null, ptr @find_4_1_its.its, align 4
  br label %65

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %41, i32 240
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 1099511627776
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %39, label %49

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %41, i32 -24
  store ptr %50, ptr @find_4_1_its.its, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %49, %36
  %53 = getelementptr inbounds %struct.its_vpe, ptr %5, i32 0, i32 7, i32 0, i32 3
  %54 = load volatile i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  %58 = load ptr, ptr %5, align 4
  %59 = call ptr @page_address(ptr noundef %58) #17
  %60 = load i32, ptr @lpi_id_bits, align 4
  %61 = shl nuw i32 1, %60
  %62 = lshr i32 %61, 3
  %63 = add nuw nsw i32 %62, 65535
  %64 = and i32 %63, 1073676288
  call void %57(ptr noundef %59, i32 noundef %64) #17
  br label %65

65:                                               ; preds = %56, %52, %49, %43, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_vpe_mask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @lpi_write_config(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0)
  tail call fastcc void @its_vpe_send_inv(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_vpe_unmask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @lpi_write_config(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1)
  tail call fastcc void @its_vpe_send_inv(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_vpe_set_affinity(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = alloca %struct.its_cmd_desc, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_find_first_bit_le(ptr noundef %1, i32 noundef 16) #17
  %9 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 9
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %162, label %15

15:                                               ; preds = %3
  %16 = trunc i32 %8 to i16
  store i16 %16, ptr %11, align 4
  %17 = load ptr, ptr @gic_rdists, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %18 to i32
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %15
  %28 = lshr i32 %13, 5
  %29 = getelementptr i32, ptr %25, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %13, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %162

35:                                               ; preds = %27, %15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #17
  %36 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %36, i8 0, i32 16, i1 false) #17
  %37 = and i32 %8, 65535
  store ptr %7, ptr %5, align 4
  %38 = load i32, ptr @its_list_map, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load ptr, ptr @its_nodes, align 4
  %42 = getelementptr i8, ptr %41, i32 -24
  %43 = getelementptr i8, ptr %41, i32 224
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr %struct.its_collection, ptr %44, i32 %37
  store ptr %45, ptr %36, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %42, ptr noundef nonnull @its_build_vmovp_cmd, ptr noundef nonnull %5) #17
  br label %114

46:                                               ; preds = %35
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vmovp_lock) #17
  %48 = load i16, ptr @vmovp_seq_num, align 2
  %49 = add i16 %48, 1
  store i16 %49, ptr @vmovp_seq_num, align 2
  %50 = getelementptr inbounds %struct.anon.94, ptr %5, i32 0, i32 2
  store i16 %48, ptr %50, align 4
  %51 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr @its_nodes, align 4
  %54 = icmp eq ptr %53, @its_nodes
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.anon.94, ptr %5, i32 0, i32 3
  store i16 0, ptr %56, align 2
  br label %113

57:                                               ; preds = %46
  %58 = load ptr, ptr @gic_rdists, align 4
  %59 = getelementptr inbounds %struct.rdists, ptr %58, i32 0, i32 8
  br label %60

60:                                               ; preds = %80, %57
  %61 = phi ptr [ %53, %57 ], [ %82, %80 ]
  %62 = phi i32 [ 0, %57 ], [ %81, %80 ]
  %63 = getelementptr i8, ptr %61, i32 240
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 2
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %60
  %68 = load i8, ptr %59, align 1, !range !14
  %69 = icmp eq i8 %68, 0
  %70 = getelementptr i8, ptr %61, i32 280
  %71 = load i32, ptr %70, align 8
  br i1 %69, label %72, label %76

72:                                               ; preds = %67
  %73 = getelementptr %struct.its_vm, ptr %52, i32 0, i32 8, i32 %71
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72, %67
  %77 = and i32 %71, 31
  %78 = shl nuw i32 1, %77
  %79 = or i32 %78, %62
  br label %80

80:                                               ; preds = %76, %72, %60
  %81 = phi i32 [ %62, %72 ], [ %79, %76 ], [ %62, %60 ]
  %82 = load ptr, ptr %61, align 4
  %83 = icmp eq ptr %82, @its_nodes
  br i1 %83, label %84, label %60

84:                                               ; preds = %80
  %85 = trunc i32 %81 to i16
  %86 = getelementptr inbounds %struct.anon.94, ptr %5, i32 0, i32 3
  store i16 %85, ptr %86, align 2
  br label %87

87:                                               ; preds = %110, %84
  %88 = phi ptr [ %53, %84 ], [ %111, %110 ]
  %89 = getelementptr i8, ptr %88, i32 -24
  %90 = getelementptr i8, ptr %88, i32 240
  %91 = load i64, ptr %90, align 8
  %92 = and i64 %91, 2
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr @gic_rdists, align 4
  %96 = getelementptr inbounds %struct.rdists, ptr %95, i32 0, i32 8
  %97 = load i8, ptr %96, align 1, !range !14
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load ptr, ptr %51, align 4
  %101 = getelementptr i8, ptr %88, i32 280
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr %struct.its_vm, ptr %100, i32 0, i32 8, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %99, %94
  %107 = getelementptr i8, ptr %88, i32 224
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr %struct.its_collection, ptr %108, i32 %37
  store ptr %109, ptr %36, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %89, ptr noundef nonnull @its_build_vmovp_cmd, ptr noundef nonnull %5) #17
  br label %110

110:                                              ; preds = %106, %99, %87
  %111 = load ptr, ptr %88, align 4
  %112 = icmp eq ptr %111, @its_nodes
  br i1 %112, label %113, label %87

113:                                              ; preds = %110, %55
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vmovp_lock, i32 noundef %47) #17
  br label %114

114:                                              ; preds = %113, %40
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #17
  %115 = load ptr, ptr @gic_rdists, align 4
  %116 = getelementptr inbounds %struct.rdists, ptr %115, i32 0, i32 8
  %117 = load i8, ptr %116, align 1, !range !14
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %162

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.rdists, ptr %115, i32 0, i32 9
  %121 = load i8, ptr %120, align 2, !range !14
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %143, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %115, align 8
  %125 = ptrtoint ptr %124 to i32
  %126 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, %125
  %129 = inttoptr i32 %128 to ptr
  %130 = getelementptr inbounds %struct.anon, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 4
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr i8, ptr %131, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %133) #17, !srcloc !11
  %135 = getelementptr i8, ptr %131, i32 192
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #17, !srcloc !10
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %162, label %139

139:                                              ; preds = %139, %123
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !39
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #17, !srcloc !10
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %162, label %139

143:                                              ; preds = %119
  %144 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpe_proxy) #17
  call fastcc void @its_vpe_db_proxy_map_locked(ptr noundef %7) #17
  %145 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  %146 = getelementptr inbounds %struct.its_device, ptr %145, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.its_node, ptr %147, i32 0, i32 9
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr %struct.its_collection, ptr %149, i32 %8
  %151 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 7
  %152 = load i32, ptr %151, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %153 = getelementptr inbounds i8, ptr %4, i32 12
  store i64 0, ptr %153, align 4, !annotation !24
  store ptr %145, ptr %4, align 4
  %154 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 1
  store ptr %150, ptr %154, align 4
  %155 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 2
  store i32 %152, ptr %155, align 4
  %156 = load ptr, ptr %146, align 4
  call fastcc void @its_send_single_command(ptr noundef %156, ptr noundef nonnull @its_build_movi_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  %157 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  %158 = getelementptr inbounds %struct.its_device, ptr %157, i32 0, i32 2, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = load i32, ptr %151, align 4
  %161 = getelementptr i16, ptr %159, i32 %160
  store i16 %16, ptr %161, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpe_proxy, i32 noundef %144) #17
  br label %162

162:                                              ; preds = %143, %139, %123, %114, %27, %3
  %163 = and i32 %8, 31
  %164 = add nuw nsw i32 %163, 1
  %165 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %164
  %166 = lshr i32 %8, 5
  %167 = sub nsw i32 0, %166
  %168 = getelementptr i32, ptr %165, i32 %167
  %169 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.irq_common_data, ptr %170, i32 0, i32 4
  %172 = load i32, ptr %168, align 4
  store i32 %172, ptr %171, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #17
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_vpe_retrigger(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @its_vpe_set_irqchip_state(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true)
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_vpe_set_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.its_cmd_desc, align 4
  %5 = alloca %struct.its_cmd_desc, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %3
  %10 = load ptr, ptr @gic_rdists, align 4
  %11 = getelementptr inbounds %struct.rdists, ptr %10, i32 0, i32 9
  %12 = load i8, ptr %11, align 2, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 9
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %16
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  br i1 %2, label %28, label %30

28:                                               ; preds = %14
  %29 = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #17, !srcloc !11
  br label %55

30:                                               ; preds = %14
  %31 = getelementptr i8, ptr %25, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #17, !srcloc !11
  %32 = getelementptr i8, ptr %25, i32 192
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #17, !srcloc !10
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %36, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !39
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #17, !srcloc !10
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %36

40:                                               ; preds = %9
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpe_proxy) #17
  tail call fastcc void @its_vpe_db_proxy_map_locked(ptr noundef %7) #17
  %42 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  %43 = getelementptr inbounds %struct.its_vpe, ptr %7, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  br i1 %2, label %45, label %50

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #17
  %46 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %46, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %42, ptr %5, align 4
  %47 = getelementptr inbounds %struct.anon.83, ptr %5, i32 0, i32 1
  store i32 %44, ptr %47, align 4
  %48 = getelementptr inbounds %struct.its_device, ptr %42, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  call fastcc void @its_send_single_command(ptr noundef %49, ptr noundef nonnull @its_build_int_cmd, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpe_proxy, i32 noundef %41) #17
  br label %55

50:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %51 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %51, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %42, ptr %4, align 4
  %52 = getelementptr inbounds %struct.anon.82, ptr %4, i32 0, i32 1
  store i32 %44, ptr %52, align 4
  %53 = getelementptr inbounds %struct.its_device, ptr %42, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  call fastcc void @its_send_single_command(ptr noundef %54, ptr noundef nonnull @its_build_clear_cmd, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpe_proxy, i32 noundef %41) #17
  br label %55

55:                                               ; preds = %50, %45, %36, %30, %28, %3
  %56 = phi i32 [ -22, %3 ], [ 0, %28 ], [ 0, %45 ], [ 0, %50 ], [ 0, %30 ], [ 0, %36 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_vpe_set_vcpu_affinity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  switch i32 %6, label %104 [
    i32 4, label %7
    i32 5, label %55
    i32 6, label %76
    i32 7, label %77
  ]

7:                                                ; preds = %2
  %8 = load ptr, ptr @gic_rdists, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #5, !srcloc !9
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.its_vpe, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.its_vm, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @page_address(ptr noundef %21) #17
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %23, i32 -2130706432, i32 8454144) #21, !srcloc !16
  %25 = and i32 %24, -4096
  %26 = load i32, ptr @lpi_id_bits, align 4
  %27 = add i32 %26, 31
  %28 = and i32 %27, 31
  %29 = or i32 %25, %28
  %30 = or i32 %29, 1408
  %31 = getelementptr i8, ptr %17, i32 131184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #17, !srcloc !11
  %32 = getelementptr i8, ptr %17, i32 131188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #17, !srcloc !11
  %33 = load ptr, ptr %5, align 4
  %34 = tail call ptr @page_address(ptr noundef %33) #17
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %35, i32 -2130706432, i32 8454144) #21, !srcloc !16
  %37 = getelementptr inbounds %struct.its_vpe, ptr %5, i32 0, i32 7, i32 0, i32 1
  %38 = load i8, ptr %37, align 4, !range !14
  %39 = getelementptr i8, ptr %17, i32 131196
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #17, !srcloc !10
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42

42:                                               ; preds = %7
  %43 = and i32 %40, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %43) #17, !srcloc !11
  br label %44

44:                                               ; preds = %42, %7
  %45 = getelementptr i8, ptr %17, i32 131192
  %46 = icmp eq i8 %38, 0
  %47 = select i1 %46, i64 0, i64 4611686018427387904
  %48 = and i32 %36, -65536
  %49 = zext i32 %48 to i64
  %50 = or i64 %47, %49
  %51 = or i64 %50, -6917529027641079936
  %52 = trunc i64 %51 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %52) #17, !srcloc !11
  %53 = lshr i64 %51, 32
  %54 = trunc i64 %53 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %54) #17, !srcloc !11
  br label %104

55:                                               ; preds = %2
  %56 = load ptr, ptr @gic_rdists, align 4
  %57 = load ptr, ptr %56, align 8
  %58 = ptrtoint ptr %57 to i32
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %60 = inttoptr i32 %59 to ptr
  %61 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %60) #5, !srcloc !9
  %62 = add i32 %61, %58
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.anon, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 131072
  %67 = tail call fastcc i64 @its_clear_vpend_valid(ptr noundef %66, i64 noundef 0, i64 noundef 0) #17
  %68 = getelementptr inbounds %struct.its_vpe, ptr %5, i32 0, i32 7, i32 0, i32 1
  %69 = lshr i64 %67, 62
  %70 = trunc i64 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, ptr %68, align 4
  %72 = getelementptr inbounds %struct.its_vpe, ptr %5, i32 0, i32 11
  %73 = lshr i64 %67, 61
  %74 = trunc i64 %73 to i8
  %75 = and i8 %74, 1
  store i8 %75, ptr %72, align 4
  br label %104

76:                                               ; preds = %2
  tail call fastcc void @its_wait_vpt_parse_complete()
  br label %104

77:                                               ; preds = %2
  %78 = load ptr, ptr @its_nodes, align 4
  %79 = icmp eq ptr %78, @its_nodes
  br i1 %79, label %104, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr @its_list_map, align 4
  %82 = icmp eq i32 %81, 0
  %83 = getelementptr inbounds %struct.its_vpe, ptr %5, i32 0, i32 1
  br label %84

84:                                               ; preds = %101, %80
  %85 = phi ptr [ %78, %80 ], [ %102, %101 ]
  %86 = getelementptr i8, ptr %85, i32 240
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 2
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %84
  br i1 %82, label %98, label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %83, align 4
  %93 = getelementptr i8, ptr %85, i32 280
  %94 = load i32, ptr %93, align 8
  %95 = getelementptr %struct.its_vm, ptr %92, i32 0, i32 8, i32 %94
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91, %90
  %99 = getelementptr i8, ptr %85, i32 -24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %100 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %100, i8 0, i32 16, i1 false) #17, !annotation !24
  store ptr %5, ptr %3, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef %99, ptr noundef nonnull @its_build_vinvall_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  br label %104

101:                                              ; preds = %91, %84
  %102 = load ptr, ptr %85, align 4
  %103 = icmp eq ptr %102, @its_nodes
  br i1 %103, label %104, label %84

104:                                              ; preds = %101, %98, %77, %76, %55, %44, %2
  %105 = phi i32 [ 0, %76 ], [ 0, %55 ], [ 0, %44 ], [ -22, %2 ], [ 0, %77 ], [ 0, %98 ], [ 0, %101 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @its_vpe_send_inv(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.its_cmd_desc, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @gic_rdists, align 4
  %6 = getelementptr inbounds %struct.rdists, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 2, !range !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %10 to i32
  %12 = getelementptr inbounds %struct.its_vpe, ptr %4, i32 0, i32 9
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %11
  %18 = inttoptr i32 %17 to ptr
  tail call void @_raw_spin_lock(ptr noundef %18) #17
  %19 = load ptr, ptr @gic_rdists, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = load i16, ptr %12, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %21
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.irq_data, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %29, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #17, !srcloc !11
  %35 = getelementptr i8, ptr %29, i32 192
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #17, !srcloc !10
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %39, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !39
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #17, !srcloc !10
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %39

43:                                               ; preds = %39, %9
  %44 = load ptr, ptr @gic_rdists, align 4
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %45 to i32
  %47 = load i16, ptr %12, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %46
  %52 = inttoptr i32 %51 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %53 = load i16, ptr %52, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %64

55:                                               ; preds = %1
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpe_proxy) #17
  tail call fastcc void @its_vpe_db_proxy_map_locked(ptr noundef %4) #17
  %57 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  %58 = getelementptr inbounds %struct.its_vpe, ptr %4, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  %60 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %60, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %57, ptr %2, align 4
  %61 = getelementptr inbounds %struct.anon.81, ptr %2, i32 0, i32 1
  store i32 %59, ptr %61, align 4
  %62 = getelementptr inbounds %struct.its_device, ptr %57, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  call fastcc void @its_send_single_command(ptr noundef %63, ptr noundef nonnull @its_build_inv_cmd, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpe_proxy, i32 noundef %56) #17
  br label %64

64:                                               ; preds = %55, %43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @its_vpe_db_proxy_map_locked(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.its_cmd_desc, align 4
  %3 = alloca %struct.its_cmd_desc, align 4
  %4 = load ptr, ptr @gic_rdists, align 4
  %5 = getelementptr inbounds %struct.rdists, ptr %4, i32 0, i32 8
  %6 = load i8, ptr %5, align 1, !range !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %64

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 2), align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 3), align 4
  %15 = getelementptr ptr, ptr %13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.its_vpe, ptr %16, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %24 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %24, i8 0, i32 12, i1 false) #17, !annotation !24
  store ptr %23, ptr %3, align 4
  %25 = getelementptr inbounds %struct.anon.88, ptr %3, i32 0, i32 1
  store i32 %20, ptr %25, align 4
  %26 = getelementptr inbounds %struct.its_device, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  call fastcc void @its_send_single_command(ptr noundef %27, ptr noundef nonnull @its_build_discard_cmd, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  %28 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 2), align 4
  %29 = load i32, ptr %19, align 4
  %30 = getelementptr ptr, ptr %28, i32 %29
  store ptr null, ptr %30, align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 2), align 4
  %32 = load i32, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 3), align 4
  %33 = getelementptr ptr, ptr %31, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %22
  %37 = load i32, ptr %19, align 4
  store i32 %37, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 3), align 4
  br label %38

38:                                               ; preds = %36, %22
  %39 = phi i32 [ %37, %36 ], [ %32, %22 ]
  store i32 -1, ptr %19, align 4
  br label %40

40:                                               ; preds = %38, %18, %12
  %41 = phi i32 [ %39, %38 ], [ %14, %18 ], [ %14, %12 ]
  %42 = phi ptr [ %31, %38 ], [ %13, %18 ], [ %13, %12 ]
  %43 = getelementptr ptr, ptr %42, i32 %41
  store ptr %0, ptr %43, align 4
  %44 = load i32, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 3), align 4
  store i32 %44, ptr %9, align 4
  %45 = add i32 %44, 1
  %46 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  %47 = getelementptr inbounds %struct.its_device, ptr %46, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = urem i32 %45, %48
  store i32 %49, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 3), align 4
  %50 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 9
  %51 = load i16, ptr %50, align 4
  %52 = getelementptr inbounds %struct.its_device, ptr %46, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i16, ptr %53, i32 %44
  store i16 %51, ptr %54, align 2
  %55 = load ptr, ptr getelementptr inbounds (%struct.anon.102, ptr @vpe_proxy, i32 0, i32 1), align 4
  %56 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  %59 = getelementptr inbounds i8, ptr %2, i32 12
  store i64 0, ptr %59, align 4, !annotation !24
  store ptr %55, ptr %2, align 4
  %60 = getelementptr inbounds %struct.anon.86, ptr %2, i32 0, i32 1
  store i32 %57, ptr %60, align 4
  %61 = getelementptr inbounds %struct.anon.86, ptr %2, i32 0, i32 2
  store i32 %58, ptr %61, align 4
  %62 = getelementptr inbounds %struct.its_device, ptr %55, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  call fastcc void @its_send_single_command(ptr noundef %63, ptr noundef nonnull @its_build_mapti_cmd, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  br label %64

64:                                               ; preds = %40, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_vmovp_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.anon.94, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 8
  %9 = sext i32 %8 to i64
  %10 = add i64 %6, %9
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, -256
  %13 = or i64 %12, 34
  store i64 %13, ptr %1, align 8
  %14 = getelementptr inbounds %struct.anon.94, ptr %2, i32 0, i32 2
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i64
  %17 = and i64 %13, -281470681743582
  %18 = shl nuw nsw i64 %16, 32
  %19 = or i64 %18, %17
  store i64 %19, ptr %1, align 8
  %20 = getelementptr inbounds %struct.anon.94, ptr %2, i32 0, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %23 = zext i16 %21 to i64
  %24 = load i64, ptr %22, align 8
  %25 = and i64 %24, -65536
  %26 = or i64 %25, %23
  store i64 %26, ptr %22, align 8
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.its_vpe, ptr %27, i32 0, i32 10
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i64
  %31 = and i64 %26, -281470681743361
  %32 = shl nuw nsw i64 %30, 32
  %33 = or i64 %32, %31
  store i64 %33, ptr %22, align 8
  %34 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, -4503599627304961
  %37 = and i64 %10, 4503599627304960
  %38 = or i64 %36, %37
  store i64 %38, ptr %34, align 8
  %39 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 12
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 1099511627776
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %3
  %44 = or i64 %38, -9223372036854775808
  store i64 %44, ptr %34, align 8
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr inbounds %struct.its_vpe, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr [4 x i64], ptr %1, i32 0, i32 3
  %49 = zext i32 %47 to i64
  %50 = load i64, ptr %48, align 8
  %51 = and i64 %50, -4294967296
  %52 = or i64 %51, %49
  store i64 %52, ptr %48, align 8
  br label %53

53:                                               ; preds = %43, %3
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.its_vpe, ptr %54, i32 0, i32 9
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = getelementptr %struct.its_collection, ptr %56, i32 %59
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp ne i64 %62, 0
  %64 = load i1, ptr @valid_col.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !22

67:                                               ; preds = %53
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %68

68:                                               ; preds = %67, %53
  %69 = icmp eq ptr %60, null
  %70 = or i1 %63, %69
  %71 = select i1 %70, ptr null, ptr %54
  ret ptr %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @its_wait_vpt_parse_complete() unnamed_addr #0 {
  %1 = load ptr, ptr @gic_rdists, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #5, !srcloc !9
  %5 = getelementptr inbounds %struct.rdists, ptr %1, i32 0, i32 10
  %6 = load i8, ptr %5, align 1, !range !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  %11 = add i32 %4, %10
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i64 @ktime_get() #17
  %16 = add i64 %15, 500000
  %17 = getelementptr i8, ptr %14, i32 131192
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #17, !srcloc !10
  %19 = getelementptr i8, ptr %14, i32 131196
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #17, !srcloc !10
  %21 = zext i32 %20 to i64
  %22 = and i64 %21, 268435456
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %31, %8
  %25 = tail call i64 @ktime_get() #17
  %26 = icmp sgt i64 %25, %16
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #17, !srcloc !10
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #17, !srcloc !10
  %30 = zext i32 %29 to i64
  br label %38

31:                                               ; preds = %24
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #17
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #17, !srcloc !10
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #17, !srcloc !10
  %35 = zext i32 %34 to i64
  %36 = and i64 %35, 268435456
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %24

38:                                               ; preds = %31, %27, %8
  %39 = phi i64 [ %30, %27 ], [ %21, %8 ], [ %35, %31 ]
  %40 = and i64 %39, 268435456
  %41 = icmp ne i64 %40, 0
  %42 = load i1, ptr @its_wait_vpt_parse_complete.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !22

45:                                               ; preds = %38
  store i1 true, ptr @its_wait_vpt_parse_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3822, i32 noundef 9, ptr noundef null) #17
  br label %46

46:                                               ; preds = %45, %38, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_vpe_4_1_mask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.its_cmd_desc, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @lpi_write_config(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr @find_4_1_its.its, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %14, %1
  %10 = phi ptr [ %11, %14 ], [ @its_nodes, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @its_nodes
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store ptr null, ptr @find_4_1_its.its, align 4
  br label %25

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %11, i32 240
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 1099511627776
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %9, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %11, i32 -24
  store ptr %20, ptr @find_4_1_its.its, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %1
  %23 = phi ptr [ %20, %19 ], [ %7, %1 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  %24 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %24, i8 0, i32 16, i1 false) #17, !annotation !24
  store ptr %6, ptr %2, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef nonnull %23, ptr noundef nonnull @its_build_invdb_cmd, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  br label %25

25:                                               ; preds = %22, %19, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_vpe_4_1_unmask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.its_cmd_desc, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @lpi_write_config(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr @find_4_1_its.its, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %14, %1
  %10 = phi ptr [ %11, %14 ], [ @its_nodes, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @its_nodes
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store ptr null, ptr @find_4_1_its.its, align 4
  br label %25

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %11, i32 240
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 1099511627776
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %9, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %11, i32 -24
  store ptr %20, ptr @find_4_1_its.its, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %1
  %23 = phi ptr [ %20, %19 ], [ %7, %1 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  %24 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %24, i8 0, i32 16, i1 false) #17, !annotation !24
  store ptr %6, ptr %2, align 4
  call fastcc void @its_send_single_vcommand(ptr noundef nonnull %23, ptr noundef nonnull @its_build_invdb_cmd, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  br label %25

25:                                               ; preds = %22, %19, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_vpe_4_1_set_vcpu_affinity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  switch i32 %5, label %102 [
    i32 4, label %6
    i32 5, label %36
    i32 6, label %62
    i32 7, label %63
  ]

6:                                                ; preds = %2
  %7 = load ptr, ptr @gic_rdists, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #5, !srcloc !9
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.its_cmd_info, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 4, !range !14
  %19 = getelementptr inbounds %struct.anon.100, ptr %17, i32 0, i32 1
  %20 = load i8, ptr %19, align 1, !range !14
  %21 = getelementptr inbounds %struct.its_vpe, ptr %4, i32 0, i32 10
  %22 = load i16, ptr %21, align 2
  %23 = getelementptr i8, ptr %16, i32 131196
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #17, !srcloc !10
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = and i32 %24, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %27) #17, !srcloc !11
  br label %28

28:                                               ; preds = %26, %6
  %29 = getelementptr i8, ptr %16, i32 131192
  %30 = icmp eq i8 %18, 0
  %31 = select i1 %30, i32 -2147483648, i32 -2013265920
  %32 = icmp eq i8 %20, 0
  %33 = select i1 %32, i32 0, i32 67108864
  %34 = or i32 %33, %31
  %35 = zext i16 %22 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %35) #17, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %34) #17, !srcloc !11
  br label %102

36:                                               ; preds = %2
  %37 = load ptr, ptr @gic_rdists, align 4
  %38 = load ptr, ptr %37, align 8
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #5, !srcloc !9
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 131072
  %48 = getelementptr inbounds %struct.its_cmd_info, ptr %1, i32 0, i32 1
  %49 = load i8, ptr %48, align 4, !range !14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.its_vpe, ptr %4, i32 0, i32 8
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %52) #17
  %54 = tail call fastcc i64 @its_clear_vpend_valid(ptr noundef %47, i64 noundef 2305843009213693952, i64 noundef 4611686018427387904) #17
  %55 = getelementptr inbounds %struct.its_vpe, ptr %4, i32 0, i32 11
  %56 = lshr i64 %54, 61
  %57 = trunc i64 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, ptr %55, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %53) #17
  br label %102

59:                                               ; preds = %36
  %60 = tail call fastcc i64 @its_clear_vpend_valid(ptr noundef %47, i64 noundef 0, i64 noundef 2305843009213693952) #17
  %61 = getelementptr inbounds %struct.its_vpe, ptr %4, i32 0, i32 11
  store i8 1, ptr %61, align 4
  br label %102

62:                                               ; preds = %2
  tail call fastcc void @its_wait_vpt_parse_complete()
  br label %102

63:                                               ; preds = %2
  %64 = getelementptr inbounds %struct.its_vpe, ptr %4, i32 0, i32 8
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #17
  %66 = getelementptr inbounds %struct.its_vpe, ptr %4, i32 0, i32 9
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = load ptr, ptr @gic_rdists, align 4
  %70 = load ptr, ptr %69, align 8
  %71 = ptrtoint ptr %70 to i32
  %72 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %71
  %75 = inttoptr i32 %74 to ptr
  tail call void @_raw_spin_lock(ptr noundef %75) #17
  %76 = load ptr, ptr @gic_rdists, align 4
  %77 = load ptr, ptr %76, align 8
  %78 = ptrtoint ptr %77 to i32
  %79 = load i32, ptr %72, align 4
  %80 = add i32 %79, %78
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.anon, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #17, !srcloc !11
  %85 = getelementptr i8, ptr %83, i32 192
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #17, !srcloc !10
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %89, %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !39
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #17, !srcloc !10
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %89

93:                                               ; preds = %89, %63
  %94 = load ptr, ptr @gic_rdists, align 4
  %95 = load ptr, ptr %94, align 8
  %96 = ptrtoint ptr %95 to i32
  %97 = load i32, ptr %72, align 4
  %98 = add i32 %97, %96
  %99 = inttoptr i32 %98 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %100 = load i16, ptr %99, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %99, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #17
  br label %102

102:                                              ; preds = %93, %62, %59, %51, %28, %2
  %103 = phi i32 [ 0, %93 ], [ 0, %62 ], [ 0, %28 ], [ -22, %2 ], [ 0, %51 ], [ 0, %59 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @its_build_invdb_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 12
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 1099511627776
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9, !prof !22

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 944, i32 noundef 9, ptr noundef null) #17
  br label %40

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, -256
  %12 = or i64 %11, 46
  store i64 %12, ptr %1, align 8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.its_vpe, ptr %13, i32 0, i32 10
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %17 = zext i16 %15 to i64
  %18 = load i64, ptr %16, align 8
  %19 = and i64 %18, -281470681743361
  %20 = shl nuw nsw i64 %17, 32
  %21 = or i64 %19, %20
  store i64 %21, ptr %16, align 8
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.its_node, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.its_vpe, ptr %22, i32 0, i32 9
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr %struct.its_collection, ptr %24, i32 %27
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp ne i64 %30, 0
  %32 = load i1, ptr @valid_col.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !22

35:                                               ; preds = %9
  store i1 true, ptr @valid_col.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #17
  br label %36

36:                                               ; preds = %35, %9
  %37 = icmp eq ptr %28, null
  %38 = or i1 %31, %37
  %39 = select i1 %38, ptr null, ptr %22
  br label %40

40:                                               ; preds = %36, %8
  %41 = phi ptr [ null, %8 ], [ %39, %36 ]
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_save_disable() #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @its_lock) #17
  %1 = load ptr, ptr @its_nodes, align 4
  %2 = icmp eq ptr %1, @its_nodes
  br i1 %2, label %53, label %3

3:                                                ; preds = %24, %0
  %4 = phi ptr [ %34, %24 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #17, !srcloc !10
  %8 = getelementptr i8, ptr %4, i32 256
  store i32 %7, ptr %8, align 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #17, !srcloc !10
  %10 = and i32 %9, -2147483647
  %11 = icmp eq i32 %10, -2147483648
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = and i32 %9, -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %13) #17, !srcloc !11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #17, !srcloc !10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %24

16:                                               ; preds = %20, %12
  %17 = phi i32 [ %18, %20 ], [ 1000000, %12 ]
  %18 = add nsw i32 %17, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !33
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !34
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #17
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #17, !srcloc !10
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %16, label %24

24:                                               ; preds = %20, %12, %3
  %25 = getelementptr i8, ptr %6, i32 128
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #17, !srcloc !10
  %27 = zext i32 %26 to i64
  %28 = getelementptr i8, ptr %6, i32 132
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #17, !srcloc !10
  %30 = zext i32 %29 to i64
  %31 = shl nuw i64 %30, 32
  %32 = or i64 %31, %27
  %33 = getelementptr i8, ptr %4, i32 248
  store i64 %32, ptr %33, align 8
  %34 = load ptr, ptr %4, align 4
  %35 = icmp eq ptr %34, @its_nodes
  br i1 %35, label %53, label %3

36:                                               ; preds = %16
  %37 = getelementptr i8, ptr %4, i32 256
  %38 = getelementptr i8, ptr %4, i32 16
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %38, i32 noundef -16) #18
  %40 = load i32, ptr %37, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %40) #17, !srcloc !11
  %41 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, @its_nodes
  br i1 %43, label %53, label %44

44:                                               ; preds = %44, %36
  %45 = phi ptr [ %51, %44 ], [ %42, %36 ]
  %46 = getelementptr i8, ptr %45, i32 8
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr i8, ptr %45, i32 256
  %49 = load i32, ptr %48, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %49) #17, !srcloc !11
  %50 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, @its_nodes
  br i1 %52, label %53, label %44

53:                                               ; preds = %44, %36, %24, %0
  %54 = phi i32 [ -16, %36 ], [ 0, %0 ], [ -16, %44 ], [ 0, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %55 = load i16, ptr @its_lock, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr @its_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_restore_enable() #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @its_lock) #17
  %1 = load ptr, ptr @its_nodes, align 4
  %2 = icmp eq ptr %1, @its_nodes
  br i1 %2, label %96, label %3

3:                                                ; preds = %93, %0
  %4 = phi ptr [ %94, %93 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -24
  %6 = getelementptr i8, ptr %4, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !10
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !13

11:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 4814, i32 noundef 9, ptr noundef null) #17
  br label %12

12:                                               ; preds = %11, %3
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !10
  %14 = and i32 %13, -2147483647
  %15 = icmp eq i32 %14, -2147483648
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = and i32 %13, -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %17) #17, !srcloc !11
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !10
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %31

20:                                               ; preds = %24, %16
  %21 = phi i32 [ %22, %24 ], [ 1000000, %16 ]
  %22 = add nsw i32 %21, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !33
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !34
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #17
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !10
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %20, label %31

28:                                               ; preds = %20
  %29 = getelementptr i8, ptr %4, i32 16
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %29, i32 noundef -16) #18
  br label %93

31:                                               ; preds = %24, %16, %12
  %32 = getelementptr i8, ptr %4, i32 248
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr i8, ptr %7, i32 128
  %35 = trunc i64 %33 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %35) #17, !srcloc !11
  %36 = lshr i64 %33, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr i8, ptr %7, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #17, !srcloc !11
  %39 = getelementptr i8, ptr %4, i32 20
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %4, i32 24
  store ptr %40, ptr %41, align 8
  %42 = getelementptr i8, ptr %7, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #17, !srcloc !11
  %43 = getelementptr i8, ptr %7, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #17, !srcloc !11
  %44 = getelementptr i8, ptr %4, i32 32
  br label %45

45:                                               ; preds = %72, %31
  %46 = phi i32 [ 0, %31 ], [ %73, %72 ]
  %47 = getelementptr [8 x %struct.its_baser], ptr %44, i32 0, i32 %46
  %48 = getelementptr inbounds %struct.its_baser, ptr %47, i32 0, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = icmp sgt i64 %49, -1
  br i1 %50, label %72, label %51

51:                                               ; preds = %45
  %52 = mul i32 %46, 24
  %53 = sdiv exact i32 %52, 24
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr i8, ptr %54, i32 256
  %56 = shl nsw i32 %53, 3
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = trunc i64 %49 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %58) #17, !srcloc !11
  %59 = lshr i64 %49, 32
  %60 = trunc i64 %59 to i32
  %61 = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %60) #17, !srcloc !11
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr i8, ptr %62, i32 256
  %64 = getelementptr i8, ptr %63, i32 %56
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #17, !srcloc !10
  %66 = zext i32 %65 to i64
  %67 = getelementptr i8, ptr %64, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #17, !srcloc !10
  %69 = zext i32 %68 to i64
  %70 = shl nuw i64 %69, 32
  %71 = or i64 %70, %66
  store i64 %71, ptr %48, align 8
  br label %72

72:                                               ; preds = %51, %45
  %73 = add nuw nsw i32 %46, 1
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %45

75:                                               ; preds = %72
  %76 = getelementptr i8, ptr %4, i32 256
  %77 = load i32, ptr %76, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %77) #17, !srcloc !11
  %78 = getelementptr i8, ptr %4, i32 224
  %79 = load ptr, ptr %78, align 8
  %80 = tail call ptr @llvm.thread.pointer() #17
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr %struct.its_collection, ptr %79, i32 %82, i32 1
  %84 = load i16, ptr %83, align 8
  %85 = getelementptr i8, ptr %7, i32 8
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #17, !srcloc !10
  %87 = getelementptr i8, ptr %7, i32 12
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #17, !srcloc !10
  %89 = lshr i32 %86, 24
  %90 = zext i16 %84 to i32
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  tail call fastcc void @its_cpu_init_collection(ptr noundef %5)
  br label %93

93:                                               ; preds = %92, %75, %28
  %94 = load ptr, ptr %4, align 4
  %95 = icmp eq ptr %94, @its_nodes
  br i1 %95, label %96, label %3

96:                                               ; preds = %93, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %97 = load i16, ptr @its_lock, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr @its_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }
attributes #22 = { cold }
attributes #23 = { nounwind allocsize(0) }

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
!9 = !{i64 556911}
!10 = !{i64 5857068}
!11 = !{i64 5856650}
!12 = !{i64 2156243042}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i8 0, i8 2}
!15 = !{i32 0, i32 33}
!16 = !{i64 2149081221, i64 2149081244, i64 2149081276, i64 2149081308, i64 2149081346, i64 2149081376}
!17 = !{i64 2155557498}
!18 = !{i64 2149248754}
!19 = !{i64 2149244578}
!20 = !{i64 2149244653, i64 2149244680, i64 2149244727, i64 2149244749, i64 2149244777, i64 2149244797}
!21 = !{i64 2149271757}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2156187306, i64 2156187804, i64 2156187343, i64 2156187399, i64 2156187433, i64 2156187457, i64 2156187498, i64 2156187519, i64 2156187547, i64 2156187581}
!24 = !{!"auto-init"}
!25 = !{i64 2155541255}
!26 = !{i64 2155541097}
!27 = !{i64 2154157615}
!28 = !{i64 2154156722}
!29 = !{i64 2154156564}
!30 = !{i64 2154159423}
!31 = !{i64 2154159265}
!32 = !{i32 8, i32 33}
!33 = !{i64 2155892890}
!34 = !{i64 2155892732}
!35 = !{i64 642972, i64 2148132943, i64 2148132969, i64 2148133016, i64 2148133038, i64 2148133066, i64 2148133086}
!36 = !{i64 2148145155, i64 2148145181, i64 2148145210, i64 2148145244, i64 2148145275, i64 2148145298}
!37 = !{i64 2148147512, i64 2148147538, i64 2148147567, i64 2148147601, i64 2148147632, i64 2148147655}
!38 = !{i64 2154172414}
!39 = !{i64 2154172256}
!40 = !{i64 2154171962}
!41 = !{i64 2148245822}
!42 = !{i64 2148148196, i64 2148148228, i64 2148148257, i64 2148148291, i64 2148148322, i64 2148148345}
!43 = !{i64 2148246025}
!44 = !{i64 2148244405}
!45 = !{i64 2148146613, i64 2148146645, i64 2148146674, i64 2148146708, i64 2148146739, i64 2148146762}
!46 = !{i64 2148244607}
!47 = !{!"branch_weights", i32 -102759400, i32 4193255}
!48 = !{i64 2155571623}
!49 = !{i64 2155872398}
!50 = !{i64 2155872240}
!51 = !{i64 2155883151, i64 2155883649, i64 2155883188, i64 2155883244, i64 2155883278, i64 2155883302, i64 2155883343, i64 2155883364, i64 2155883392, i64 2155883426}
!52 = !{i32 15, i32 33}
!53 = !{i64 2155223779}
!54 = !{i64 2155877934, i64 2155878432, i64 2155877971, i64 2155878027, i64 2155878061, i64 2155878085, i64 2155878126, i64 2155878147, i64 2155878175, i64 2155878209}
