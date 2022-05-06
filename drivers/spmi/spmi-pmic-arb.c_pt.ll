; ModuleID = '/llk/IR/drivers/spmi/spmi-pmic-arb.c_pt.bc'
source_filename = "../drivers/spmi/spmi-pmic-arb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pmic_arb_ver_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.spmi_pmic_arb = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.raw_spinlock, i8, i32, i8, i16, i16, ptr, [16 x i32], ptr, ptr, ptr, ptr, i16, [512 x %struct.apid_data] }
%struct.apid_data = type { i16, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spmi_controller = type { %struct.device, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }

@__initcall__kmod_spmi_pmic_arb__174_1457_spmi_pmic_arb_driver_init6 = internal global ptr @spmi_pmic_arb_driver_init, section ".initcall6.init", align 4
@spmi_pmic_arb_driver = internal global %struct.platform_driver { ptr @spmi_pmic_arb_probe, ptr @spmi_pmic_arb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spmi_pmic_arb_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_spmi_pmic_arb_driver_exit = internal global ptr @spmi_pmic_arb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file175 = internal constant [46 x i8] c"spmi_pmic_arb.file=drivers/spmi/spmi-pmic-arb\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [29 x i8] c"spmi_pmic_arb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias177 = internal constant [43 x i8] c"spmi_pmic_arb.alias=platform:spmi_pmic_arb\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"spmi_pmic_arb\00", align 1
@spmi_pmic_arb_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-pmic-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@pmic_arb_v1 = internal constant %struct.pmic_arb_ver_ops { ptr @.str.16, ptr @pmic_arb_ppid_to_apid_v1, ptr @pmic_arb_offset_v1, ptr @pmic_arb_fmt_cmd_v1, ptr @pmic_arb_non_data_cmd_v1, ptr @pmic_arb_owner_acc_status_v1, ptr @pmic_arb_acc_enable_v1, ptr @pmic_arb_irq_status_v1, ptr @pmic_arb_irq_clear_v1, ptr @pmic_arb_apid_map_offset_v2 }, align 4
@pmic_arb_v2 = internal constant %struct.pmic_arb_ver_ops { ptr @.str.22, ptr @pmic_arb_ppid_to_apid_v2, ptr @pmic_arb_offset_v2, ptr @pmic_arb_fmt_cmd_v2, ptr @pmic_arb_non_data_cmd_v2, ptr @pmic_arb_owner_acc_status_v2, ptr @pmic_arb_acc_enable_v2, ptr @pmic_arb_irq_status_v2, ptr @pmic_arb_irq_clear_v2, ptr @pmic_arb_apid_map_offset_v2 }, align 4
@pmic_arb_v3 = internal constant %struct.pmic_arb_ver_ops { ptr @.str.23, ptr @pmic_arb_ppid_to_apid_v2, ptr @pmic_arb_offset_v2, ptr @pmic_arb_fmt_cmd_v2, ptr @pmic_arb_non_data_cmd_v2, ptr @pmic_arb_owner_acc_status_v3, ptr @pmic_arb_acc_enable_v2, ptr @pmic_arb_irq_status_v2, ptr @pmic_arb_irq_clear_v2, ptr @pmic_arb_apid_map_offset_v2 }, align 4
@pmic_arb_v5 = internal constant %struct.pmic_arb_ver_ops { ptr @.str.24, ptr @pmic_arb_ppid_to_apid_v5, ptr @pmic_arb_offset_v5, ptr @pmic_arb_fmt_cmd_v2, ptr @pmic_arb_non_data_cmd_v2, ptr @pmic_arb_owner_acc_status_v5, ptr @pmic_arb_acc_enable_v5, ptr @pmic_arb_irq_status_v5, ptr @pmic_arb_irq_clear_v5, ptr @pmic_arb_apid_map_offset_v5 }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"obsrvr\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"chnls\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"PMIC arbiter version %s (0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cnfg\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"periph_irq\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"qcom,channel\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"channel unspecified.\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"invalid channel (%u) specified.\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"qcom,ee\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"EE unspecified.\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"invalid EE (%u) specified\0A\00", align 1
@pmic_arb_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qpnpint_irq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr @qpnpint_irq_domain_activate, ptr null, ptr @qpnpint_irq_domain_translate }, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"unable to create irq_domain\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"%s: %#x %#x: transaction denied (%#x)\0A\00", align 1
@__func__.pmic_arb_wait_for_done = private unnamed_addr constant [23 x i8] c"pmic_arb_wait_for_done\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"%s: %#x %#x: transaction failed (%#x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"drivers/spmi/spmi-pmic-arb.c\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"%s: %#x %#x: transaction dropped (%#x)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"%s: %#x %#x: timeout, status %#x\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"v2\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"v5\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"pmic-arb supports 1..%d bytes per trans, but:%zu requested\00", align 1
@pmic_arb_irqchip = internal global %struct.irq_chip { ptr null, ptr @.str.26, ptr null, ptr null, ptr null, ptr null, ptr @qpnpint_irq_ack, ptr @qpnpint_irq_mask, ptr null, ptr @qpnpint_irq_unmask, ptr null, ptr null, ptr null, ptr @qpnpint_irq_set_type, ptr @qpnpint_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qpnpint_get_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"pmic_arb\00", align 1
@qpnpint_spmi_write._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.qpnpint_spmi_write = private unnamed_addr constant [19 x i8] c"qpnpint_spmi_write\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"failed irqchip transaction on %x\0A\00", align 1
@qpnpint_spmi_read._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.qpnpint_spmi_read = private unnamed_addr constant [18 x i8] c"qpnpint_spmi_read\00", align 1
@qpnpint_spmi_masked_write._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.qpnpint_spmi_masked_write = private unnamed_addr constant [26 x i8] c"qpnpint_spmi_masked_write\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"failed irqchip transaction on %x rc=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c"failed to xlate sid = %#x, periph = %#x, irq = %u: ee=%u but owner=%u\0A\00", align 1
@.str.30 = private unnamed_addr constant [59 x i8] c"failed to xlate sid = %#x, periph = %#x, irq = %u rc = %d\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@cleanup_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.cleanup_irq = private unnamed_addr constant [12 x i8] c"cleanup_irq\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"failed to ack irq_mask = 0x%x for ppid = %x\0A\00", align 1
@cleanup_irq._rs.32 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias177, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_spmi_pmic_arb_driver_exit, ptr @__initcall__kmod_spmi_pmic_arb__174_1457_spmi_pmic_arb_driver_init6, ptr @spmi_pmic_arb_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spmi_pmic_arb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spmi_pmic_arb_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spmi_pmic_arb_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spmi_pmic_arb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spmi_pmic_arb_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @spmi_controller_alloc(ptr noundef %4, i32 noundef 2180) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %133, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 15
  store ptr %5, ptr %10, align 4
  %11 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.1) #11
  %12 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %5, ptr noundef %11) #11
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %12 to i32
  br label %131

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %11, align 4
  %20 = add i32 %18, 1
  %21 = sub i32 %20, %19
  %22 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 5
  store i32 %21, ptr %22, align 4
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %5, i32 noundef 8192, i32 noundef 3520) #11
  %24 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 17
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %131, label %26

