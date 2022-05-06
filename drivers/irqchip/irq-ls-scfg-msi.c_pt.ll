; ModuleID = '/llk/IR/drivers/irqchip/irq-ls-scfg-msi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-ls-scfg-msi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ls_scfg_msi_cfg = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.ls_scfg_msi = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.ls_scfg_msir = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.5, %union.anon.6, %union.anon.7 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }

@__setup_str_early_parse_ls_scfg_msi = internal constant [6 x i8] c"lsmsi\00", section ".init.rodata", align 1
@__setup_early_parse_ls_scfg_msi = internal global %struct.obs_kernel_param { ptr @__setup_str_early_parse_ls_scfg_msi, ptr @early_parse_ls_scfg_msi, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_irq_ls_scfg_msi__170_429_ls_scfg_msi_driver_init6 = internal global ptr @ls_scfg_msi_driver_init, section ".initcall6.init", align 4
@ls_scfg_msi_driver = internal global %struct.platform_driver { ptr @ls_scfg_msi_probe, ptr @ls_scfg_msi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ls_scfg_msi_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ls_scfg_msi_driver_exit = internal global ptr @ls_scfg_msi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [61 x i8] c"irq_ls_scfg_msi.author=Minghuan Lian <Minghuan.Lian@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [76 x i8] c"irq_ls_scfg_msi.description=Freescale Layerscape SCFG MSI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [53 x i8] c"irq_ls_scfg_msi.file=drivers/irqchip/irq-ls-scfg-msi\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [31 x i8] c"irq_ls_scfg_msi.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"no-affinity\00", align 1
@msi_affinity_flag = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ls-scfg-msi\00", align 1
@ls_scfg_msi_id = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,1s1021a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,1s1043a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-v1.1-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1043_v1_1_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1046_msi_cfg }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to initialize 'regs'\0A\00", align 1
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@ls_scfg_msi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ls_scfg_msi_domain_irq_alloc, ptr @ls_scfg_msi_domain_irq_free, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@ls_scfg_msi_domain_info = internal global %struct.msi_domain_info { i32 11, ptr null, ptr @ls_scfg_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create MSI domain\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"drivers/irqchip/irq-ls-scfg-msi.c\00", align 1
@ls_scfg_msi_parent_chip = internal global %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ls_scfg_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ls_scfg_msi_compose_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"SCFG\00", align 1
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"\014cannot bind the irq to cpu%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\013failed to teardown msi. Invalid hwirq %d\0A\00", align 1
@ls_scfg_msi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@ls1021_msi_cfg = internal global %struct.ls_scfg_msi_cfg { i32 3, i32 32, i32 4 }, align 4
@ls1043_v1_1_msi_cfg = internal global %struct.ls_scfg_msi_cfg { i32 2, i32 8, i32 16 }, align 4
@ls1046_msi_cfg = internal global %struct.ls_scfg_msi_cfg { i32 2, i32 32, i32 4 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_ls_scfg_msi_driver_exit, ptr @__initcall__kmod_irq_ls_scfg_msi__170_429_ls_scfg_msi_driver_init6, ptr @__setup_early_parse_ls_scfg_msi, ptr @ls_scfg_msi_driver_exit], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @early_parse_ls_scfg_msi(ptr noundef readonly %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(12) @.str, i32 noundef 11)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3, %1
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i1 [ false, %6 ], [ true, %3 ]
  store i1 %8, ptr @msi_affinity_flag, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_driver_init() #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ls_scfg_msi_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ls_scfg_msi_driver_exit() #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ls_scfg_msi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_probe(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @ls_scfg_msi_id, ptr noundef %2) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %160, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %160, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 6
  store ptr %10, ptr %11, align 4
  %12 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %13 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %12) #9
  %14 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #10
  %17 = ptrtoint ptr %13 to i32
  br label %160

18:                                               ; preds = %8
  %19 = load i32, ptr %12, align 4
  %20 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 1
  store ptr %0, ptr %21, align 4
  store i32 0, ptr %6, align 4
  %22 = load i32, ptr %10, align 4
  %23 = shl i32 32, %22
  %24 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 9
  store i32 %23, ptr %24, align 4
  %25 = tail call ptr @devm_bitmap_zalloc(ptr noundef %2, i32 noundef %23, i32 noundef 3264) #9
  %26 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 10
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %160, label %28

28:                                               ; preds = %18
  %29 = lshr exact i32 %23, 3
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %25, i8 -1, i32 %29, i1 false) #9
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @of_irq_count(ptr noundef %31) #9
  %33 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 7
  store i32 %32, ptr %33, align 4
  %34 = load i1, ptr @msi_affinity_flag, align 4
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i32, ptr @__cpu_possible_mask, align 4
  %37 = and i32 %36, 65535
  %38 = tail call i32 @__sw_hweight32(i32 noundef %37) #9
  %39 = icmp ult i32 %32, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 %38, ptr %33, align 4
  br label %42

