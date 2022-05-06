; ModuleID = '/llk/IR/drivers/bus/arm-cci.c_pt.bc'
source_filename = "../drivers/bus/arm-cci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cci_ace_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22cci_ace_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_cci_ace_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cci_disable_port_by_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22cci_disable_port_by_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_cci_disable_port_by_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cci_control_port_by_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__cci_control_port_by_device\22\09\09\09\09\09"
module asm "__kstrtabns___cci_control_port_by_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cci_control_port_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22__cci_control_port_by_index\22\09\09\09\09\09"
module asm "__kstrtabns___cci_control_port_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cci_probed:\09\09\09\09\09"
module asm "\09.asciz \09\22cci_probed\22\09\09\09\09\09"
module asm "__kstrtabns_cci_probed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_port = type { i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cci_nb_ports = type { i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_dev_auxdata = type { ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.cci_ace_port = type { ptr, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_cci_ace_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_cci_ace_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_cci_ace_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cci_ace_get_port to i32), ptr @__kstrtab_cci_ace_get_port, ptr @__kstrtabns_cci_ace_get_port }, section "___ksymtab_gpl+cci_ace_get_port", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_port = internal global [16 x %struct.cpu_port] zeroinitializer, align 8
@__kstrtab_cci_disable_port_by_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_cci_disable_port_by_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_cci_disable_port_by_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cci_disable_port_by_cpu to i32), ptr @__kstrtab_cci_disable_port_by_cpu, ptr @__kstrtabns_cci_disable_port_by_cpu }, section "___ksymtab_gpl+cci_disable_port_by_cpu", align 4
@__cci_control_port_by_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [22 x i8] c"drivers/bus/arm-cci.c\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"node %pOF ACE lite port look-up failure\0A\00", align 1
@__kstrtab___cci_control_port_by_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___cci_control_port_by_device = external dso_local constant [0 x i8], align 1
@__ksymtab___cci_control_port_by_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cci_control_port_by_device to i32), ptr @__kstrtab___cci_control_port_by_device, ptr @__kstrtabns___cci_control_port_by_device }, section "___ksymtab_gpl+__cci_control_port_by_device", align 4
@nb_cci_ports = internal unnamed_addr global i32 0, align 4
@ports = internal global ptr null, align 4
@__kstrtab___cci_control_port_by_index = external dso_local constant [0 x i8], align 1
@__kstrtabns___cci_control_port_by_index = external dso_local constant [0 x i8], align 1
@__ksymtab___cci_control_port_by_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cci_control_port_by_index to i32), ptr @__kstrtab___cci_control_port_by_index, ptr @__kstrtabns___cci_control_port_by_index }, section "___ksymtab_gpl+__cci_control_port_by_index", align 4
@__kstrtab_cci_probed = external dso_local constant [0 x i8], align 1
@__kstrtabns_cci_probed = external dso_local constant [0 x i8], align 1
@__ksymtab_cci_probed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cci_probed to i32), ptr @__kstrtab_cci_probed, ptr @__kstrtabns_cci_probed }, section "___ksymtab_gpl+cci_probed", align 4
@__initcall__kmod_arm_cci__220_584_cci_initearly = internal global ptr @cci_init, section ".initcallearly.init", align 4
@__initcall__kmod_arm_cci__221_585_cci_platform_init1 = internal global ptr @cci_platform_init, section ".initcall1.init", align 4
@__UNIQUE_ID_file222 = internal constant [33 x i8] c"arm_cci.file=drivers/bus/arm-cci\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [20 x i8] c"arm_cci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [36 x i8] c"arm_cci.description=ARM CCI support\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cci-control-port\00", align 1
@cci_ctrl_base = internal global ptr null, section ".data..ro_after_init", align 4
@cci_init_status = internal unnamed_addr global i32 -11, align 4
@cci_probing = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cci_probing, i64 12), ptr getelementptr (i8, ptr @cci_probing, i64 12) } }, align 4
@arm_cci_matches = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cci400_ports }, %struct.of_device_id zeroinitializer], align 4
@cci_ctrl_phys = internal global i32 0, section ".data..ro_after_init", align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to ioremap CCI ctrl\0A\00", align 1
@cci400_ports = internal constant %struct.cci_nb_ports { i32 2, i32 3 }, align 4
@arm_cci_ctrl_if_matches = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-400-ctrl-if\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"interface-type\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"node %pOF missing interface-type property\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ace\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ace-lite\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"node %pOF containing invalid interface-type property, skipping it\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"unable to ioremap CCI port %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"\016ARM CCI driver probed\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Missing cpu device node\0A\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"CPU %u does not have an associated CCI port\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@cci_platform_driver = internal global %struct.platform_driver { ptr @cci_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arm_cci_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"ARM-CCI\00", align 1
@arm_cci_auxdata = internal constant [6 x %struct.of_dev_auxdata] [%struct.of_dev_auxdata { ptr @.str.14, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata { ptr @.str.15, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata { ptr @.str.16, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata { ptr @.str.17, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata { ptr @.str.18, i32 0, ptr null, ptr @cci_ctrl_base }, %struct.of_dev_auxdata zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"arm,cci-400-pmu\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"arm,cci-400-pmu,r0\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"arm,cci-400-pmu,r1\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"arm,cci-500-pmu,r0\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"arm,cci-550-pmu,r0\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__initcall__kmod_arm_cci__220_584_cci_initearly, ptr @__initcall__kmod_arm_cci__221_585_cci_platform_init1, ptr @__ksymtab___cci_control_port_by_device, ptr @__ksymtab___cci_control_port_by_index, ptr @__ksymtab_cci_ace_get_port, ptr @__ksymtab_cci_disable_port_by_cpu, ptr @__ksymtab_cci_probed], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cci_ace_get_port(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #11, !annotation !8
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #11
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #11
  %7 = load i32, ptr @nb_cci_ports, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @ports, align 4
  br label %11

11:                                               ; preds = %20, %9
  %12 = phi i32 [ 0, %9 ], [ %21, %20 ]
  %13 = getelementptr %struct.cci_ace_port, ptr %10, i32 %12, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr %struct.cci_ace_port, ptr %10, i32 %12, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %6, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %11
  %21 = add nuw i32 %12, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %23, label %11

23:                                               ; preds = %20, %16, %1
  %24 = phi i32 [ -19, %1 ], [ %12, %16 ], [ -19, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cci_disable_port_by_cpu(i64 noundef %0) #0 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = and i64 %0, 16777215
  br label %6

6:                                                ; preds = %25, %4
  %7 = phi i32 [ 0, %4 ], [ %26, %25 ]
  %8 = getelementptr [16 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %7, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = getelementptr [16 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %7
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load ptr, ptr @ports, align 4
  %17 = getelementptr %struct.cci_ace_port, ptr %16, i32 %9
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #11, !srcloc !9
  br label %19

19:                                               ; preds = %19, %15
  %20 = load ptr, ptr @cci_ctrl_base, align 4
  %21 = getelementptr i8, ptr %20, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !10
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %19

25:                                               ; preds = %11, %6
  %26 = add nuw i32 %7, 1
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %28, label %6

28:                                               ; preds = %25, %19, %1
  %29 = phi i32 [ -19, %1 ], [ 0, %19 ], [ -19, %25 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: naked noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cci_enable_port_for_self() #2 {
  tail call void asm sideeffect "\0A\09.arch armv7-a\0A\09mrc\09p15, 0, r0, c0, c0, 5\09@ get MPIDR value \0A\09and\09r0, r0, #0xFFFFFF \0A\09adr\09r1, 5f \0A\09ldr\09r2, [r1] \0A\09add\09r1, r1, r2\09\09@ &cpu_port \0A\09add\09ip, r1, $0 \0A1:\09ldr\09r2, [r1, $3] \0A\09cmp\09r2, r0 \09\09\09@ compare MPIDR \0A\09bne\092f \0A\09ldr\09r3, [r1, $4] \0A\09tst\09r3, #(0x1 << 31) \0A\09bne\093f \0A2:\09add\09r1, r1, $5 \0A\09cmp\09r1, ip\09\09\09@ done? \0A\09blo\091b \0Acci_port_not_found: \0A\09wfi \0A\09wfe \0A\09b\09cci_port_not_found \0A3:\09bic\09r3, r3, #(0x1 << 31) \0A\09adr\09r0, 6f \0A\09ldmia\09r0, {r1, r2} \0A\09sub\09r1, r1, r0 \09\09@ virt - phys \0A\09ldr\09r0, [r0, r2] \09\09@ *(&ports) \0A\09mov\09r2, $6 \0A\09mla\09r0, r2, r3, r0\09\09@ &ports[index] \0A\09sub\09r0, r0, r1\09\09@ virt_to_phys() \0A\09ldr\09r0, [r0, $7] \0A\09mov\09r3, $1\0A\09str\09r3, [r0, #0x0] \0A\09adr\09r1, 7f \0A\09ldr\09r0, [r1] \0A\09ldr\09r0, [r0, r1]\09\09@ cci_ctrl_base \0A4:\09ldr\09r1, [r0, #0xc] \0A\09tst\09r1, $2 \0A\09bne\094b \0A\09mov\09r0, #0 \0A\09bx\09lr \0A\09.align\092 \0A5:\09.word\09cpu_port - . \0A6:\09.word\09. \0A\09.word\09ports - 6b \0A7:\09.word\09cci_ctrl_phys - . \0A", "i,i,i,i,i,i,i,i"(i32 256, i32 3, i32 1, i32 0, i32 8, i32 16, i32 16, i32 4) #11, !srcloc !11
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cci_control_port_by_device(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #11, !annotation !8
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %3, align 4
  %9 = select i1 %7, ptr %8, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #11
  %10 = load i32, ptr @nb_cci_ports, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr @ports, align 4
  br label %14

14:                                               ; preds = %23, %12
  %15 = phi i32 [ 0, %12 ], [ %24, %23 ]
  %16 = getelementptr %struct.cci_ace_port, ptr %13, i32 %15, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr %struct.cci_ace_port, ptr %13, i32 %15, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %9, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %14
  %24 = add nuw i32 %15, 1
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %26, label %14

26:                                               ; preds = %23, %19, %5
  %27 = phi i32 [ -19, %5 ], [ %15, %19 ], [ -19, %23 ]
  %28 = icmp slt i32 %27, 0
  %29 = load i1, ptr @__cci_control_port_by_device.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !12

32:                                               ; preds = %26
  store i1 true, ptr @__cci_control_port_by_device.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 397, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #11
  br label %33

33:                                               ; preds = %32, %26
  br i1 %28, label %45, label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr @ports, align 4
  %36 = getelementptr %struct.cci_ace_port, ptr %35, i32 %27
  %37 = load ptr, ptr %36, align 4
  %38 = select i1 %1, i32 3, i32 0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %38) #11, !srcloc !9
  br label %39

39:                                               ; preds = %39, %34
  %40 = load ptr, ptr @cci_ctrl_base, align 4
  %41 = getelementptr i8, ptr %40, i32 12
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !10
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %39

45:                                               ; preds = %39, %33, %2
  %46 = phi i32 [ -19, %2 ], [ -19, %33 ], [ 0, %39 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cci_control_port_by_index(i32 noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr @nb_cci_ports, align 4
  %4 = icmp ugt i32 %3, %0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load ptr, ptr @ports, align 4
  %7 = getelementptr %struct.cci_ace_port, ptr %6, i32 %0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %10 [
    i32 0, label %20
    i32 1, label %9
  ]

9:                                                ; preds = %5
  br label %20

10:                                               ; preds = %5
  %11 = getelementptr %struct.cci_ace_port, ptr %6, i32 %0
  %12 = load ptr, ptr %11, align 4
  %13 = select i1 %1, i32 3, i32 0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %13) #11, !srcloc !9
  br label %14

14:                                               ; preds = %14, %10
  %15 = load ptr, ptr @cci_ctrl_base, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !10
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %9, %5, %2
  %21 = phi i32 [ -1, %9 ], [ -19, %5 ], [ -19, %2 ], [ 0, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cci_probed() #0 {
  %1 = tail call i32 @cci_init()
  %2 = icmp eq i32 %1, 0
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cci_init() #0 {
  %1 = alloca %struct.of_phandle_args, align 4
  %2 = alloca %struct.resource, align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.resource, align 4
  %5 = load i32, ptr @cci_init_status, align 4
  %6 = icmp eq i32 %5, -11
  br i1 %6, label %7, label %228

7:                                                ; preds = %0
  tail call void @mutex_lock(ptr noundef nonnull @cci_probing) #11
  %8 = load i32, ptr @cci_init_status, align 4
  %9 = icmp eq i32 %8, -11
  br i1 %9, label %10, label %226

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #11, !annotation !8
  %11 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @arm_cci_matches, ptr noundef null) #11
  %12 = tail call zeroext i1 @of_device_is_available(ptr noundef %11) #11
  br i1 %12, label %13, label %224

13:                                               ; preds = %10
  %14 = call i32 @of_address_to_resource(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %4) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, ptr %4, align 4
  %18 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 1, %17
  %21 = add i32 %20, %19
  %22 = call ptr @ioremap(i32 noundef %17, i32 noundef %21) #11
  store ptr %22, ptr @cci_ctrl_base, align 4
  %23 = load i32, ptr %4, align 4
  store i32 %23, ptr @cci_ctrl_phys, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 550, i32 noundef 9, ptr noundef nonnull @.str.3) #11
  br label %224

26:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !8
  %27 = call ptr @of_match_node(ptr noundef nonnull @arm_cci_matches, ptr noundef %11) #11
  %28 = getelementptr inbounds %struct.of_device_id, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %222, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 4
  %33 = getelementptr inbounds %struct.cci_nb_ports, ptr %29, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  store i32 %35, ptr @nb_cci_ports, align 4
  %36 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 16) #11
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %38, label %39, !prof !12

38:                                               ; preds = %31
  store ptr null, ptr @ports, align 4
  br label %222

39:                                               ; preds = %31
  %40 = extractvalue { i32, i1 } %36, 0
  %41 = call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #12
  store ptr %41, ptr @ports, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %222, label %43

43:                                               ; preds = %39
  %44 = call ptr @of_get_next_available_child(ptr noundef %11, ptr noundef null) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %114, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  br label %48

48:                                               ; preds = %109, %46
  %49 = phi i32 [ 0, %46 ], [ %111, %109 ]
  %50 = phi i32 [ 0, %46 ], [ %110, %109 ]
  %51 = phi ptr [ %44, %46 ], [ %112, %109 ]
  %52 = call ptr @of_match_node(ptr noundef nonnull @arm_cci_ctrl_if_matches, ptr noundef nonnull %51) #11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %109, label %54

54:                                               ; preds = %48
  %55 = add i32 %50, %49
  %56 = load i32, ptr @nb_cci_ports, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %114

58:                                               ; preds = %54
  %59 = call i32 @of_property_read_string(ptr noundef nonnull %51, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull %51) #11
  br label %109

62:                                               ; preds = %58
  %63 = load ptr, ptr %3, align 4
  %64 = call i32 @strcmp(ptr noundef %63, ptr noundef nonnull dereferenceable(4) @.str.6) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = call i32 @strcmp(ptr noundef %63, ptr noundef nonnull dereferenceable(9) @.str.7) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull %51) #11
  br label %109

70:                                               ; preds = %66, %62
  %71 = call i32 @of_address_to_resource(ptr noundef nonnull %51, i32 noundef 0, ptr noundef nonnull %2) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load i32, ptr %2, align 4
  %75 = load i32, ptr %47, align 4
  %76 = sub i32 1, %74
  %77 = add i32 %76, %75
  %78 = call ptr @ioremap(i32 noundef %74, i32 noundef %77) #11
  %79 = load ptr, ptr @ports, align 4
  %80 = getelementptr %struct.cci_ace_port, ptr %79, i32 %55
  store ptr %78, ptr %80, align 4
  %81 = load i32, ptr %2, align 4
  %82 = load ptr, ptr @ports, align 4
  %83 = getelementptr %struct.cci_ace_port, ptr %82, i32 %55, i32 1
  store i32 %81, ptr %83, align 4
  %84 = load ptr, ptr @ports, align 4
  %85 = getelementptr %struct.cci_ace_port, ptr %84, i32 %55
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %73, %70
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %55) #11
  br label %109

89:                                               ; preds = %73
  br i1 %65, label %90, label %97

90:                                               ; preds = %89
  %91 = load i32, ptr %29, align 4
  %92 = icmp ult i32 %49, %91
  br i1 %92, label %94, label %93, !prof !13

93:                                               ; preds = %90
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 491, i32 noundef 9, ptr noundef null) #11
  br label %109

94:                                               ; preds = %90
  %95 = getelementptr %struct.cci_ace_port, ptr %84, i32 %55, i32 2
  store i32 1, ptr %95, align 4
  %96 = add nuw i32 %49, 1
  br label %104

97:                                               ; preds = %89
  %98 = load i32, ptr %33, align 4
  %99 = icmp ult i32 %50, %98
  br i1 %99, label %101, label %100, !prof !13

100:                                              ; preds = %97
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 496, i32 noundef 9, ptr noundef null) #11
  br label %109

101:                                              ; preds = %97
  %102 = getelementptr %struct.cci_ace_port, ptr %84, i32 %55, i32 2
  store i32 2, ptr %102, align 4
  %103 = add nuw i32 %50, 1
  br label %104

104:                                              ; preds = %101, %94
  %105 = phi i32 [ %50, %94 ], [ %103, %101 ]
  %106 = phi i32 [ %96, %94 ], [ %49, %101 ]
  %107 = load ptr, ptr @ports, align 4
  %108 = getelementptr %struct.cci_ace_port, ptr %107, i32 %55, i32 3
  store ptr %51, ptr %108, align 4
  br label %109

109:                                              ; preds = %104, %100, %93, %88, %69, %61, %48
  %110 = phi i32 [ %50, %61 ], [ %50, %88 ], [ %105, %104 ], [ %50, %69 ], [ %50, %48 ], [ %50, %93 ], [ %50, %100 ]
  %111 = phi i32 [ %49, %61 ], [ %49, %88 ], [ %106, %104 ], [ %49, %69 ], [ %49, %48 ], [ %49, %93 ], [ %49, %100 ]
  %112 = call ptr @of_get_next_available_child(ptr noundef %11, ptr noundef nonnull %51) #11
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %48

114:                                              ; preds = %109, %54, %43
  %115 = phi i32 [ 0, %43 ], [ %50, %54 ], [ %110, %109 ]
  %116 = phi i32 [ 0, %43 ], [ %49, %54 ], [ %111, %109 ]
  %117 = icmp ne i32 %116, 0
  %118 = icmp ne i32 %115, 0
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %120, label %222

120:                                              ; preds = %114
  %121 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %122 = load i32, ptr @nr_cpu_ids, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %163, %120
  %125 = phi i32 [ %122, %120 ], [ %165, %163 ]
  %126 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %127 = icmp ult i32 %126, %125
  br i1 %127, label %167, label %179

128:                                              ; preds = %163, %120
  %129 = phi i32 [ %164, %163 ], [ %121, %120 ]
  %130 = call ptr @of_get_cpu_node(i32 noundef %129, ptr noundef null) #11
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133, !prof !12

132:                                              ; preds = %128
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.11) #11
  br label %163

133:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %1, i8 0, i32 72, i1 false) #11, !annotation !8
  %134 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %130, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1) #11
  %135 = icmp eq i32 %134, 0
  %136 = load ptr, ptr %1, align 4
  %137 = select i1 %135, ptr %136, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #11
  %138 = load i32, ptr @nb_cci_ports, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %163, label %140

140:                                              ; preds = %133
  %141 = load ptr, ptr @ports, align 4
  br label %142

142:                                              ; preds = %151, %140
  %143 = phi i32 [ 0, %140 ], [ %152, %151 ]
  %144 = getelementptr %struct.cci_ace_port, ptr %141, i32 %143, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = getelementptr %struct.cci_ace_port, ptr %141, i32 %143, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %137, %149
  br i1 %150, label %154, label %151

151:                                              ; preds = %147, %142
  %152 = add nuw i32 %143, 1
  %153 = icmp eq i32 %152, %138
  br i1 %153, label %163, label %142

154:                                              ; preds = %147
  %155 = icmp slt i32 %143, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %154
  %157 = getelementptr [16 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %129
  %158 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %129
  %159 = load i32, ptr %158, align 4
  %160 = zext i32 %159 to i64
  %161 = or i32 %143, -2147483648
  %162 = getelementptr [16 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %129, i32 1
  store i32 %161, ptr %162, align 8
  store i64 %160, ptr %157, align 8
  br label %163

163:                                              ; preds = %156, %154, %151, %133, %132
  %164 = call i32 @cpumask_next(i32 noundef %129, ptr noundef nonnull @__cpu_possible_mask) #13
  %165 = load i32, ptr @nr_cpu_ids, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %128, label %124

167:                                              ; preds = %175, %124
  %168 = phi i32 [ %176, %175 ], [ %125, %124 ]
  %169 = phi i32 [ %177, %175 ], [ %126, %124 ]
  %170 = getelementptr [16 x %struct.cpu_port], ptr @cpu_port, i32 0, i32 %169, i32 1
  %171 = load i32, ptr %170, align 8
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %175, label %173, !prof !13

173:                                              ; preds = %167
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %169) #11
  %174 = load i32, ptr @nr_cpu_ids, align 4
  br label %175

175:                                              ; preds = %173, %167
  %176 = phi i32 [ %174, %173 ], [ %168, %167 ]
  %177 = call i32 @cpumask_next(i32 noundef %169, ptr noundef nonnull @__cpu_possible_mask) #13
  %178 = icmp ult i32 %177, %176
  br i1 %178, label %167, label %179

179:                                              ; preds = %175, %124
  %180 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %180(ptr noundef nonnull @cci_ctrl_base, i32 noundef 4) #11
  %181 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cci_ctrl_base to i32), i32 -2130706432, i32 8454144) #14, !srcloc !14
  %182 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (ptr, ptr @cci_ctrl_base, i32 1) to i32), i32 -2130706432, i32 8454144) #14, !srcloc !14
  %183 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %179
  call void %183(i32 noundef %181, i32 noundef %182) #11
  br label %186