26:                                               ; preds = %16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !9
  %28 = icmp ult i32 %27, 536936448
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 16
  store ptr @pmic_arb_v1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 1
  store ptr %12, ptr %31, align 4
  store ptr %12, ptr %9, align 4
  br label %58

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 4
  store ptr %12, ptr %33, align 4
  %34 = icmp ult i32 %27, 805306368
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 16
  store ptr @pmic_arb_v2, ptr %36, align 4
  br label %42

37:                                               ; preds = %32
  %38 = icmp ult i32 %27, 1342177280
  %39 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 16
  br i1 %38, label %40, label %41

40:                                               ; preds = %37
  store ptr @pmic_arb_v3, ptr %39, align 4
  br label %42

41:                                               ; preds = %37
  store ptr @pmic_arb_v5, ptr %39, align 4
  br label %42

42:                                               ; preds = %41, %40, %35
  %43 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #11
  %44 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %5, ptr noundef %43) #11
  store ptr %44, ptr %9, align 4
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = ptrtoint ptr %44 to i32
  br label %131

48:                                               ; preds = %42
  %49 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #11
  %50 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %5, ptr noundef %49) #11
  %51 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 16
  %55 = load ptr, ptr %54, align 4
  br label %58

56:                                               ; preds = %48
  %57 = ptrtoint ptr %50 to i32
  br label %131

58:                                               ; preds = %53, %29
  %59 = phi ptr [ %55, %53 ], [ @pmic_arb_v1, %29 ]
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %5, ptr noundef nonnull @.str.4, ptr noundef %60, i32 noundef %27) #12
  %61 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.5) #11
  %62 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %5, ptr noundef %61) #11
  %63 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 2
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = ptrtoint ptr %62 to i32
  br label %131

67:                                               ; preds = %58
  %68 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.6) #11
  %69 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %5, ptr noundef %68) #11
  %70 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 3
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = ptrtoint ptr %69 to i32
  br label %131

74:                                               ; preds = %67
  %75 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.7) #11
  %76 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 8
  store i32 %75, ptr %76, align 4
  %77 = icmp slt i32 %75, 0
  br i1 %77, label %131, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %80 = load ptr, ptr %79, align 8
  %81 = call i32 @of_property_read_variable_u32_array(ptr noundef %80, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #12
  br label %131

84:                                               ; preds = %78
  %85 = load i32, ptr %2, align 4
  %86 = icmp ugt i32 %85, 5
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %85) #12
  br label %131

88:                                               ; preds = %84
  %89 = trunc i32 %85 to i8
  %90 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 7
  store i8 %89, ptr %90, align 4
  %91 = load ptr, ptr %79, align 8
  %92 = call i32 @of_property_read_variable_u32_array(ptr noundef %91, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #12
  br label %131

95:                                               ; preds = %88
  %96 = load i32, ptr %3, align 4
  %97 = icmp ugt i32 %96, 5
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %96) #12
  br label %131

99:                                               ; preds = %95
  %100 = trunc i32 %96 to i8
  %101 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 9
  store i8 %100, ptr %101, align 4
  %102 = call noalias ptr @devm_kmalloc(ptr noundef nonnull %5, i32 noundef 2048, i32 noundef 3520) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %131, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 12
  store ptr %102, ptr %105, align 4
  %106 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 11
  store i16 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 10
  store i16 511, ptr %107, align 2
  %108 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %108, align 8
  %109 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 6
  store i32 0, ptr %109, align 4
  %110 = getelementptr inbounds %struct.spmi_controller, ptr %5, i32 0, i32 2
  store ptr @pmic_arb_cmd, ptr %110, align 4
  %111 = getelementptr inbounds %struct.spmi_controller, ptr %5, i32 0, i32 3
  store ptr @pmic_arb_read_cmd, ptr %111, align 8
  %112 = getelementptr inbounds %struct.spmi_controller, ptr %5, i32 0, i32 4
  store ptr @pmic_arb_write_cmd, ptr %112, align 4
  %113 = icmp ugt i32 %27, 1342177279
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  call fastcc void @pmic_arb_read_apid_map_v5(ptr noundef %9)
  br label %115

115:                                              ; preds = %114, %104
  %116 = load ptr, ptr %79, align 8
  %117 = icmp eq ptr %116, null
  %118 = getelementptr inbounds %struct.device_node, ptr %116, i32 0, i32 3
  %119 = select i1 %117, ptr null, ptr %118
  %120 = call ptr @__irq_domain_add(ptr noundef %119, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @pmic_arb_irq_domain_ops, ptr noundef %9) #11
  %121 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %9, i32 0, i32 14
  store ptr %120, ptr %121, align 4
  %122 = icmp eq ptr %120, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15) #12
  br label %131

124:                                              ; preds = %115
  %125 = load i32, ptr %76, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %125, ptr noundef nonnull @pmic_arb_chained_irq, ptr noundef %9) #11
  %126 = call i32 @spmi_controller_add(ptr noundef nonnull %5) #11
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %76, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %129, ptr noundef null, ptr noundef null) #11
  %130 = load ptr, ptr %121, align 4
  call void @irq_domain_remove(ptr noundef %130) #11
  br label %131

131:                                              ; preds = %128, %123, %99, %98, %94, %87, %83, %74, %72, %65, %56, %46, %16, %14
  %132 = phi i32 [ %15, %14 ], [ %66, %65 ], [ %73, %72 ], [ %81, %83 ], [ -22, %87 ], [ %92, %94 ], [ -22, %98 ], [ %126, %128 ], [ -12, %123 ], [ %47, %46 ], [ %57, %56 ], [ -12, %16 ], [ %75, %74 ], [ -12, %99 ]
  call void @put_device(ptr noundef nonnull %5) #11
  br label %133