41:                                               ; preds = %35
  store i1 true, ptr @msi_affinity_flag, align 4
  br label %42

42:                                               ; preds = %41, %40, %28
  %43 = phi i32 [ %38, %40 ], [ %32, %41 ], [ %32, %28 ]
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 28) #9
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %46, label %48, !prof !8

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 8
  store ptr null, ptr %47, align 4
  br label %160

48:                                               ; preds = %42
  %49 = extractvalue { i32, i1 } %44, 0
  %50 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %49, i32 noundef 3520) #9
  %51 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 8
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %160, label %53

53:                                               ; preds = %48
  %54 = icmp eq i32 %43, 0
  br i1 %54, label %137, label %55

55:                                               ; preds = %133, %53
  %56 = phi i32 [ %134, %133 ], [ 0, %53 ]
  %57 = load ptr, ptr %21, align 4
  %58 = tail call i32 @platform_get_irq(ptr noundef %57, i32 noundef %56) #9
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %133, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %51, align 4
  %62 = getelementptr %struct.ls_scfg_msir, ptr %61, i32 %56
  %63 = getelementptr %struct.ls_scfg_msir, ptr %61, i32 %56, i32 1
  store i32 %56, ptr %63, align 4
  store ptr %6, ptr %62, align 4
  %64 = getelementptr %struct.ls_scfg_msir, ptr %61, i32 %56, i32 2
  store i32 %58, ptr %64, align 4
  %65 = load ptr, ptr %14, align 4
  %66 = load ptr, ptr %11, align 4
  %67 = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = shl i32 %56, 2
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = getelementptr %struct.ls_scfg_msir, ptr %61, i32 %56, i32 6
  store ptr %71, ptr %72, align 4
  %73 = load ptr, ptr %11, align 4
  %74 = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %73, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %77, label %82

77:                                               ; preds = %60
  %78 = mul i32 %56, -8
  %79 = add i32 %78, 24
  %80 = getelementptr %struct.ls_scfg_msir, ptr %61, i32 %56, i32 3
  store i32 %79, ptr %80, align 4
  %81 = add i32 %78, 31
  br label %88

82:                                               ; preds = %60
  %83 = getelementptr %struct.ls_scfg_msir, ptr %61, i32 %56, i32 3
  store i32 0, ptr %83, align 4
  %84 = load ptr, ptr %11, align 4
  %85 = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, -1
  br label %88

88:                                               ; preds = %82, %77
  %89 = phi i32 [ %81, %77 ], [ %87, %82 ]
  %90 = getelementptr %struct.ls_scfg_msir, ptr %61, i32 %56, i32 4
  store i32 %89, ptr %90, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %58, ptr noundef nonnull @ls_scfg_msi_irq_handler, ptr noundef %62) #9
  %91 = load i1, ptr @msi_affinity_flag, align 4
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = getelementptr %struct.ls_scfg_msir, ptr %61, i32 %56, i32 5
  store i32 %56, ptr %93, align 4
  br label %108

94:                                               ; preds = %88
  %95 = load i32, ptr %64, align 4
  %96 = and i32 %56, 31
  %97 = add nuw nsw i32 %96, 1
  %98 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %97
  %99 = lshr i32 %56, 5
  %100 = sub nsw i32 0, %99
  %101 = getelementptr i32, ptr %98, i32 %100
  %102 = tail call i32 @irq_set_affinity(i32 noundef %95, ptr noundef %101) #9
  %103 = getelementptr %struct.ls_scfg_msir, ptr %61, i32 %56, i32 5
  store i32 0, ptr %103, align 4
  %104 = load i1, ptr @msi_affinity_flag, align 4
  br i1 %104, label %108, label %105

105:                                              ; preds = %94
  %106 = load i32, ptr %63, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %105, %94, %92
  %109 = load ptr, ptr %11, align 4
  %110 = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %109, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %113, %108
  %114 = phi ptr [ %129, %113 ], [ %109, %108 ]
  %115 = phi i32 [ %128, %113 ], [ 0, %108 ]
  %116 = load i32, ptr %114, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, ptr %63, align 4
  %119 = or i32 %117, %118
  %120 = load ptr, ptr %26, align 4
  %121 = and i32 %119, 31
  %122 = shl nuw i32 1, %121
  %123 = lshr i32 %119, 5
  %124 = getelementptr i32, ptr %120, i32 %123
  %125 = xor i32 %122, -1
  %126 = load i32, ptr %124, align 4
  %127 = and i32 %126, %125
  store i32 %127, ptr %124, align 4
  %128 = add nuw i32 %115, 1
  %129 = load ptr, ptr %11, align 4
  %130 = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %129, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = icmp ult i32 %128, %131
  br i1 %132, label %113, label %133

