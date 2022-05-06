; ModuleID = '/llk/IR/drivers/char/ipmi/kcs_bmc_aspeed.c_pt.bc'
source_filename = "../drivers/char/ipmi/kcs_bmc_aspeed.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.aspeed_kcs_of_ops = type { ptr, ptr }
%struct.kcs_ioreg = type { i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kcs_bmc_device_ops = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kcs_bmc_device = type { %struct.list_head, ptr, i32, %struct.kcs_ioreg, ptr, %struct.spinlock, ptr }
%struct.aspeed_kcs_bmc = type { %struct.kcs_bmc_device, ptr, %struct.anon.62, %struct.anon.63 }
%struct.anon.62 = type { i32, i32 }
%struct.anon.63 = type { %struct.spinlock, i8, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@ast_kcs_bmc_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-kcs-bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_v1_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-kcs-bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_v1_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-kcs-bmc-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_v2_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-kcs-bmc-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_v2_ops }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license210 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author211 = internal constant [49 x i8] c"author=Haiyue Wang <haiyue.wang@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [40 x i8] c"author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [58 x i8] c"description=Aspeed device interface to the KCS BMC device\00", section ".modinfo", align 1
@of_v1_ops = internal constant %struct.aspeed_kcs_of_ops { ptr @aspeed_kcs_of_v1_get_channel, ptr @aspeed_kcs_of_v1_get_io_address }, align 4
@of_v2_ops = internal constant %struct.aspeed_kcs_of_ops { ptr @aspeed_kcs_of_v2_get_channel, ptr @aspeed_kcs_of_v2_get_io_address }, align 4
@.str = private unnamed_addr constant [9 x i8] c"kcs_chan\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"no valid 'kcs_chan' configured\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"kcs_addr\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"no valid 'kcs_addr' configured\0A\00", align 1
@ast_kcs_bmc_ioregs = internal constant [4 x %struct.kcs_ioreg] [%struct.kcs_ioreg { i32 36, i32 48, i32 60 }, %struct.kcs_ioreg { i32 40, i32 52, i32 64 }, %struct.kcs_ioreg { i32 44, i32 56, i32 68 }, %struct.kcs_ioreg { i32 276, i32 280, i32 284 }], align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"aspeed,lpc-io-reg\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"No valid 'aspeed,lpc-io-reg' configured\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Invalid data address in 'aspeed,lpc-io-reg'\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Invalid status address in 'aspeed,lpc-io-reg'\0A\00", align 1
@ast_kcs_bmc_driver = internal global %struct.platform_driver { ptr @aspeed_kcs_probe, ptr @aspeed_kcs_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ast_kcs_bmc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.8 = private unnamed_addr constant [12 x i8] c"ast-kcs-bmc\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"aspeed,ast2400-lpc-v2\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"aspeed,ast2500-lpc-v2\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"aspeed,ast2600-lpc-v2\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"unsupported LPC device binding\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"aspeed,lpc-interrupts\00", align 1
@aspeed_kcs_ops = internal constant %struct.kcs_bmc_device_ops { ptr @aspeed_kcs_irq_mask_update, ptr @aspeed_kcs_inb, ptr @aspeed_kcs_outb, ptr @aspeed_kcs_updateb }, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Couldn't get regmap\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Failed to register channel %d: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Initialised channel %d at 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"drivers/char/ipmi/kcs_bmc_aspeed.c\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"regmap_read() failed: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"regmap_write() failed: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"regmap_update_bits() failed: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.21 = private unnamed_addr constant [52 x i8] c"Channel 3 only supports inferred status IO address\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"SerIRQ configuration not supported on KCS channel %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"\014aspeed-kcs-bmc: %s: Unsupported channel: %d\00", align 1
@__func__.aspeed_kcs_irq_mask_update = private unnamed_addr constant [27 x i8] c"aspeed_kcs_irq_mask_update\00", align 1
@__func__.aspeed_kcs_enable_channel = private unnamed_addr constant [26 x i8] c"aspeed_kcs_enable_channel\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_license210], section "llvm.metadata"

@__mod_of__ast_kcs_bmc_match_device_table = dso_local alias [5 x %struct.of_device_id], ptr @ast_kcs_bmc_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ast_kcs_bmc_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ast_kcs_bmc_driver) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_of_v1_get_channel(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %6 = icmp slt i32 %5, 0
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = icmp ugt i32 %7, 4
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1) #9
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ -22, %12 ], [ %7, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_of_v1_get_io_address(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef 1, i32 noundef 0) #8
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = icmp ugt i32 %9, 65535
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ -22, %11 ], [ 1, %8 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_of_v2_get_channel(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.kcs_ioreg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @__of_get_address(ptr noundef %4, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  store i32 %9, ptr %2, align 4
  %10 = tail call ptr @__of_get_address(ptr noundef %4, i32 noundef 1, i32 noundef -1, ptr noundef null, ptr noundef null) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr %10, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = getelementptr inbounds %struct.kcs_ioreg, ptr %2, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = tail call ptr @__of_get_address(ptr noundef %4, i32 noundef 2, i32 noundef -1, ptr noundef null, ptr noundef null) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %16, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %21 = getelementptr inbounds %struct.kcs_ioreg, ptr %2, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) @ast_kcs_bmc_ioregs, ptr noundef nonnull dereferenceable(12) %2, i32 12)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = call i32 @bcmp(ptr noundef dereferenceable(12) getelementptr inbounds ([4 x %struct.kcs_ioreg], ptr @ast_kcs_bmc_ioregs, i32 0, i32 1), ptr noundef nonnull dereferenceable(12) %2, i32 12)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = call i32 @bcmp(ptr noundef dereferenceable(12) getelementptr inbounds ([4 x %struct.kcs_ioreg], ptr @ast_kcs_bmc_ioregs, i32 0, i32 2), ptr noundef nonnull dereferenceable(12) %2, i32 12)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = call i32 @bcmp(ptr noundef dereferenceable(12) getelementptr inbounds ([4 x %struct.kcs_ioreg], ptr @ast_kcs_bmc_ioregs, i32 0, i32 3), ptr noundef nonnull dereferenceable(12) %2, i32 12)
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 4, i32 -22
  br label %34

34:                                               ; preds = %30, %27, %24, %18, %12, %7, %1
  %35 = phi i32 [ -22, %1 ], [ -22, %7 ], [ -22, %12 ], [ 1, %18 ], [ 2, %24 ], [ 3, %27 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_of_v2_get_io_address(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef 1, i32 noundef 2) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = icmp ugt i32 %9, 65535
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %6, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = getelementptr i32, ptr %1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 65535
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %8, %2
  %18 = phi ptr [ @.str.5, %2 ], [ @.str.6, %8 ], [ @.str.7, %13 ]
  %19 = phi i32 [ %6, %2 ], [ -22, %8 ], [ -22, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %18) #9
  br label %20

20:                                               ; preds = %17, %13, %11
  %21 = phi i32 [ 2, %13 ], [ %6, %11 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_probe(ptr noundef %0) #1 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @of_device_is_compatible(ptr noundef %8, ptr noundef nonnull @.str.9) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = tail call i32 @of_device_is_compatible(ptr noundef %8, ptr noundef nonnull @.str.10) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = tail call i32 @of_device_is_compatible(ptr noundef %8, ptr noundef nonnull @.str.11) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #9
  br label %160

18:                                               ; preds = %14, %11, %1
  %19 = tail call ptr @of_device_get_match_data(ptr noundef %4) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %160, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 4
  %23 = tail call i32 %22(ptr noundef %0) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %160, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.aspeed_kcs_of_ops, ptr %19, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 %27(ptr noundef %0, ptr noundef nonnull %3) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %160, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %31, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #8
  %33 = call i32 @llvm.smin.i32(i32 %32, i32 0) #8
  %34 = icmp sgt i32 %32, -1
  switch i32 %33, label %160 [
    i32 -22, label %35
    i32 0, label %35
  ]

35:                                               ; preds = %30, %30
  %36 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 80, i32 noundef 3520) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %160, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.kcs_bmc_device, ptr %36, i32 0, i32 1
  store ptr %4, ptr %39, align 4
  %40 = getelementptr inbounds %struct.kcs_bmc_device, ptr %36, i32 0, i32 2
  store i32 %23, ptr %40, align 4
  %41 = getelementptr inbounds %struct.kcs_bmc_device, ptr %36, i32 0, i32 3
  %42 = add nsw i32 %23, -1
  %43 = getelementptr [4 x %struct.kcs_ioreg], ptr @ast_kcs_bmc_ioregs, i32 0, i32 %42
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %41, ptr noundef align 4 dereferenceable(12) %43, i32 12, i1 false)
  %44 = getelementptr inbounds %struct.kcs_bmc_device, ptr %36, i32 0, i32 4
  store ptr @aspeed_kcs_ops, ptr %44, align 4
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 25
  %48 = load ptr, ptr %47, align 8
  %49 = call ptr @syscon_node_to_regmap(ptr noundef %48) #8
  %50 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %36, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14) #9
  br label %160

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %36, i32 0, i32 3
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %36, i32 0, i32 3, i32 1
  store i8 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %36, i32 0, i32 3, i32 2
  call void @init_timer_key(ptr noundef %56, ptr noundef nonnull @aspeed_kcs_check_obe, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %57 = add nsw i32 %28, -3
  %58 = icmp ult i32 %57, -2
  br i1 %58, label %59, label %60, !prof !9

59:                                               ; preds = %53
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 231, i32 noundef 9, ptr noundef null) #8
  br label %160