186:                                              ; preds = %185, %179
  %187 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %187(ptr noundef nonnull @cci_ctrl_phys, i32 noundef 4) #11
  %188 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cci_ctrl_phys to i32), i32 -2130706432, i32 8454144) #14, !srcloc !14
  %189 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @cci_ctrl_phys, i32 1) to i32), i32 -2130706432, i32 8454144) #14, !srcloc !14
  %190 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %186
  call void %190(i32 noundef %188, i32 noundef %189) #11
  br label %193

193:                                              ; preds = %192, %186
  %194 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %194(ptr noundef nonnull @ports, i32 noundef 4) #11
  %195 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @ports to i32), i32 -2130706432, i32 8454144) #14, !srcloc !14
  %196 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (ptr, ptr @ports, i32 1) to i32), i32 -2130706432, i32 8454144) #14, !srcloc !14
  %197 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %193
  call void %197(i32 noundef %195, i32 noundef %196) #11
  br label %200

200:                                              ; preds = %199, %193
  %201 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %201(ptr noundef nonnull @cpu_port, i32 noundef 256) #11
  %202 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cpu_port to i32), i32 -2130706432, i32 8454144) #14, !srcloc !14
  %203 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds ([16 x %struct.cpu_port], ptr @cpu_port, i32 1, i32 0, i32 0) to i32), i32 -2130706432, i32 8454144) #14, !srcloc !14
  %204 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %200
  call void %204(i32 noundef %202, i32 noundef %203) #11
  br label %207