133:                                              ; preds = %131, %124, %1
  %134 = phi i32 [ %132, %131 ], [ -12, %1 ], [ 0, %124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spmi_pmic_arb_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @spmi_controller_remove(ptr noundef %3) #11
  %6 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %7, ptr noundef null, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  tail call void @irq_domain_remove(ptr noundef %9) #11
  %10 = icmp eq ptr %3, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @put_device(ptr noundef nonnull %3) #11
  br label %12

12:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spmi_controller_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_arb_cmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #2 {
  %4 = add i8 %1, -20
  %5 = icmp ult i8 %4, -4
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %8, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #11
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i32 [ %13, %6 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_arb_read_cmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef writeonly %4, i32 noundef %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = trunc i32 %5 to i8
  %12 = add i8 %11, -1
  %13 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %10, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %10, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef 1) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %66, label %19

19:                                               ; preds = %6
  %20 = icmp ugt i8 %12, 7
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %10, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.25, i32 noundef 8, i32 noundef %5) #12
  br label %66

24:                                               ; preds = %19
  %25 = icmp sgt i8 %1, 95
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = and i8 %1, -16
  %28 = icmp eq i8 %27, 32
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = and i8 %1, -8
  %31 = icmp eq i8 %30, 56
  br i1 %31, label %32, label %66

32:                                               ; preds = %29, %26, %24
  %33 = phi i8 [ 15, %24 ], [ 13, %26 ], [ 1, %29 ]
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(i8 noundef zeroext %33, i8 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %12) #11
  %38 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %10, i32 0, i32 6
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #11
  %40 = load ptr, ptr %9, align 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #11, !srcloc !10
  %43 = load ptr, ptr %40, align 4
  %44 = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %0, ptr noundef %43, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef 1) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %32
  %47 = add i32 %5, 255
  %48 = add nuw i32 %17, 24
  %49 = and i32 %47, 255
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  %51 = load ptr, ptr %40, align 4
  %52 = getelementptr i8, ptr %51, i32 %48
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !9
  store i32 %53, ptr %8, align 4
  %54 = add nuw nsw i32 %50, 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %4, ptr noundef nonnull align 4 %8, i32 %54, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %55 = icmp ugt i32 %49, 3
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = getelementptr i8, ptr %4, i32 4
  %58 = add nuw i32 %17, 28
  %59 = add i32 %5, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %60 = load ptr, ptr %40, align 4
  %61 = getelementptr i8, ptr %60, i32 %58
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !9
  store i32 %62, ptr %7, align 4
  %63 = and i32 %59, 3
  %64 = add nuw nsw i32 %63, 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %57, ptr noundef nonnull align 4 %7, i32 %64, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br label %65

65:                                               ; preds = %56, %46, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #11
  br label %66

66:                                               ; preds = %65, %29, %21, %6
  %67 = phi i32 [ %44, %65 ], [ -22, %29 ], [ %17, %6 ], [ -22, %21 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_arb_write_cmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef readonly %4, i32 noundef %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = trunc i32 %5 to i8
  %12 = add i8 %11, -1
  %13 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %10, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %10, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef 0) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %67, label %19

19:                                               ; preds = %6
  %20 = icmp ugt i8 %12, 7
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %10, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.25, i32 noundef 8, i32 noundef %5) #12
  br label %67

24:                                               ; preds = %19
  %25 = and i8 %1, -32
  %26 = icmp eq i8 %25, 64
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = icmp ult i8 %1, 16
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = and i8 %1, -8
  %31 = icmp eq i8 %30, 48
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = icmp slt i8 %1, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %32, %29, %27, %24
  %35 = phi i8 [ 14, %24 ], [ 2, %27 ], [ 0, %29 ], [ 16, %32 ]
  %36 = load ptr, ptr %13, align 4
  %37 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(i8 noundef zeroext %35, i8 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %12) #11
  %40 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %10, i32 0, i32 6
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #11
  %42 = load ptr, ptr %9, align 8
  %43 = add i32 %5, 255
  %44 = add nuw i32 %17, 16
  %45 = and i32 %43, 255
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store i32 0, ptr %8, align 4
  %47 = add nuw nsw i32 %46, 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 %8, ptr noundef align 1 %4, i32 %47, i1 false) #11
  %48 = load i32, ptr %8, align 4
  %49 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %42, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #11, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %52 = icmp ugt i32 %45, 3
  br i1 %52, label %53, label %62

53:                                               ; preds = %34
  %54 = getelementptr i8, ptr %4, i32 4
  %55 = add nuw i32 %17, 20
  %56 = add i32 %5, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 0, ptr %7, align 4
  %57 = and i32 %56, 3
  %58 = add nuw nsw i32 %57, 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 %7, ptr noundef align 1 %54, i32 %58, i1 false) #11
  %59 = load i32, ptr %7, align 4
  %60 = load ptr, ptr %49, align 4
  %61 = getelementptr i8, ptr %60, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #11, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br label %62

62:                                               ; preds = %53, %34
  %63 = load ptr, ptr %49, align 4
  %64 = getelementptr i8, ptr %63, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %39) #11, !srcloc !10
  %65 = load ptr, ptr %49, align 4
  %66 = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %0, ptr noundef %65, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef 0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #11
  br label %67