60:                                               ; preds = %53
  %61 = load i32, ptr %40, align 4
  switch i32 %61, label %160 [
    i32 1, label %62
    i32 2, label %81
    i32 3, label %101
    i32 4, label %114
  ]

62:                                               ; preds = %60
  %63 = load ptr, ptr %50, align 4
  %64 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 16, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %65 = load ptr, ptr %50, align 4
  %66 = load i32, ptr %3, align 8
  %67 = lshr i32 %66, 8
  %68 = call i32 @regmap_write(ptr noundef %65, i32 noundef 28, i32 noundef %67) #8
  %69 = load ptr, ptr %50, align 4
  %70 = load i32, ptr %3, align 8
  %71 = and i32 %70, 255
  %72 = call i32 @regmap_write(ptr noundef %69, i32 noundef 32, i32 noundef %71) #8
  %73 = icmp eq i32 %28, 2
  br i1 %73, label %74, label %130

74:                                               ; preds = %62
  %75 = load ptr, ptr %50, align 4
  %76 = getelementptr inbounds i32, ptr %3, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 288, i32 noundef 65535, i32 noundef %77, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %79 = load ptr, ptr %50, align 4
  %80 = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 256, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %130

81:                                               ; preds = %60
  %82 = load ptr, ptr %50, align 4
  %83 = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 16, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %84 = load ptr, ptr %50, align 4
  %85 = load i32, ptr %3, align 8
  %86 = lshr i32 %85, 8
  %87 = call i32 @regmap_write(ptr noundef %84, i32 noundef 28, i32 noundef %86) #8
  %88 = load ptr, ptr %50, align 4
  %89 = load i32, ptr %3, align 8
  %90 = and i32 %89, 255
  %91 = call i32 @regmap_write(ptr noundef %88, i32 noundef 32, i32 noundef %90) #8
  %92 = icmp eq i32 %28, 2
  br i1 %92, label %93, label %130