207:                                              ; preds = %206, %200
  %208 = load ptr, ptr @ports, align 4
  %209 = load i32, ptr @nb_cci_ports, align 4
  %210 = shl i32 %209, 4
  %211 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %211(ptr noundef %208, i32 noundef %210) #11
  %212 = ptrtoint ptr %208 to i32
  %213 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %212, i32 -2130706432, i32 8454144) #14, !srcloc !14
  %214 = getelementptr i8, ptr %208, i32 %210
  %215 = ptrtoint ptr %214 to i32
  %216 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %215, i32 -2130706432, i32 8454144) #14, !srcloc !14
  %217 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %207
  call void %217(i32 noundef %213, i32 noundef %216) #11
  br label %220

220:                                              ; preds = %219, %207
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %222

222:                                              ; preds = %220, %114, %39, %38, %26
  %223 = phi i32 [ 0, %220 ], [ -19, %26 ], [ -12, %39 ], [ -19, %114 ], [ -12, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  br label %224

224:                                              ; preds = %222, %25, %10
  %225 = phi i32 [ %223, %222 ], [ -6, %25 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  store i32 %225, ptr @cci_init_status, align 4
  br label %226

226:                                              ; preds = %224, %7
  call void @mutex_unlock(ptr noundef nonnull @cci_probing) #11
  %227 = load i32, ptr @cci_init_status, align 4
  br label %228

228:                                              ; preds = %226, %0
  %229 = phi i32 [ %227, %226 ], [ %5, %0 ]
  ret i32 %229
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cci_platform_init() #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cci_platform_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cci_platform_probe(ptr noundef %0) #0 {
  %2 = tail call i32 @cci_init() #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_platform_populate(ptr noundef %7, ptr noundef null, ptr noundef nonnull @arm_cci_auxdata, ptr noundef %5) #11
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ %8, %4 ], [ -19, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { naked noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

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
!9 = !{i64 4575585}
!10 = !{i64 4576003}
!11 = !{i64 8354, i64 8360, i64 8379, i64 8429, i64 8482, i64 8499, i64 8518, i64 8552, i64 8655, i64 8708, i64 8744, i64 8803, i64 8849, i64 8890, i64 8955, i64 9001, i64 9028, i64 9101, i64 9126, i64 9136, i64 9146, i64 9245, i64 9292, i64 9309, i64 9334, i64 9371, i64 9408, i64 9448, i64 9490, i64 9557, i64 9599, i64 9635, i64 9728, i64 9745, i64 9764, i64 9804, i64 9858, i64 9902, i64 9916, i64 9933, i64 9946, i64 9961, i64 9988, i64 10004, i64 10027}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148820665, i64 2148820688, i64 2148820720, i64 2148820752, i64 2148820790, i64 2148820820}