133:                                              ; preds = %113, %108, %105, %55
  %134 = add nuw i32 %56, 1
  %135 = load i32, ptr %33, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %55, label %137

137:                                              ; preds = %133, %53
  %138 = load i32, ptr %24, align 4
  %139 = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef %138, i32 noundef %138, i32 noundef 0, ptr noundef nonnull @ls_scfg_msi_domain_ops, ptr noundef nonnull %6) #9
  %140 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 2
  store ptr %139, ptr %140, align 4
  %141 = icmp eq ptr %139, null
  %142 = load ptr, ptr %21, align 4
  br i1 %141, label %143, label %145

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.platform_device, ptr %142, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.3) #10
  br label %160

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.platform_device, ptr %142, i32 0, i32 3, i32 25
  %147 = load ptr, ptr %146, align 8
  %148 = icmp eq ptr %147, null
  %149 = getelementptr inbounds %struct.device_node, ptr %147, i32 0, i32 3
  %150 = select i1 %148, ptr null, ptr %149
  %151 = tail call ptr @pci_msi_create_irq_domain(ptr noundef %150, ptr noundef nonnull @ls_scfg_msi_domain_info, ptr noundef nonnull %139) #9
  %152 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 3
  store ptr %151, ptr %152, align 4
  %153 = icmp eq ptr %151, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %145
  %155 = load ptr, ptr %21, align 4
  %156 = getelementptr inbounds %struct.platform_device, ptr %155, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.4) #10
  %157 = load ptr, ptr %140, align 4
  tail call void @irq_domain_remove(ptr noundef %157) #9
  br label %160

158:                                              ; preds = %145
  %159 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %159, align 8
  br label %160

160:                                              ; preds = %158, %154, %143, %48, %46, %18, %16, %5, %1
  %161 = phi i32 [ %17, %16 ], [ 0, %158 ], [ -19, %1 ], [ -12, %5 ], [ -12, %18 ], [ -12, %48 ], [ -12, %46 ], [ -12, %154 ], [ -12, %143 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_remove(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ls_scfg_msi, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ls_scfg_msi, ptr %3, i32 0, i32 8
  br label %9

9:                                                ; preds = %46, %7
  %10 = phi i32 [ 0, %7 ], [ %47, %46 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.ls_scfg_msir, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.ls_scfg_msir, ptr %11, i32 %10, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  tail call void @irq_set_chained_handler_and_data(i32 noundef %15, ptr noundef null, ptr noundef null) #9
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds %struct.ls_scfg_msi, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %18
  %25 = getelementptr %struct.ls_scfg_msir, ptr %11, i32 %10, i32 1
  %26 = getelementptr inbounds %struct.ls_scfg_msi, ptr %13, i32 0, i32 10
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %20, %24 ], [ %42, %27 ]
  %29 = phi i32 [ 0, %24 ], [ %41, %27 ]
  %30 = load i32, ptr %28, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, ptr %25, align 4
  %33 = or i32 %31, %32
  %34 = load ptr, ptr %26, align 4
  %35 = and i32 %33, 31
  %36 = shl nuw i32 1, %35
  %37 = lshr i32 %33, 5
  %38 = getelementptr i32, ptr %34, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %36, %39
  store i32 %40, ptr %38, align 4
  %41 = add nuw i32 %29, 1
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %27, label %46

46:                                               ; preds = %27, %18
  %47 = add nuw i32 %10, 1
  %48 = load i32, ptr %4, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %9, label %50

50:                                               ; preds = %46, %1
  %51 = getelementptr inbounds %struct.ls_scfg_msi, ptr %3, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  tail call void @irq_domain_remove(ptr noundef %52) #9
  %53 = getelementptr inbounds %struct.ls_scfg_msi, ptr %3, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  tail call void @irq_domain_remove(ptr noundef %54) #9
  store ptr null, ptr %2, align 8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ls_scfg_msi_irq_handler(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %13(ptr noundef %16) #9
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #9
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = getelementptr inbounds %struct.ls_scfg_msir, ptr %4, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !9
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  store i32 %29, ptr %2, align 4
  %30 = getelementptr inbounds %struct.ls_scfg_msir, ptr %4, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ls_scfg_msir, ptr %4, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  %35 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %34, i32 noundef %31) #9
  %36 = icmp slt i32 %35, %34
  br i1 %36, label %37, label %55

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.ls_scfg_msi, ptr %5, i32 0, i32 6
  %39 = getelementptr inbounds %struct.ls_scfg_msir, ptr %4, i32 0, i32 5
  %40 = getelementptr inbounds %struct.ls_scfg_msi, ptr %5, i32 0, i32 2
  br label %41

41:                                               ; preds = %41, %37
  %42 = phi i32 [ %35, %37 ], [ %53, %41 ]
  %43 = load i32, ptr %32, align 4
  %44 = sub i32 %43, %42
  %45 = load ptr, ptr %38, align 4
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %44, %46
  %48 = load i32, ptr %39, align 4
  %49 = or i32 %47, %48
  %50 = load ptr, ptr %40, align 4
  %51 = call i32 @generic_handle_domain_irq(ptr noundef %50, i32 noundef %49) #9
  %52 = add nsw i32 %42, 1
  %53 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %34, i32 noundef %52) #9
  %54 = icmp slt i32 %53, %34
  br i1 %54, label %41, label %55

55:                                               ; preds = %41, %25
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.irq_chip, ptr %56, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.irq_chip, ptr %56, i32 0, i32 9
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi ptr [ %62, %60 ], [ %58, %55 ]
  %65 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %64(ptr noundef %65) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_domain_irq_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #4 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %9, label %8, !prof !11

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 145, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %4
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %10 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @_find_first_zero_bit_le(ptr noundef %11, i32 noundef %13) #9
  %15 = load i32, ptr %12, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load ptr, ptr %10, align 4
  %19 = and i32 %14, 31
  %20 = shl nuw i32 1, %19
  %21 = lshr i32 %14, 5
  %22 = getelementptr i32, ptr %18, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %17, %9
  %26 = phi i32 [ 0, %17 ], [ -28, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %27 = load i16, ptr %6, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br i1 %16, label %29, label %30

29:                                               ; preds = %25
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %1, i32 noundef %14, ptr noundef nonnull @ls_scfg_msi_parent_chip, ptr noundef %6, ptr noundef nonnull @handle_simple_irq, ptr noundef null, ptr noundef null) #9
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ 0, %29 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ls_scfg_msi_domain_irq_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #9
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %3
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %8) #10
  br label %28