93:                                               ; preds = %81
  %94 = load ptr, ptr %50, align 4
  %95 = getelementptr inbounds i32, ptr %3, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 16
  %98 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 288, i32 noundef -65536, i32 noundef %97, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %99 = load ptr, ptr %50, align 4
  %100 = call i32 @regmap_update_bits_base(ptr noundef %99, i32 noundef 256, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %130

101:                                              ; preds = %60
  %102 = icmp eq i32 %28, 2
  br i1 %102, label %103, label %105

103:                                              ; preds = %101
  %104 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.21) #9
  br label %160

105:                                              ; preds = %101
  %106 = load ptr, ptr %50, align 4
  %107 = load i32, ptr %3, align 8
  %108 = lshr i32 %107, 8
  %109 = call i32 @regmap_write(ptr noundef %106, i32 noundef 20, i32 noundef %108) #8
  %110 = load ptr, ptr %50, align 4
  %111 = load i32, ptr %3, align 8
  %112 = and i32 %111, 255
  %113 = call i32 @regmap_write(ptr noundef %110, i32 noundef 24, i32 noundef %112) #8
  br label %130

114:                                              ; preds = %60
  %115 = icmp eq i32 %28, 1
  %116 = load ptr, ptr %50, align 4
  br i1 %115, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, ptr %3, align 8
  %119 = shl i32 %118, 16
  %120 = add i32 %119, 65536
  %121 = or i32 %120, %118
  %122 = call i32 @regmap_write(ptr noundef %116, i32 noundef 272, i32 noundef %121) #8
  br label %130

123:                                              ; preds = %114
  %124 = getelementptr inbounds i32, ptr %3, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = shl i32 %125, 16
  %127 = load i32, ptr %3, align 8
  %128 = or i32 %126, %127
  %129 = call i32 @regmap_write(ptr noundef %116, i32 noundef 272, i32 noundef %128) #8
  br label %130