67:                                               ; preds = %62, %32, %21, %6
  %68 = phi i32 [ %66, %62 ], [ -22, %32 ], [ %17, %6 ], [ -22, %21 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pmic_arb_read_apid_map_v5(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(i16 noundef zeroext 0) #11
  %7 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 19
  %12 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 4
  %13 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 17
  %15 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 9
  %16 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 18
  br label %18

17:                                               ; preds = %64, %1
  ret void

18:                                               ; preds = %64, %10
  %19 = phi i32 [ %6, %10 ], [ %70, %64 ]
  %20 = phi ptr [ %11, %10 ], [ %66, %64 ]
  %21 = phi i16 [ 0, %10 ], [ %65, %64 ]
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr i8, ptr %22, i32 %19
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %18
  %27 = lshr i32 %24, 8
  %28 = trunc i32 %27 to i16
  %29 = and i16 %28, 4095
  %30 = and i32 %24, 16777216
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr %13, align 4
  %33 = zext i16 %21 to i32
  %34 = shl nuw nsw i32 %33, 2
  %35 = add nuw nsw i32 %34, 1792
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !9
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 7
  %40 = getelementptr inbounds %struct.apid_data, ptr %20, i32 0, i32 1
  store i8 %39, ptr %40, align 2
  %41 = select i1 %31, i8 -1, i8 %39
  %42 = getelementptr inbounds %struct.apid_data, ptr %20, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  %43 = load ptr, ptr %14, align 4
  %44 = zext i16 %29 to i32
  %45 = getelementptr i16, ptr %43, i32 %44
  %46 = load i16, ptr %45, align 2
  %47 = icmp sgt i16 %46, -1
  %48 = and i16 %46, 32767
  %49 = zext i16 %48 to i32
  %50 = select i1 %47, i1 true, i1 %31
  br i1 %50, label %58, label %51

51:                                               ; preds = %26
  %52 = getelementptr %struct.spmi_pmic_arb, ptr %0, i32 0, i32 19, i32 %49, i32 1
  %53 = load i8, ptr %52, align 2
  %54 = load i8, ptr %15, align 4
  %55 = icmp eq i8 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr %struct.spmi_pmic_arb, ptr %0, i32 0, i32 19, i32 %49, i32 2
  store i8 %41, ptr %57, align 1
  br label %63

58:                                               ; preds = %51, %26
  %59 = xor i1 %31, true
  %60 = select i1 %47, i1 true, i1 %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = or i16 %21, -32768
  store i16 %62, ptr %45, align 2
  br label %63

63:                                               ; preds = %61, %58, %56
  store i16 %29, ptr %20, align 2
  store i16 %21, ptr %16, align 4
  br label %64

64:                                               ; preds = %63, %18
  %65 = add i16 %21, 1
  %66 = getelementptr %struct.apid_data, ptr %20, i32 1
  %67 = load ptr, ptr %2, align 4
  %68 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %67, i32 0, i32 9
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(i16 noundef zeroext %65) #11
  %71 = load i32, ptr %7, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %18, label %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmic_arb_chained_irq(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 10
  %11 = load i16, ptr %10, align 2
  %12 = lshr i16 %11, 5
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 11
  %15 = load i16, ptr %14, align 4
  %16 = lshr i16 %15, 5
  %17 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 9
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %24(ptr noundef %27) #11
  br label %36

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %30(ptr noundef %31) #11
  %32 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  tail call void %33(ptr noundef %31) #11
  br label %36

36:                                               ; preds = %35, %28, %26, %1
  %37 = icmp ugt i16 %12, %16
  br i1 %37, label %143, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %7, i32 0, i32 5
  %40 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %7, i32 0, i32 6
  %41 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 14
  %42 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 15
  %43 = add nuw nsw i16 %16, 1
  %44 = zext i16 %43 to i32
  br label %45

45:                                               ; preds = %140, %38
  %46 = phi i32 [ %13, %38 ], [ %141, %140 ]
  %47 = load ptr, ptr %39, align 4
  %48 = trunc i32 %46 to i16
  %49 = call ptr %47(ptr noundef %5, i8 noundef zeroext %18, i16 noundef zeroext %48) #11
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %140, label %52

52:                                               ; preds = %45
  %53 = shl i32 %46, 5
  br label %54

54:                                               ; preds = %138, %52
  %55 = phi i32 [ %50, %52 ], [ %59, %138 ]
  %56 = call i32 @llvm.cttz.i32(i32 %55, i1 true), !range !11
  %57 = shl nuw i32 1, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  %60 = or i32 %56, %53
  %61 = load ptr, ptr %40, align 4
  %62 = trunc i32 %60 to i16
  %63 = call ptr %61(ptr noundef %5, i16 noundef zeroext %62) #11
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #11, !srcloc !9
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %138, label %67

67:                                               ; preds = %54
  %68 = and i32 %60, 65535
  %69 = getelementptr %struct.spmi_pmic_arb, ptr %5, i32 0, i32 19, i32 %68
  %70 = load i16, ptr %69, align 2
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %71, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  %74 = call ptr %73(ptr noundef %5, i16 noundef zeroext %62) #11
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %138, label %77

77:                                               ; preds = %67
  %78 = lshr i16 %70, 8
  %79 = zext i16 %78 to i32
  %80 = shl i32 %79, 28
  %81 = and i16 %70, 255
  %82 = zext i16 %81 to i32
  %83 = shl nuw nsw i32 %82, 20
  %84 = or i32 %80, %83
  %85 = and i32 %60, 511
  br label %86

86:                                               ; preds = %134, %77
  %87 = phi i32 [ %75, %77 ], [ %91, %134 ]
  %88 = call i32 @llvm.cttz.i32(i32 %87, i1 true) #11, !range !11
  %89 = shl nuw i32 1, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %87, %90
  %92 = load ptr, ptr %41, align 4
  %93 = shl nuw nsw i32 %88, 16
  %94 = and i32 %93, 458752
  %95 = or i32 %94, %84
  %96 = or i32 %95, %85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %97 = call ptr @__irq_resolve_mapping(ptr noundef %92, i32 noundef %96, ptr noundef nonnull %3) #11
  %98 = icmp eq ptr %97, null
  %99 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %98, i1 true, i1 %100
  br i1 %101, label %102, label %136

102:                                              ; preds = %86
  %103 = load i16, ptr %69, align 2
  %104 = zext i16 %103 to i32
  %105 = lshr i16 %103, 8
  %106 = trunc i16 %105 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  %107 = trunc i32 %89 to i8
  store i8 %107, ptr %2, align 1
  %108 = and i32 %89, 255
  %109 = load ptr, ptr %6, align 4
  %110 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %109, i32 0, i32 8
  %111 = load ptr, ptr %110, align 4
  %112 = call ptr %111(ptr noundef %5, i16 noundef zeroext %62) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %108) #11, !srcloc !10
  %113 = load ptr, ptr %42, align 4
  %114 = shl i16 %103, 8
  %115 = or i16 %114, 20
  %116 = call i32 @pmic_arb_write_cmd(ptr noundef %113, i8 noundef zeroext 48, i8 noundef zeroext %106, i16 noundef zeroext %115, ptr noundef nonnull %2, i32 noundef 1) #11
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %102
  %119 = call i32 @___ratelimit(ptr noundef nonnull @cleanup_irq._rs, ptr noundef nonnull @__func__.cleanup_irq) #11
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.31, i32 noundef %108, i32 noundef %104) #12
  br label %123

123:                                              ; preds = %121, %118, %102
  %124 = load ptr, ptr %42, align 4
  %125 = or i16 %114, 22
  %126 = call i32 @pmic_arb_write_cmd(ptr noundef %124, i8 noundef zeroext 48, i8 noundef zeroext %106, i16 noundef zeroext %125, ptr noundef nonnull %2, i32 noundef 1) #11
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = call i32 @___ratelimit(ptr noundef nonnull @cleanup_irq._rs.32, ptr noundef nonnull @__func__.cleanup_irq) #11
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.31, i32 noundef %108, i32 noundef %104) #12
  br label %133

133:                                              ; preds = %131, %128, %123
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %134

134:                                              ; preds = %136, %133
  %135 = icmp eq i32 %91, 0
  br i1 %135, label %138, label %86

136:                                              ; preds = %86
  %137 = call i32 @generic_handle_irq(i32 noundef %99) #11
  br label %134

138:                                              ; preds = %134, %67, %54
  %139 = icmp eq i32 %59, 0
  br i1 %139, label %140, label %54

140:                                              ; preds = %138, %45
  %141 = add nuw nsw i32 %46, 1
  %142 = icmp eq i32 %141, %44
  br i1 %142, label %143, label %45