16:                                               ; preds = %10
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %17 = getelementptr inbounds %struct.ls_scfg_msi, ptr %6, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = and i32 %8, 31
  %20 = shl nuw i32 1, %19
  %21 = lshr i32 %8, 5
  %22 = getelementptr i32, ptr %18, i32 %21
  %23 = xor i32 %20, -1
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %24, %23
  store i32 %25, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %26 = load i16, ptr %6, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %28

28:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_set_affinity(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #4 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load i1, ptr @msi_affinity_flag, align 4
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  br i1 %2, label %16, label %8

8:                                                ; preds = %7
  %9 = load i32, ptr %1, align 4
  %10 = load i32, ptr @__cpu_online_mask, align 4
  %11 = and i32 %9, 65535
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  %14 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true) #9, !range !16
  %15 = select i1 %13, i32 16, i32 %14
  br label %18

16:                                               ; preds = %7
  %17 = tail call i32 @_find_first_bit_le(ptr noundef %1, i32 noundef 16) #9
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ %17, %16 ], [ %15, %8 ]
  %20 = getelementptr inbounds %struct.ls_scfg_msi, ptr %5, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ls_scfg_msi, ptr %5, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.ls_scfg_msir, ptr %25, i32 %19, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %19) #10
  br label %42

31:                                               ; preds = %23
  %32 = and i32 %19, 31
  %33 = add nuw nsw i32 %32, 1
  %34 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %33
  %35 = lshr i32 %19, 5
  %36 = sub nsw i32 0, %35
  %37 = getelementptr i32, ptr %34, i32 %36
  %38 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.irq_common_data, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %37, align 4
  store i32 %41, ptr %40, align 4
  br label %42

42:                                               ; preds = %31, %29, %18, %3
  %43 = phi i32 [ -22, %29 ], [ 0, %31 ], [ -22, %3 ], [ -22, %18 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ls_scfg_msi_compose_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ls_scfg_msi, ptr %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %5, align 4
  store i32 %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = load i1, ptr @msi_affinity_flag, align 4
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.irq_common_data, ptr %14, i32 0, i32 4
  %16 = tail call i32 @_find_first_bit_le(ptr noundef %15, i32 noundef 16) #9
  %17 = load i32, ptr %10, align 4
  %18 = or i32 %17, %16
  store i32 %18, ptr %10, align 4
  br label %19

19:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #2

attributes #0 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 3485879}
!10 = !{i64 2151735556}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148935303}
!13 = !{i64 2148931127}
!14 = !{i64 2148931202, i64 2148931229, i64 2148931276, i64 2148931298, i64 2148931326, i64 2148931346}
!15 = !{i64 2148958306}
!16 = !{i32 0, i32 33}