130:                                              ; preds = %123, %117, %105, %93, %81, %74, %62
  %131 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %160, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load ptr, ptr %4, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = phi ptr [ %138, %137 ], [ %135, %133 ]
  %141 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %131, ptr noundef nonnull @aspeed_kcs_irq, ptr noundef null, i32 noundef 128, ptr noundef %140, ptr noundef nonnull %36) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  br i1 %34, label %144, label %150

144:                                              ; preds = %143
  %145 = load i32, ptr %2, align 8
  %146 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = call fastcc i32 @aspeed_kcs_config_upstream_irq(ptr noundef nonnull %36, i32 noundef %145, i32 noundef %147)
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %160, label %152

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %36, i32 0, i32 2
  store i32 0, ptr %151, align 4
  br label %152

152:                                              ; preds = %150, %144
  %153 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %36, ptr %153, align 8
  call void @aspeed_kcs_irq_mask_update(ptr noundef nonnull %36, i8 noundef zeroext 3, i8 noundef zeroext 0)
  call fastcc void @aspeed_kcs_enable_channel(ptr noundef nonnull %36, i1 noundef zeroext true)
  %154 = call i32 @kcs_bmc_add_device(ptr noundef nonnull %36) #8
  %155 = icmp eq i32 %154, 0
  %156 = load i32, ptr %40, align 4
  br i1 %155, label %158, label %157

157:                                              ; preds = %152
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %156, i32 noundef %154) #9
  br label %160

158:                                              ; preds = %152
  %159 = load i32, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef %156, i32 noundef %159) #9
  br label %160