143:                                              ; preds = %140, %36
  %144 = load ptr, ptr %19, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 9
  %148 = load ptr, ptr %147, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi ptr [ %148, %146 ], [ %144, %143 ]
  %151 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %150(ptr noundef %151) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_controller_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_arb_ppid_to_apid_v1(ptr noundef %0, i16 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = zext i16 %1 to i32
  %8 = getelementptr i16, ptr %6, i32 %7
  %9 = load i16, ptr %8, align 2
  %10 = icmp sgt i16 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 13
  %13 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 3
  br label %17

14:                                               ; preds = %2
  %15 = and i16 %9, 32767
  %16 = zext i16 %15 to i32
  br label %65

17:                                               ; preds = %60, %11
  %18 = phi i32 [ 0, %11 ], [ %63, %60 ]
  %19 = phi i32 [ 0, %11 ], [ %62, %60 ]
  %20 = tail call i32 @_test_and_set_bit(i32 noundef %19, ptr noundef %12) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr i32, ptr %4, i32 %19
  %24 = load i32, ptr %23, align 4
  br label %32

25:                                               ; preds = %17
  %26 = load ptr, ptr %13, align 4
  %27 = shl nuw nsw i32 %19, 2
  %28 = add nuw nsw i32 %27, 2816
  %29 = getelementptr i8, ptr %26, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !9
  %31 = getelementptr i32, ptr %4, i32 %19
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = phi i32 [ %24, %22 ], [ %30, %25 ]
  %34 = lshr i32 %33, 18
  %35 = and i32 %34, 15
  %36 = shl nuw nsw i32 1, %35
  %37 = and i32 %36, %7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = and i32 %33, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = and i32 %33, 255
  %44 = trunc i32 %43 to i16
  %45 = or i16 %44, -32768
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr i16, ptr %46, i32 %7
  store i16 %45, ptr %47, align 2
  %48 = getelementptr %struct.spmi_pmic_arb, ptr %0, i32 0, i32 19, i32 %43
  store i16 %1, ptr %48, align 2
  br label %65

49:                                               ; preds = %32
  %50 = and i32 %33, 131072
  %51 = icmp eq i32 %50, 0
  %52 = lshr i32 %33, 9
  br i1 %51, label %53, label %60

53:                                               ; preds = %49
  %54 = and i32 %52, 255
  %55 = trunc i32 %54 to i16
  %56 = or i16 %55, -32768
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr i16, ptr %57, i32 %7
  store i16 %56, ptr %58, align 2
  %59 = getelementptr %struct.spmi_pmic_arb, ptr %0, i32 0, i32 19, i32 %54
  store i16 %1, ptr %59, align 2
  br label %65

60:                                               ; preds = %49, %39
  %61 = phi i32 [ %33, %39 ], [ %52, %49 ]
  %62 = and i32 %61, 255
  %63 = add nuw nsw i32 %18, 1
  %64 = icmp eq i32 %63, 16
  br i1 %64, label %65, label %17

65:                                               ; preds = %60, %53, %42, %14
  %66 = phi i32 [ %16, %14 ], [ %43, %42 ], [ %54, %53 ], [ -19, %60 ]
  ret i32 %66
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_offset_v1(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #6 {
  %5 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 7
  %9 = add nuw nsw i32 %8, 2048
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_fmt_cmd_v1(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #7 {
  %5 = zext i8 %0 to i32
  %6 = shl i32 %5, 27
  %7 = and i8 %1, 15
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 20
  %10 = or i32 %9, %6
  %11 = zext i16 %2 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = or i32 %10, %12
  %14 = and i8 %3, 7
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_arb_non_data_cmd_v1(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %5, i8 noundef zeroext %2, i16 noundef zeroext 0, i32 noundef 0) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = zext i8 %1 to i32
  %14 = shl i32 %13, 27
  %15 = and i8 %2, 15
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 20
  %18 = or i32 %17, %14
  %19 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 6
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #11
  %21 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %18) #11, !srcloc !10
  %24 = load ptr, ptr %21, align 4
  %25 = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %0, ptr noundef %24, i8 noundef zeroext %2, i16 noundef zeroext 0, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  br label %26

26:                                               ; preds = %12, %3
  %27 = phi i32 [ %25, %12 ], [ %10, %3 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_owner_acc_status_v1(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #6 {
  %4 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = zext i8 %1 to i32
  %7 = shl nuw nsw i32 %6, 5
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = zext i16 %2 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = getelementptr i8, ptr %8, i32 %10
  ret ptr %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_acc_enable_v1(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 512
  %6 = zext i16 %1 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = getelementptr i8, ptr %5, i32 %7
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_status_v1(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1536
  %6 = zext i16 %1 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = getelementptr i8, ptr %5, i32 %7
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_clear_v1(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2560
  %6 = zext i16 %1 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = getelementptr i8, ptr %5, i32 %7
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_apid_map_offset_v2(i16 noundef zeroext %0) #7 {
  %2 = zext i16 %0 to i32
  %3 = shl nuw nsw i32 %2, 2
  %4 = add nuw nsw i32 %3, 2048
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pmic_arb_wait_for_done(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %7, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %7, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %5
  %15 = add nuw i32 %12, 8
  %16 = getelementptr i8, ptr %1, i32 %15
  br label %17

17:                                               ; preds = %40, %14
  %18 = phi i32 [ 99, %14 ], [ %42, %40 ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !9
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = zext i8 %2 to i32
  %27 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.pmic_arb_wait_for_done, i32 noundef %26, i32 noundef %27, i32 noundef %19) #12
  br label %47

28:                                               ; preds = %22
  %29 = and i32 %19, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = zext i8 %2 to i32
  %33 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.pmic_arb_wait_for_done, i32 noundef %32, i32 noundef %33, i32 noundef %19) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 272, i32 noundef 9, ptr noundef null) #11
  br label %47

34:                                               ; preds = %28
  %35 = and i32 %19, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = zext i8 %2 to i32
  %39 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.pmic_arb_wait_for_done, i32 noundef %38, i32 noundef %39, i32 noundef %19) #12
  br label %47

40:                                               ; preds = %17
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #11
  %42 = add nsw i32 %18, -1
  %43 = icmp eq i32 %18, 0
  br i1 %43, label %44, label %17

44:                                               ; preds = %40
  %45 = zext i8 %2 to i32
  %46 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.pmic_arb_wait_for_done, i32 noundef %45, i32 noundef %46, i32 noundef %19) #12
  br label %47

47:                                               ; preds = %44, %37, %34, %31, %25, %5
  %48 = phi i32 [ -1, %25 ], [ -5, %31 ], [ -5, %37 ], [ -110, %44 ], [ %12, %5 ], [ 0, %34 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_arb_ppid_to_apid_v2(ptr nocapture noundef %0, i16 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = zext i16 %1 to i32
  %6 = getelementptr i16, ptr %4, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = icmp sgt i16 %7, -1
  br i1 %8, label %9, label %64

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 18
  %11 = load i16, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(i16 noundef zeroext %11) #11
  %17 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %9
  %21 = zext i16 %11 to i32
  %22 = getelementptr %struct.spmi_pmic_arb, ptr %0, i32 0, i32 19, i32 %21
  %23 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 3
  %24 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 4
  br label %25

25:                                               ; preds = %52, %20
  %26 = phi i32 [ %16, %20 ], [ %58, %52 ]
  %27 = phi ptr [ %22, %20 ], [ %54, %52 ]
  %28 = phi i16 [ %11, %20 ], [ %53, %52 ]
  %29 = load ptr, ptr %23, align 4
  %30 = zext i16 %28 to i32
  %31 = shl nuw nsw i32 %30, 2
  %32 = add nuw nsw i32 %31, 1792
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !9
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 7
  %37 = getelementptr inbounds %struct.apid_data, ptr %27, i32 0, i32 2
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.apid_data, ptr %27, i32 0, i32 1
  store i8 %36, ptr %38, align 2
  %39 = load ptr, ptr %24, align 4
  %40 = getelementptr i8, ptr %39, i32 %26
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %25
  %44 = lshr i32 %41, 8
  %45 = trunc i32 %44 to i16
  %46 = and i16 %45, 4095
  %47 = or i16 %28, -32768
  %48 = load ptr, ptr %3, align 4
  %49 = zext i16 %46 to i32
  %50 = getelementptr i16, ptr %48, i32 %49
  store i16 %47, ptr %50, align 2
  store i16 %46, ptr %27, align 2
  %51 = icmp eq i16 %46, %1
  br i1 %51, label %61, label %52

52:                                               ; preds = %43, %25
  %53 = add i16 %28, 1
  %54 = getelementptr %struct.apid_data, ptr %27, i32 1
  %55 = load ptr, ptr %12, align 4
  %56 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %55, i32 0, i32 9
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(i16 noundef zeroext %53) #11
  %59 = load i32, ptr %17, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %25, label %61

61:                                               ; preds = %52, %43, %9
  %62 = phi i16 [ %11, %9 ], [ %53, %52 ], [ %47, %43 ]
  %63 = and i16 %62, 32767
  store i16 %63, ptr %10, align 4
  br label %64

64:                                               ; preds = %61, %2
  %65 = phi i16 [ %7, %2 ], [ %62, %61 ]
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 32768
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %66, 32767
  %70 = select i1 %68, i32 -19, i32 %69
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_arb_offset_v2(ptr nocapture noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = zext i8 %1 to i16
  %6 = tail call i16 @llvm.fshl.i16(i16 %5, i16 %2, i16 8)
  %7 = tail call i32 @pmic_arb_ppid_to_apid_v2(ptr noundef %0, i16 noundef zeroext %6)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 9
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 12
  %14 = shl i32 %7, 15
  %15 = and i32 %14, 2147450880
  %16 = add nuw i32 %13, %15
  br label %17

17:                                               ; preds = %9, %4
  %18 = phi i32 [ %16, %9 ], [ %7, %4 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_fmt_cmd_v2(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #7 {
  %5 = zext i8 %0 to i32
  %6 = shl i32 %5, 27
  %7 = shl i16 %2, 4
  %8 = and i16 %7, 4080
  %9 = zext i16 %8 to i32
  %10 = or i32 %6, %9
  %11 = and i8 %3, 7
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_non_data_cmd_v2(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #7 {
  ret i32 -95
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_owner_acc_status_v2(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #6 {
  %4 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1048576
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 12
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = zext i16 %2 to i32
  %11 = shl nuw nsw i32 %10, 2
  %12 = getelementptr i8, ptr %9, i32 %11
  ret ptr %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_acc_enable_v2(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = zext i16 %1 to i32
  %6 = shl nuw nsw i32 %5, 12
  %7 = getelementptr i8, ptr %4, i32 %6
  ret ptr %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_status_v2(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = zext i16 %1 to i32
  %7 = shl nuw nsw i32 %6, 12
  %8 = getelementptr i8, ptr %5, i32 %7
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_clear_v2(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = zext i16 %1 to i32
  %7 = shl nuw nsw i32 %6, 12
  %8 = getelementptr i8, ptr %5, i32 %7
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_owner_acc_status_v3(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #6 {
  %4 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 2097152
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 12
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = zext i16 %2 to i32
  %11 = shl nuw nsw i32 %10, 2
  %12 = getelementptr i8, ptr %9, i32 %11
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_ppid_to_apid_v5(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #8 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = zext i16 %1 to i32
  %6 = getelementptr i16, ptr %4, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %8, 32767
  %12 = select i1 %10, i32 -19, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_offset_v5(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #9 {
  %5 = zext i8 %1 to i16
  %6 = tail call i16 @llvm.fshl.i16(i16 %5, i16 %2, i16 8)
  %7 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = zext i16 %6 to i32
  %10 = getelementptr i16, ptr %8, i32 %9
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 32767
  %16 = select i1 %14, i32 -19, i32 %15
  br i1 %14, label %28, label %17

17:                                               ; preds = %4
  switch i32 %3, label %28 [
    i32 1, label %18
    i32 0, label %26
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 9
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = shl nsw i32 %16, 7
  %24 = and i32 %23, 8388480
  %25 = add nuw nsw i32 %22, %24
  br label %28

26:                                               ; preds = %17
  %27 = shl nsw i32 %16, 16
  br label %28

28:                                               ; preds = %26, %18, %17, %4
  %29 = phi i32 [ -19, %4 ], [ 0, %17 ], [ %27, %26 ], [ %25, %18 ]
  ret i32 %29
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_owner_acc_status_v5(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #6 {
  %4 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = zext i8 %1 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = zext i16 %2 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = getelementptr i8, ptr %8, i32 %10
  ret ptr %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_acc_enable_v5(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 256
  %6 = zext i16 %1 to i32
  %7 = shl nuw i32 %6, 16
  %8 = getelementptr i8, ptr %5, i32 %7
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_status_v5(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 260
  %6 = zext i16 %1 to i32
  %7 = shl nuw i32 %6, 16
  %8 = getelementptr i8, ptr %5, i32 %7
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_clear_v5(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 264
  %6 = zext i16 %1 to i32
  %7 = shl nuw i32 %6, 16
  %8 = getelementptr i8, ptr %5, i32 %7
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_apid_map_offset_v5(i16 noundef zeroext %0) #7 {
  %2 = zext i16 %0 to i32
  %3 = shl nuw nsw i32 %2, 2
  %4 = add nuw nsw i32 %3, 2304
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = call i32 @qpnpint_irq_domain_translate(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr %6, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr @handle_level_irq, ptr @handle_edge_irq
  br label %19

19:                                               ; preds = %19, %13
  %20 = phi i32 [ 0, %13 ], [ %23, %19 ]
  %21 = add i32 %20, %1
  %22 = add i32 %14, %20
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %21, i32 noundef %22, ptr noundef nonnull @pmic_arb_irqchip, ptr noundef %8, ptr noundef nonnull %18, ptr noundef null, ptr noundef null) #11
  %23 = add nuw i32 %20, 1
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %11, %4
  %26 = phi i32 [ %9, %4 ], [ 0, %11 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_domain_activate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 511
  %9 = getelementptr %struct.spmi_pmic_arb, ptr %5, i32 0, i32 19, i32 %8, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %10, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = zext i8 %12 to i32
  %16 = zext i8 %10 to i32
  %17 = lshr i32 %7, 16
  %18 = and i32 %17, 7
  %19 = lshr i32 %7, 28
  %20 = lshr i32 %7, 20
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %5, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.29, i32 noundef %19, i32 noundef %21, i32 noundef %18, i32 noundef %15, i32 noundef %16) #12
  br label %24

24:                                               ; preds = %14, %3
  %25 = phi i32 [ -19, %14 ], [ 0, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_domain_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %12 = or i1 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.fwnode_handle, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @of_fwnode_ops
  %17 = getelementptr i8, ptr %9, i32 -12
  %18 = select i1 %16, ptr %17, ptr null
  br label %19

19:                                               ; preds = %13, %4
  %20 = phi ptr [ null, %4 ], [ %18, %13 ]
  %21 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %6, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %26, label %86

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = load i32, ptr %7, align 4
  %32 = icmp ugt i32 %31, 15
  br i1 %32, label %86, label %33

33:                                               ; preds = %30
  %34 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, 255
  br i1 %36, label %86, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, 7
  br i1 %40, label %86, label %41

41:                                               ; preds = %37
  %42 = shl nuw nsw i32 %31, 8
  %43 = or i32 %35, %42
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %6, i32 0, i32 16
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %6, i16 noundef zeroext %44) #11
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load ptr, ptr %21, align 4
  %53 = load i32, ptr %7, align 4
  %54 = load i32, ptr %34, align 4
  %55 = load i32, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.30, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %49) #12
  br label %86

56:                                               ; preds = %41
  %57 = trunc i32 %49 to i16
  %58 = and i32 %49, 65535
  %59 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %6, i32 0, i32 11
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = icmp ugt i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i16 %57, ptr %59, align 4
  br label %64

64:                                               ; preds = %63, %56
  %65 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %6, i32 0, i32 10
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp ult i32 %58, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i16 %57, ptr %65, align 2
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i32, ptr %7, align 4
  %72 = shl i32 %71, 28
  %73 = load i32, ptr %34, align 4
  %74 = shl i32 %73, 20
  %75 = and i32 %74, 267386880
  %76 = or i32 %75, %72
  %77 = load i32, ptr %38, align 4
  %78 = shl i32 %77, 16
  %79 = and i32 %78, 458752
  %80 = or i32 %76, %79
  %81 = and i32 %49, 511
  %82 = or i32 %80, %81
  store i32 %82, ptr %2, align 4
  %83 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 15
  store i32 %85, ptr %3, align 4
  br label %86

86:                                               ; preds = %70, %51, %37, %33, %30, %26, %19
  %87 = phi i32 [ %49, %51 ], [ 0, %70 ], [ -22, %19 ], [ -22, %26 ], [ -22, %37 ], [ -22, %33 ], [ -22, %30 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qpnpint_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 7
  %9 = trunc i32 %6 to i16
  %10 = and i16 %9, 511
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  %11 = shl nuw nsw i32 1, %8
  %12 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %4, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr %15(ptr noundef %4, i16 noundef zeroext %10) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %11) #11, !srcloc !10
  %17 = trunc i32 %11 to i8
  store i8 %17, ptr %2, align 1
  %18 = load ptr, ptr %3, align 4
  %19 = load i32, ptr %5, align 4
  %20 = lshr i32 %19, 28
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %18, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = lshr i32 %19, 12
  %25 = trunc i32 %24 to i16
  %26 = and i16 %25, -256
  %27 = or i16 %26, 20
  %28 = call i32 @pmic_arb_write_cmd(ptr noundef %23, i8 noundef zeroext 48, i8 noundef zeroext %21, i16 noundef zeroext %27, ptr noundef nonnull %2, i32 noundef 1) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_write._rs, ptr noundef nonnull @__func__.qpnpint_spmi_write) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.27, i32 noundef %36) #12
  br label %37

37:                                               ; preds = %33, %30, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qpnpint_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  %7 = shl nuw nsw i32 1, %6
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %2, align 1
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = lshr i32 %4, 28
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %10, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = lshr i32 %4, 12
  %16 = trunc i32 %15 to i16
  %17 = and i16 %16, -256
  %18 = or i16 %17, 22
  %19 = call i32 @pmic_arb_write_cmd(ptr noundef %14, i8 noundef zeroext 48, i8 noundef zeroext %12, i16 noundef zeroext %18, ptr noundef nonnull %2, i32 noundef 1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_write._rs, ptr noundef nonnull @__func__.qpnpint_spmi_write) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.27, i32 noundef %27) #12
  br label %28

28:                                               ; preds = %24, %21, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qpnpint_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 7
  %11 = trunc i32 %8 to i16
  %12 = and i16 %11, 511
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !annotation !8
  %13 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %6, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %4, i16 noundef zeroext %12) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #11, !srcloc !10
  %16 = load ptr, ptr %3, align 4
  %17 = load i32, ptr %7, align 4
  %18 = lshr i32 %17, 28
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %16, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = lshr i32 %17, 12
  %23 = trunc i32 %22 to i16
  %24 = and i16 %23, -256
  %25 = or i16 %24, 21
  %26 = call i32 @pmic_arb_read_cmd(ptr noundef %21, i8 noundef zeroext 56, i8 noundef zeroext %19, i16 noundef zeroext %25, ptr noundef nonnull %2, i32 noundef 1) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_read._rs, ptr noundef nonnull @__func__.qpnpint_spmi_read) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %20, align 4
  %33 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.27, i32 noundef %34) #12
  br label %35

35:                                               ; preds = %31, %28, %1
  %36 = load i8, ptr %2, align 2
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 1, %10
  %39 = and i32 %38, %37
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %35
  %42 = trunc i32 %38 to i8
  store i8 %42, ptr %2, align 2
  %43 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %42, ptr %43, align 1
  %44 = load ptr, ptr %3, align 4
  %45 = load i32, ptr %7, align 4
  %46 = lshr i32 %45, 28
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %44, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = lshr i32 %45, 12
  %51 = trunc i32 %50 to i16
  %52 = and i16 %51, -256
  %53 = or i16 %52, 20
  %54 = call i32 @pmic_arb_write_cmd(ptr noundef %49, i8 noundef zeroext 48, i8 noundef zeroext %47, i16 noundef zeroext %53, ptr noundef nonnull %2, i32 noundef 2) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %41
  %57 = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_write._rs, ptr noundef nonnull @__func__.qpnpint_spmi_write) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %48, align 4
  %61 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.27, i32 noundef %62) #12
  br label %63

63:                                               ; preds = %59, %56, %41, %35
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 7
  %7 = shl nuw nsw i32 1, %6
  %8 = trunc i32 %7 to i8
  %9 = and i32 %1, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = and i32 %1, 1
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 0, i8 %8
  %15 = and i32 %1, 2
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i8 0, i8 %8
  br label %26

18:                                               ; preds = %2
  %19 = and i32 %1, 12
  %20 = icmp eq i32 %19, 12
  br i1 %20, label %123, label %21

21:                                               ; preds = %18
  %22 = and i32 %1, 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i8 0, i8 %8
  %25 = select i1 %23, i8 %8, i8 0
  br label %26

26:                                               ; preds = %21, %11
  %27 = phi i8 [ 0, %21 ], [ %8, %11 ]
  %28 = phi i8 [ %24, %21 ], [ %14, %11 ]
  %29 = phi i8 [ %25, %21 ], [ %17, %11 ]
  %30 = phi ptr [ @handle_level_irq, %21 ], [ @handle_edge_irq, %11 ]
  %31 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = lshr i32 %4, 28
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %32, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = lshr i32 %4, 12
  %38 = trunc i32 %37 to i16
  %39 = and i16 %38, -256
  %40 = or i16 %39, 17
  %41 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %42, i32 0, i32 16
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %42, i8 noundef zeroext %34, i16 noundef zeroext %40, i32 noundef 1) #11
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %110, label %49

49:                                               ; preds = %26
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(i8 noundef zeroext 1, i8 noundef zeroext %34, i16 noundef zeroext %40, i8 noundef zeroext 2) #11
  %54 = load ptr, ptr %43, align 4
  %55 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 %56(ptr noundef %42, i8 noundef zeroext %34, i16 noundef zeroext %40, i32 noundef 0) #11
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %110, label %59

59:                                               ; preds = %49
  %60 = load ptr, ptr %43, align 4
  %61 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(i8 noundef zeroext 0, i8 noundef zeroext %34, i16 noundef zeroext %40, i8 noundef zeroext 2) #11
  %64 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %42, i32 0, i32 6
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #11
  %66 = load ptr, ptr %41, align 8
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %53) #11, !srcloc !10
  %69 = load ptr, ptr %66, align 4
  %70 = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %36, ptr noundef %69, i8 noundef zeroext %34, i16 noundef zeroext %40, i32 noundef 1) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #11
  br label %110

73:                                               ; preds = %59
  %74 = add nuw i32 %47, 24
  %75 = load ptr, ptr %66, align 4
  %76 = getelementptr i8, ptr %75, i32 %74
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !9
  %78 = trunc i32 %77 to i8
  %79 = lshr i32 %77, 8
  %80 = trunc i32 %79 to i8
  %81 = lshr i32 %77, 16
  %82 = trunc i32 %81 to i8
  %83 = xor i8 %8, -1
  %84 = and i8 %78, %83
  %85 = and i8 %27, %8
  %86 = or i8 %84, %85
  %87 = and i8 %80, %83
  %88 = and i8 %28, %8
  %89 = or i8 %87, %88
  %90 = and i8 %82, %83
  %91 = and i8 %29, %8
  %92 = or i8 %90, %91
  %93 = load ptr, ptr %41, align 8
  %94 = add nuw i32 %57, 16
  %95 = zext i8 %92 to i32
  %96 = shl nuw nsw i32 %95, 16
  %97 = zext i8 %89 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or i32 %96, %98
  %100 = zext i8 %86 to i32
  %101 = or i32 %99, %100
  %102 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %93, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %101) #11, !srcloc !10
  %105 = load ptr, ptr %102, align 4
  %106 = getelementptr i8, ptr %105, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %63) #11, !srcloc !10
  %107 = load ptr, ptr %102, align 4
  %108 = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %36, ptr noundef %107, i8 noundef zeroext %34, i16 noundef zeroext %40, i32 noundef 0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %73, %72, %49, %26
  %111 = phi i32 [ %108, %73 ], [ %70, %72 ], [ %57, %49 ], [ %47, %26 ]
  %112 = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_masked_write._rs, ptr noundef nonnull @__func__.qpnpint_spmi_masked_write) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %35, align 4
  %116 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.28, i32 noundef %117, i32 noundef %111) #12
  br label %118

118:                                              ; preds = %114, %110, %73
  %119 = phi i32 [ %111, %110 ], [ %111, %114 ], [ 0, %73 ]
  %120 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.irq_desc, ptr %121, i32 0, i32 3
  store ptr %30, ptr %122, align 4
  br label %123

123:                                              ; preds = %118, %18
  %124 = phi i32 [ %119, %118 ], [ -22, %18 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef %1) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qpnpint_get_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  %7 = icmp eq i32 %1, 3
  br i1 %7, label %8, label %37

8:                                                ; preds = %3
  %9 = lshr i32 %6, 16
  %10 = and i32 %9, 7
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = lshr i32 %6, 28
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %12, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = lshr i32 %6, 12
  %18 = trunc i32 %17 to i16
  %19 = and i16 %18, -256
  %20 = or i16 %19, 16
  %21 = call i32 @pmic_arb_read_cmd(ptr noundef %16, i8 noundef zeroext 56, i8 noundef zeroext %14, i16 noundef zeroext %20, ptr noundef nonnull %4, i32 noundef 1) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %8
  %24 = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_read._rs, ptr noundef nonnull @__func__.qpnpint_spmi_read) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.27, i32 noundef %29) #12
  br label %30

30:                                               ; preds = %26, %23, %8
  %31 = load i8, ptr %4, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 1, %10
  %34 = and i32 %33, %32
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i8
  store i8 %36, ptr %2, align 1
  br label %37

37:                                               ; preds = %30, %3
  %38 = phi i32 [ 0, %30 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spmi_controller_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!9 = !{i64 3096864}
!10 = !{i64 3096446}
!11 = !{i32 0, i32 33}