160:                                              ; preds = %158, %157, %144, %139, %130, %103, %60, %59, %52, %35, %30, %25, %21, %18, %17
  %161 = phi i32 [ -19, %52 ], [ %154, %157 ], [ 0, %158 ], [ -19, %17 ], [ -22, %18 ], [ %23, %21 ], [ %28, %25 ], [ -22, %30 ], [ -12, %35 ], [ %141, %139 ], [ %148, %144 ], [ -22, %59 ], [ -22, %103 ], [ -22, %60 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @kcs_bmc_remove_device(ptr noundef %3) #8
  tail call fastcc void @aspeed_kcs_enable_channel(ptr noundef %3, i1 noundef zeroext false)
  tail call void @aspeed_kcs_irq_mask_update(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext 0)
  %4 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %3, i32 0, i32 3, i32 1
  store i8 1, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %6 = load i16, ptr %4, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %8 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %3, i32 0, i32 3, i32 2
  %9 = tail call i32 @del_timer_sync(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_kcs_check_obe(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -60
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load i8, ptr %6, align 4, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  br label %28

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -36
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %13 = getelementptr i8, ptr %0, i32 -20
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef %12, ptr noundef nonnull %2) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !16

17:                                               ; preds = %10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %26

18:                                               ; preds = %10
  %19 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = add i32 %23, 50
  %25 = call i32 @mod_timer(ptr noundef %0, i32 noundef %24) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  br label %28

26:                                               ; preds = %18, %17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %27 = call i32 @kcs_bmc_handle_event(ptr noundef %3) #8
  br label %28

28:                                               ; preds = %26, %22, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_kcs_config_upstream_irq(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = icmp ugt i32 %1, 15
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  switch i32 %2, label %40 [
    i32 1, label %8
    i32 4, label %6
    i32 8, label %7
  ]

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %6, %5
  %9 = phi i1 [ true, %7 ], [ true, %6 ], [ false, %5 ]
  %10 = phi i32 [ 0, %7 ], [ 32768, %6 ], [ 0, %5 ]
  %11 = phi i32 [ 0, %7 ], [ 8192, %6 ], [ 0, %5 ]
  %12 = phi i32 [ 0, %7 ], [ 4, %6 ], [ 12, %5 ]
  %13 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 2
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 2, i32 1
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %37 [
    i32 1, label %40
    i32 2, label %17
    i32 3, label %24
    i32 4, label %31
  ]

17:                                               ; preds = %8
  br i1 %9, label %18, label %40

18:                                               ; preds = %17
  %19 = shl nuw nsw i32 %1, 16
  %20 = or i32 %11, %19
  %21 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 128, i32 noundef 991232, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %40

24:                                               ; preds = %8
  br i1 %9, label %25, label %40

25:                                               ; preds = %24
  %26 = shl nuw nsw i32 %1, 20
  %27 = or i32 %10, %26
  %28 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 128, i32 noundef 15761408, i32 noundef %27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %40

31:                                               ; preds = %8
  %32 = shl nuw nsw i32 %1, 4
  %33 = or i32 %12, %32
  %34 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 260, i32 noundef 254, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %40

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.22, i32 noundef %16) #9
  br label %40

40:                                               ; preds = %37, %31, %25, %24, %18, %17, %8, %5, %3
  %41 = phi i32 [ -22, %37 ], [ -22, %3 ], [ -22, %17 ], [ -22, %24 ], [ 0, %31 ], [ 0, %25 ], [ 0, %18 ], [ 0, %8 ], [ -22, %5 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_kcs_irq_mask_update(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #1 {
  %4 = zext i8 %1 to i32
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = and i8 %2, 1
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 3, i32 2
  br i1 %9, label %15, label %11

11:                                               ; preds = %7
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = add i32 %12, 50
  %14 = tail call i32 @mod_timer(ptr noundef %10, i32 noundef %13) #8
  br label %17

15:                                               ; preds = %7
  %16 = tail call i32 @del_timer(ptr noundef %10) #8
  br label %17

17:                                               ; preds = %15, %11, %3
  %18 = and i32 %4, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %17
  %21 = and i8 %2, 2
  %22 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %46 [
    i32 1, label %24
    i32 2, label %29
    i32 3, label %35
    i32 4, label %41
  ]

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = zext i8 %21 to i32
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 8, i32 noundef 2, i32 noundef %27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %48

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = shl nuw nsw i8 %21, 1
  %33 = zext i8 %32 to i32
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 8, i32 noundef 4, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %48

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = shl nuw nsw i8 %21, 2
  %39 = zext i8 %38 to i32
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 8, i32 noundef 8, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %48

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = zext i8 %21 to i32
  %45 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 256, i32 noundef 2, i32 noundef %44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %48

46:                                               ; preds = %20
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.aspeed_kcs_irq_mask_update, i32 noundef %23) #9
  br label %48

48:                                               ; preds = %46, %41, %35, %29, %24, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_kcs_enable_channel(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %28 [
    i32 1, label %5
    i32 2, label %10
    i32 3, label %15
    i32 4, label %23
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = select i1 %1, i32 32, i32 0
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 32, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %30

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = select i1 %1, i32 64, i32 0
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 64, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %30

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = select i1 %1, i32 128, i32 0
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 128, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = load ptr, ptr %16, align 4
  %21 = select i1 %1, i32 4, i32 0
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 16, i32 noundef 4, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %30

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = zext i1 %1 to i32
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 256, i32 noundef 1, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %30

28:                                               ; preds = %2
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.aspeed_kcs_enable_channel, i32 noundef %4) #9
  br label %30

30:                                               ; preds = %28, %23, %15, %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcs_bmc_add_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @aspeed_kcs_inb(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef %1, ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !16

8:                                                ; preds = %2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %6) #8
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, ptr %3, align 4
  %11 = trunc i32 %10 to i8
  %12 = select i1 %7, i8 %11, i8 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_kcs_outb(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = zext i8 %2 to i32
  %7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %1, i32 noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !16

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 159, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %7) #8
  br label %10

10:                                               ; preds = %9, %3
  switch i32 %1, label %36 [
    i32 48, label %11
    i32 52, label %11
    i32 56, label %11
    i32 280, label %11
  ]

11:                                               ; preds = %10, %10, %10, %10
  %12 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %36 [
    i32 1, label %18
    i32 2, label %27
    i32 3, label %30
    i32 4, label %33
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %36 [
    i32 12, label %21
    i32 1, label %24
  ]

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 112, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %36

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 112, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %36

27:                                               ; preds = %15
  %28 = load ptr, ptr %4, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 128, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %36

30:                                               ; preds = %15
  %31 = load ptr, ptr %4, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 128, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %36

33:                                               ; preds = %15
  %34 = load ptr, ptr %4, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 260, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %36

36:                                               ; preds = %33, %30, %27, %24, %21, %18, %15, %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_kcs_updateb(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %2 to i32
  %8 = zext i8 %3 to i32
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %1, i32 noundef %7, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !16

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %9) #8
  br label %12

12:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcs_bmc_handle_event(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @kcs_bmc_handle_event(ptr noundef %1) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149248728}
!11 = !{i64 2149244552}
!12 = !{i64 2149244627, i64 2149244654, i64 2149244701, i64 2149244723, i64 2149244751, i64 2149244771}
!13 = !{i64 292843}
!14 = !{i64 2149272872}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 2000, i32 1}
