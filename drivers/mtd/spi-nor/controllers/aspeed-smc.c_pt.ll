; ModuleID = '/llk/IR/drivers/mtd/spi-nor/controllers/aspeed-smc.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/controllers/aspeed-smc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.aspeed_smc_info = type { i32, i8, i8, i8, i8, ptr }
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
%struct.lock_class_key = type {}
%struct.spi_nor_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aspeed_smc_chip = type { i32, ptr, ptr, ptr, i32, [3 x i32], i32, %struct.spi_nor }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.70, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.64 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.anon.70 = type { ptr, ptr }
%struct.aspeed_smc_controller = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, [0 x ptr] }
%struct.spi_nor_hwcaps = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@aspeed_smc_matches = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-fmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fmc_2400_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spi_2400_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-fmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fmc_2500_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spi_2500_info }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description228 = internal constant [51 x i8] c"description=ASPEED Static Memory Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [39 x i8] c"author=Cedric Le Goater <clg@kaod.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@fmc_2400_info = internal constant %struct.aspeed_smc_info { i32 67108864, i8 5, i8 1, i8 16, i8 16, ptr @aspeed_smc_chip_set_4b }, align 4
@spi_2400_info = internal constant %struct.aspeed_smc_info { i32 67108864, i8 1, i8 0, i8 0, i8 4, ptr @aspeed_smc_chip_set_4b_spi_2400 }, align 4
@fmc_2500_info = internal constant %struct.aspeed_smc_info { i32 268435456, i8 3, i8 1, i8 16, i8 16, ptr @aspeed_smc_chip_set_4b }, align 4
@spi_2500_info = internal constant %struct.aspeed_smc_info { i32 134217728, i8 2, i8 0, i8 16, i8 16, ptr @aspeed_smc_chip_set_4b }, align 4
@aspeed_smc_driver = internal global %struct.platform_driver { ptr @aspeed_smc_probe, ptr @aspeed_smc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_smc_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"aspeed-smc\00", align 1
@aspeed_smc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&controller->mutex\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Aspeed SMC probe failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"jedec,spi-nor\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Couldn't not read chip select.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Chip select %d out of range.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Chip select %d already in use by %s\0A\00", align 1
@aspeed_smc_controller_ops = internal constant %struct.spi_nor_controller_ops { ptr @aspeed_smc_prep, ptr @aspeed_smc_unprep, ptr @aspeed_smc_read_reg, ptr @aspeed_smc_write_reg, ptr @aspeed_smc_read_user, ptr @aspeed_smc_write_user, ptr null }, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@aspeed_smc_send_cmd_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"drivers/mtd/spi-nor/controllers/aspeed-smc.c\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Unexpected address width %u, defaulting to 3\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"CE%d window closed\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"unsupported SPI read mode\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"CE%d window resized to %dMB (AST2500 HW quirk)\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"CE%d window too small for chip %dMB\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"CE%d window resized to %dMB\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"CE%d window invalid\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"CE%d window [ 0x%.8x - 0x%.8x ] %dMB\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_license230], section "llvm.metadata"

@__mod_of__aspeed_smc_matches_device_table = dso_local alias [5 x %struct.of_device_id], ptr @aspeed_smc_matches

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_smc_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_smc_driver) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_smc_chip_set_4b(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %8 = load i32, ptr %0, align 8
  %9 = shl nuw i32 1, %8
  %10 = or i32 %9, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @aspeed_smc_chip_set_4b_spi_2400(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 8192
  store i32 %4, ptr %2, align 4
  %5 = getelementptr %struct.aspeed_smc_chip, ptr %0, i32 0, i32 5, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 8192
  store i32 %7, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_smc_probe(ptr noundef %0) #1 {
  %2 = alloca %struct.spi_nor_hwcaps, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_match_device(ptr noundef nonnull @aspeed_smc_matches, ptr noundef %4) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %341, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %341, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.aspeed_smc_info, ptr %11, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 2
  %18 = add nuw nsw i32 %17, 40
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %18, i32 noundef 3520) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %341, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %19, i32 0, i32 2
  store ptr %11, ptr %22, align 4
  store ptr %4, ptr %19, align 4
  %23 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %19, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef nonnull @aspeed_smc_probe.__key) #7
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %19, ptr %24, align 8
  %25 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %26 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %25) #7
  %27 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %19, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = ptrtoint ptr %26 to i32
  br label %341

31:                                               ; preds = %21
  %32 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #7
  %33 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %32) #7
  %34 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %19, i32 0, i32 4
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = ptrtoint ptr %33 to i32
  br label %341

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %32, align 4
  %42 = add i32 %40, 1
  %43 = sub i32 %42, %41
  %44 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %19, i32 0, i32 5
  store i32 %43, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 65539, ptr %2, align 4
  %45 = load ptr, ptr %22, align 4
  %46 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !12
  %47 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef null) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %312, label %49

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.aspeed_smc_info, ptr %45, i32 0, i32 1
  %51 = getelementptr inbounds %struct.aspeed_smc_info, ptr %45, i32 0, i32 4
  br label %52

52:                                               ; preds = %306, %49
  %53 = phi i1 [ true, %306 ], [ false, %49 ]
  %54 = phi i32 [ 0, %306 ], [ -19, %49 ]
  %55 = phi ptr [ %309, %306 ], [ %47, %49 ]
  br label %56

56:                                               ; preds = %303, %52
  %57 = phi ptr [ %304, %303 ], [ %55, %52 ]
  %58 = call i32 @of_device_is_compatible(ptr noundef nonnull %57, ptr noundef nonnull @.str.3) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %303, label %60

60:                                               ; preds = %56
  %61 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %57, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.5) #8
  br label %312

64:                                               ; preds = %60
  %65 = load i32, ptr %3, align 4
  %66 = load i8, ptr %50, align 4
  %67 = zext i8 %66 to i32
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.6, i32 noundef %65) #8
  br label %312

70:                                               ; preds = %64
  %71 = getelementptr %struct.aspeed_smc_controller, ptr %19, i32 0, i32 6, i32 %65
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %72, i32 0, i32 7, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load ptr, ptr %76, align 4
  br label %82

82:                                               ; preds = %80, %74
  %83 = phi ptr [ %81, %80 ], [ %78, %74 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.7, i32 noundef %65, ptr noundef %83) #8
  br label %312

84:                                               ; preds = %70
  %85 = load ptr, ptr %19, align 4
  %86 = call noalias ptr @devm_kmalloc(ptr noundef %85, i32 noundef 952, i32 noundef 3520) #7
  %87 = icmp eq ptr %86, null
  br i1 %87, label %312, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 1
  store ptr %19, ptr %89, align 4
  %90 = load ptr, ptr %27, align 4
  %91 = load i8, ptr %51, align 1
  %92 = zext i8 %91 to i32
  %93 = getelementptr i8, ptr %90, i32 %92
  %94 = load i32, ptr %3, align 4
  %95 = shl i32 %94, 2
  %96 = getelementptr i8, ptr %93, i32 %95
  %97 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 2
  store ptr %96, ptr %97, align 8
  store i32 %94, ptr %86, align 8
  %98 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7
  %99 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 2
  store ptr %46, ptr %99, align 4
  %100 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 23
  store ptr %86, ptr %100, align 8
  %101 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 0, i32 56, i32 25
  store ptr %57, ptr %101, align 8
  %102 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 0, i32 13
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %88
  %106 = call i32 @of_property_read_string(ptr noundef nonnull %57, ptr noundef nonnull @.str.8, ptr noundef %102) #7
  %107 = load ptr, ptr %89, align 4
  br label %108

108:                                              ; preds = %105, %88
  %109 = phi ptr [ %19, %88 ], [ %107, %105 ]
  %110 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 20
  store ptr @aspeed_smc_controller_ops, ptr %110, align 8
  %111 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %109, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %109, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %116 = load ptr, ptr %89, align 4
  %117 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.aspeed_smc_info, ptr %118, i32 0, i32 3
  %120 = load i8, ptr %119, align 2
  %121 = zext i8 %120 to i32
  %122 = load i32, ptr %86, align 8
  %123 = add i32 %122, %121
  %124 = shl nuw i32 1, %123
  %125 = or i32 %124, %115
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %126 = load ptr, ptr %113, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %125) #7, !srcloc !11
  %127 = getelementptr inbounds %struct.aspeed_smc_info, ptr %112, i32 0, i32 2
  %128 = load i8, ptr %127, align 1, !range !15
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %108
  %131 = load ptr, ptr %89, align 4
  %132 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 6
  store i32 2, ptr %132, align 8
  %133 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %131, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %136 = load i32, ptr %86, align 8
  %137 = shl i32 %136, 1
  %138 = shl i32 3, %137
  %139 = xor i32 %138, -1
  %140 = and i32 %135, %139
  %141 = load i32, ptr %132, align 8
  %142 = shl i32 %141, %137
  %143 = or i32 %140, %142
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  call void @arm_heavy_mb() #7
  %144 = load ptr, ptr %133, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %143) #7, !srcloc !11
  br label %145

145:                                              ; preds = %130, %108
  %146 = load ptr, ptr %89, align 4
  %147 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.aspeed_smc_info, ptr %148, i32 0, i32 1
  %150 = load i8, ptr %149, align 4
  %151 = icmp ugt i8 %150, 1
  br i1 %151, label %152, label %170

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %146, i32 0, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %154, i32 48
  %156 = load i32, ptr %86, align 8
  %157 = shl i32 %156, 2
  %158 = getelementptr i8, ptr %155, i32 %157
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %160 = shl i32 %159, 7
  %161 = and i32 %160, 2139095040
  %162 = lshr i32 %159, 1
  %163 = and i32 %162, 2139095040
  %164 = icmp ult i32 %161, %163
  br i1 %164, label %167, label %165

165:                                              ; preds = %152
  %166 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 3
  store ptr null, ptr %166, align 4
  br label %188

167:                                              ; preds = %152
  %168 = load i32, ptr %32, align 4
  %169 = sub i32 %161, %168
  br label %170

170:                                              ; preds = %167, %145
  %171 = phi i32 [ %169, %167 ], [ 0, %145 ]
  %172 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %146, i32 0, i32 4
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr i8, ptr %173, i32 %171
  %175 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 3
  store ptr %174, ptr %175, align 4
  %176 = icmp eq ptr %174, null
  br i1 %176, label %188, label %177

177:                                              ; preds = %170
  %178 = load ptr, ptr %97, align 8
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %180 = and i32 %179, -1895813328
  %181 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 5
  store i32 %180, ptr %181, align 4
  %182 = and i32 %179, 3
  %183 = icmp eq i32 %182, 0
  %184 = getelementptr %struct.aspeed_smc_chip, ptr %86, i32 0, i32 5, i32 1
  %185 = select i1 %183, i32 %179, i32 %180
  store i32 %185, ptr %184, align 4
  %186 = call i32 @spi_nor_scan(ptr noundef %98, ptr noundef null, ptr noundef nonnull %2) #7
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %312

188:                                              ; preds = %170, %165
  %189 = load ptr, ptr %99, align 4
  %190 = load i32, ptr %86, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %189, ptr noundef nonnull @.str.11, i32 noundef %190) #8
  br label %312

191:                                              ; preds = %177
  %192 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 8
  %193 = load i8, ptr %192, align 4
  %194 = icmp eq i8 %193, 4
  br i1 %194, label %195, label %203

195:                                              ; preds = %191
  %196 = load ptr, ptr %89, align 4
  %197 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %196, i32 0, i32 2
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.aspeed_smc_info, ptr %198, i32 0, i32 5
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %195
  call void %200(ptr noundef nonnull %86) #7
  br label %203

203:                                              ; preds = %202, %195, %191
  %204 = load ptr, ptr %89, align 4
  %205 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 0, i32 2
  %206 = load i64, ptr %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %204, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = load i32, ptr %209, align 4
  %211 = call i32 @llvm.umin.i32(i32 %210, i32 %207) #7
  %212 = icmp eq ptr %209, @spi_2400_info
  br i1 %212, label %261, label %213

213:                                              ; preds = %203
  %214 = load i32, ptr %86, align 8
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = icmp eq ptr %209, @spi_2500_info
  %218 = icmp eq i32 %211, 134217728
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = load ptr, ptr %99, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %221, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 120) #8
  br label %222

222:                                              ; preds = %220, %216, %213
  %223 = phi i32 [ 125829120, %220 ], [ %211, %216 ], [ %211, %213 ]
  %224 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %204, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr i8, ptr %225, i32 48
  %227 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %226) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %228 = shl i32 %227, 7
  %229 = and i32 %228, 2139095040
  %230 = load i32, ptr %86, align 8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %222
  %233 = load ptr, ptr %224, align 4
  %234 = getelementptr i8, ptr %233, i32 48
  %235 = shl i32 %230, 2
  %236 = add i32 %235, -4
  %237 = getelementptr i8, ptr %234, i32 %236
  %238 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %239 = lshr i32 %238, 1
  %240 = and i32 %239, 2139095040
  %241 = load i32, ptr %86, align 8
  br label %242

242:                                              ; preds = %232, %222
  %243 = phi i32 [ %241, %232 ], [ 0, %222 ]
  %244 = phi i32 [ %240, %232 ], [ %229, %222 ]
  %245 = call fastcc i32 @chip_set_segment(ptr noundef nonnull %86, i32 noundef %243, i32 noundef %244, i32 noundef %223) #7
  %246 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %204, i32 0, i32 4
  %247 = load ptr, ptr %246, align 4
  %248 = sub nsw i32 %244, %229
  %249 = getelementptr i8, ptr %247, i32 %248
  store ptr %249, ptr %175, align 4
  %250 = load i32, ptr %86, align 8
  %251 = load ptr, ptr %208, align 4
  %252 = getelementptr inbounds %struct.aspeed_smc_info, ptr %251, i32 0, i32 1
  %253 = load i8, ptr %252, align 4
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %254, -1
  %256 = icmp slt i32 %250, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %242
  %258 = add nsw i32 %250, 1
  %259 = add i32 %245, %244
  %260 = call fastcc i32 @chip_set_segment(ptr noundef nonnull %86, i32 noundef %258, i32 noundef %259, i32 noundef 0) #7
  br label %261

261:                                              ; preds = %257, %242, %203
  %262 = phi i32 [ %211, %203 ], [ %245, %257 ], [ %245, %242 ]
  %263 = zext i32 %262 to i64
  %264 = load i64, ptr %205, align 8
  %265 = icmp ugt i64 %264, %263
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load ptr, ptr %99, align 4
  %268 = load i32, ptr %86, align 8
  %269 = trunc i64 %264 to i32
  %270 = lshr i32 %269, 20
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %267, ptr noundef nonnull @.str.14, i32 noundef %268, i32 noundef %270) #8
  br label %271

271:                                              ; preds = %266, %261
  %272 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 4
  store i32 %262, ptr %272, align 8
  %273 = load i32, ptr %181, align 4
  %274 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 12
  %275 = load i8, ptr %274, align 8
  %276 = zext i8 %275 to i32
  %277 = shl nuw nsw i32 %276, 16
  %278 = or i32 %273, %277
  %279 = or i32 %278, 2
  %280 = getelementptr %struct.aspeed_smc_chip, ptr %86, i32 0, i32 5, i32 2
  store i32 %279, ptr %280, align 4
  %281 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 13
  %282 = load i32, ptr %281, align 4
  %283 = icmp eq i32 %282, 65793
  br i1 %283, label %286, label %284

284:                                              ; preds = %271
  %285 = load ptr, ptr %99, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %285, ptr noundef nonnull @.str.12) #8
  br label %312

286:                                              ; preds = %271
  %287 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %86, i32 0, i32 7, i32 11
  %288 = load i8, ptr %287, align 1
  %289 = icmp ne i8 %288, 0
  %290 = zext i1 %289 to i32
  %291 = lshr i8 %288, 3
  %292 = zext i8 %291 to i32
  %293 = shl nuw nsw i32 %292, 12
  %294 = and i32 %293, 16384
  %295 = shl nuw nsw i32 %292, 6
  %296 = and i32 %295, 192
  %297 = load i32, ptr %184, align 4
  %298 = or i32 %297, %290
  %299 = or i32 %298, %296
  %300 = or i32 %299, %294
  store i32 %300, ptr %184, align 4
  %301 = call i32 @mtd_device_parse_register(ptr noundef %98, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %312

303:                                              ; preds = %56
  %304 = call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef nonnull %57) #7
  %305 = icmp eq ptr %304, null
  br i1 %305, label %311, label %56

306:                                              ; preds = %286
  %307 = load i32, ptr %3, align 4
  %308 = getelementptr %struct.aspeed_smc_controller, ptr %19, i32 0, i32 6, i32 %307
  store ptr %86, ptr %308, align 4
  %309 = call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef nonnull %57) #7
  %310 = icmp eq ptr %309, null
  br i1 %310, label %337, label %52

311:                                              ; preds = %303
  br i1 %53, label %337, label %312

312:                                              ; preds = %311, %286, %284, %188, %177, %84, %82, %69, %63, %38
  %313 = phi ptr [ null, %311 ], [ %57, %284 ], [ %57, %188 ], [ %57, %82 ], [ %57, %69 ], [ %57, %63 ], [ null, %38 ], [ %57, %84 ], [ %57, %177 ], [ %57, %286 ]
  %314 = phi i32 [ %54, %311 ], [ -22, %284 ], [ -22, %188 ], [ -16, %82 ], [ -34, %69 ], [ %61, %63 ], [ -19, %38 ], [ %301, %286 ], [ %186, %177 ], [ -12, %84 ]
  call void @of_node_put(ptr noundef %313) #7
  %315 = load ptr, ptr %22, align 4
  %316 = getelementptr inbounds %struct.aspeed_smc_info, ptr %315, i32 0, i32 1
  %317 = load i8, ptr %316, align 4
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %340

320:                                              ; preds = %330, %312
  %321 = phi ptr [ %331, %330 ], [ %315, %312 ]
  %322 = phi i32 [ %332, %330 ], [ 0, %312 ]
  %323 = getelementptr %struct.aspeed_smc_controller, ptr %19, i32 0, i32 6, i32 %322
  %324 = load ptr, ptr %323, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %330, label %326

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %324, i32 0, i32 7
  %328 = call i32 @mtd_device_unregister(ptr noundef %327) #7
  %329 = load ptr, ptr %22, align 4
  br label %330

330:                                              ; preds = %326, %320
  %331 = phi ptr [ %321, %320 ], [ %329, %326 ]
  %332 = add nuw nsw i32 %322, 1
  %333 = getelementptr inbounds %struct.aspeed_smc_info, ptr %331, i32 0, i32 1
  %334 = load i8, ptr %333, align 4
  %335 = zext i8 %334 to i32
  %336 = icmp ult i32 %332, %335
  br i1 %336, label %320, label %338

337:                                              ; preds = %311, %306
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %341

338:                                              ; preds = %330
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %339 = icmp eq i32 %314, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %338, %319
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %314) #8
  br label %341

341:                                              ; preds = %340, %338, %337, %36, %29, %13, %9, %1
  %342 = phi i32 [ %30, %29 ], [ %37, %36 ], [ -19, %9 ], [ -19, %1 ], [ -12, %13 ], [ %314, %340 ], [ 0, %338 ], [ 0, %337 ]
  ret i32 %342
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_smc_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.aspeed_smc_info, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %19, %1
  %10 = phi ptr [ %20, %19 ], [ %5, %1 ]
  %11 = phi i32 [ %21, %19 ], [ 0, %1 ]
  %12 = getelementptr %struct.aspeed_smc_controller, ptr %3, i32 0, i32 6, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %13, i32 0, i32 7
  %17 = tail call i32 @mtd_device_unregister(ptr noundef %16) #7
  %18 = load ptr, ptr %4, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %10, %9 ], [ %18, %15 ]
  %21 = add nuw nsw i32 %11, 1
  %22 = getelementptr inbounds %struct.aspeed_smc_info, ptr %20, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %9, label %26

26:                                               ; preds = %19, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_smc_prep(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_smc_unprep(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %5, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_smc_read_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i8, align 1
  store i8 %1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 8
  tail call fastcc void @aspeed_smc_start_user(ptr noundef %0)
  %8 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %5 to i32
  %12 = or i32 %10, %11
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  call void @__raw_writesl(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 0) #7
  br label %16

16:                                               ; preds = %15, %4
  call void @__raw_writesb(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 1) #7
  %17 = load ptr, ptr %8, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %2 to i32
  %20 = or i32 %18, %19
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = lshr i32 %3, 2
  call void @__raw_readsl(ptr noundef %17, ptr noundef %2, i32 noundef %24) #7
  %25 = and i32 %3, -4
  %26 = and i32 %3, 3
  br label %27

27:                                               ; preds = %23, %16
  %28 = phi i32 [ %26, %23 ], [ %3, %16 ]
  %29 = phi i32 [ %25, %23 ], [ 0, %16 ]
  %30 = getelementptr i8, ptr %2, i32 %29
  call void @__raw_readsb(ptr noundef %17, ptr noundef %30, i32 noundef %28) #7
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr %struct.aspeed_smc_chip, ptr %31, i32 0, i32 5, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 7
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  call void @arm_heavy_mb() #7
  %35 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %31, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  call void @arm_heavy_mb() #7
  %37 = load ptr, ptr %35, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #7, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_smc_write_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i8, align 1
  store i8 %1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 8
  tail call fastcc void @aspeed_smc_start_user(ptr noundef %0)
  %8 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %5 to i32
  %12 = or i32 %10, %11
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  call void @__raw_writesl(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 0) #7
  br label %16

16:                                               ; preds = %15, %4
  call void @__raw_writesb(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 1) #7
  %17 = load ptr, ptr %8, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %2 to i32
  %20 = or i32 %18, %19
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = lshr i32 %3, 2
  call void @__raw_writesl(ptr noundef %17, ptr noundef %2, i32 noundef %24) #7
  %25 = and i32 %3, -4
  %26 = and i32 %3, 3
  br label %27

27:                                               ; preds = %23, %16
  %28 = phi i32 [ %26, %23 ], [ %3, %16 ]
  %29 = phi i32 [ %25, %23 ], [ 0, %16 ]
  %30 = getelementptr i8, ptr %2, i32 %29
  call void @__raw_writesb(ptr noundef %17, ptr noundef %30, i32 noundef %28) #7
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr %struct.aspeed_smc_chip, ptr %31, i32 0, i32 5, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 7
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  call void @arm_heavy_mb() #7
  %35 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %31, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  call void @arm_heavy_mb() #7
  %37 = load ptr, ptr %35, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #7, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_smc_read_user(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef returned %2, ptr noundef %3) #1 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 -1, ptr %5, align 1
  tail call fastcc void @aspeed_smc_start_user(ptr noundef %0)
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 2
  %10 = trunc i64 %1 to i32
  tail call fastcc void @aspeed_smc_send_cmd_addr(ptr noundef %0, i8 noundef zeroext %9, i32 noundef %10)
  %11 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %7, i32 0, i32 7, i32 11
  %12 = load i8, ptr %11, align 1
  %13 = icmp ult i8 %12, 8
  br i1 %13, label %31, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %5 to i32
  br label %17

17:                                               ; preds = %25, %14
  %18 = phi i32 [ 0, %14 ], [ %26, %25 ]
  %19 = load ptr, ptr %15, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = or i32 %20, %16
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  call void @__raw_writesl(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 0) #7
  br label %25

25:                                               ; preds = %24, %17
  call void @__raw_writesb(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 1) #7
  %26 = add nuw nsw i32 %18, 1
  %27 = load i8, ptr %11, align 1
  %28 = lshr i8 %27, 3
  %29 = zext i8 %28 to i32
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %17, label %31

31:                                               ; preds = %25, %4
  %32 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %7, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = ptrtoint ptr %3 to i32
  %36 = or i32 %34, %35
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = lshr i32 %2, 2
  call void @__raw_readsl(ptr noundef %33, ptr noundef %3, i32 noundef %40) #7
  %41 = and i32 %2, -4
  %42 = and i32 %2, 3
  br label %43

43:                                               ; preds = %39, %31
  %44 = phi i32 [ %42, %39 ], [ %2, %31 ]
  %45 = phi i32 [ %41, %39 ], [ 0, %31 ]
  %46 = getelementptr i8, ptr %3, i32 %45
  call void @__raw_readsb(ptr noundef %33, ptr noundef %46, i32 noundef %44) #7
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr %struct.aspeed_smc_chip, ptr %47, i32 0, i32 5, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 7
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  call void @arm_heavy_mb() #7
  %51 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %47, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #7, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  call void @arm_heavy_mb() #7
  %53 = load ptr, ptr %51, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %49) #7, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_smc_write_user(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef returned %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 8
  tail call fastcc void @aspeed_smc_start_user(ptr noundef %0)
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 12
  %8 = load i8, ptr %7, align 8
  %9 = trunc i64 %1 to i32
  tail call fastcc void @aspeed_smc_send_cmd_addr(ptr noundef %0, i8 noundef zeroext %8, i32 noundef %9)
  %10 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %6, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %3 to i32
  %14 = or i32 %12, %13
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = lshr i32 %2, 2
  tail call void @__raw_writesl(ptr noundef %11, ptr noundef %3, i32 noundef %18) #7
  %19 = and i32 %2, -4
  %20 = and i32 %2, 3
  br label %21

21:                                               ; preds = %17, %4
  %22 = phi i32 [ %20, %17 ], [ %2, %4 ]
  %23 = phi i32 [ %19, %17 ], [ 0, %4 ]
  %24 = getelementptr i8, ptr %3, i32 %23
  tail call void @__raw_writesb(ptr noundef %11, ptr noundef %24, i32 noundef %22) #7
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr %struct.aspeed_smc_chip, ptr %25, i32 0, i32 5, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %29 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %25, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %31 = load ptr, ptr %29, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #7, !srcloc !11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_smc_start_user(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.aspeed_smc_info, ptr %13, i32 0, i32 3
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = load i32, ptr %3, align 8
  %18 = add i32 %17, %16
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = or i32 %19, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #7, !srcloc !11
  br label %25

25:                                               ; preds = %22, %1
  %26 = or i32 %5, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %27 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %3, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !11
  %29 = and i32 %26, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %27, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #7, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_smc_send_cmd_addr(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %1, ptr %4, align 1
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %10 [
    i8 3, label %14
    i8 4, label %30
  ]

10:                                               ; preds = %3
  %11 = load i1, ptr @aspeed_smc_send_cmd_addr.__already_done, align 1
  br i1 %11, label %14, label %12, !prof !28

12:                                               ; preds = %10
  store i1 true, ptr @aspeed_smc_send_cmd_addr.__already_done, align 1
  %13 = zext i8 %9 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %13) #7
  br label %14

14:                                               ; preds = %12, %10, %3
  %15 = and i32 %2, 16777215
  %16 = zext i8 %1 to i32
  %17 = shl nuw i32 %16, 24
  %18 = or i32 %17, %15
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  store i32 %19, ptr %5, align 4
  %20 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %7, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  call void @__raw_writesl(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #7
  br label %26

26:                                               ; preds = %25, %14
  %27 = phi i32 [ 0, %25 ], [ 4, %14 ]
  %28 = phi i32 [ 4, %25 ], [ 0, %14 ]
  %29 = getelementptr i8, ptr %5, i32 %28
  call void @__raw_writesb(ptr noundef %21, ptr noundef %29, i32 noundef %27) #7
  br label %50

30:                                               ; preds = %3
  %31 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %31, ptr %5, align 4
  %32 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %7, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = ptrtoint ptr %4 to i32
  %36 = or i32 %34, %35
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  call void @__raw_writesl(ptr noundef %33, ptr noundef nonnull %4, i32 noundef 0) #7
  br label %40

40:                                               ; preds = %39, %30
  call void @__raw_writesb(ptr noundef %33, ptr noundef nonnull %4, i32 noundef 1) #7
  %41 = load ptr, ptr %32, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = and i32 %42, 3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  call void @__raw_writesl(ptr noundef %41, ptr noundef nonnull %5, i32 noundef 1) #7
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i32 [ 0, %45 ], [ 4, %40 ]
  %48 = phi i32 [ 4, %45 ], [ 0, %40 ]
  %49 = getelementptr i8, ptr %5, i32 %48
  call void @__raw_writesb(ptr noundef %41, ptr noundef %49, i32 noundef %47) #7
  br label %50

50:                                               ; preds = %46, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @chip_set_segment(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %11 = shl i32 %10, 7
  %12 = and i32 %11, 2139095040
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 48
  %15 = shl i32 %1, 2
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %18 = icmp eq i32 %3, 0
  %19 = lshr i32 %17, 1
  %20 = and i32 %19, 2139095040
  %21 = sub i32 %20, %2
  %22 = select i1 %18, i32 %21, i32 %3
  %23 = add i32 %22, %2
  %24 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %6, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %12
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = sub i32 %26, %2
  %30 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %0, i32 0, i32 7, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = lshr i32 %29, 20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %32) #8
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i32 [ %26, %28 ], [ %23, %4 ]
  %35 = phi i32 [ %29, %28 ], [ %22, %4 ]
  %36 = lshr i32 %2, 7
  %37 = and i32 %36, 16711680
  %38 = shl i32 %34, 1
  %39 = and i32 %38, -16777216
  %40 = or i32 %39, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %40) #7, !srcloc !11
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %0, i32 0, i32 7, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.16, i32 noundef %1) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %17) #7, !srcloc !11
  %46 = shl i32 %17, 7
  %47 = and i32 %46, 2139095040
  %48 = sub nsw i32 %20, %47
  br label %49

49:                                               ; preds = %43, %33
  %50 = phi i32 [ %20, %43 ], [ %34, %33 ]
  %51 = phi i32 [ %48, %43 ], [ %35, %33 ]
  %52 = phi i32 [ %47, %43 ], [ %2, %33 ]
  %53 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %0, i32 0, i32 7, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = lshr i32 %51, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.17, i32 noundef %1, i32 noundef %52, i32 noundef %50, i32 noundef %55) #8
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 3629708}
!9 = !{i64 2153276011}
!10 = !{i64 2153276205}
!11 = !{i64 3629290}
!12 = !{!"auto-init"}
!13 = !{i64 2153274649}
!14 = !{i64 2153274843}
!15 = !{i8 0, i8 2}
!16 = !{i64 2153275330}
!17 = !{i64 2153275524}
!18 = !{i64 2153268333}
!19 = !{i64 2153277362}
!20 = !{i64 2153268923}
!21 = !{i64 2153273555}
!22 = !{i64 2153265650}
!23 = !{i64 2153265950}
!24 = !{i64 2153263543}
!25 = !{i64 2153264492}
!26 = !{i64 2153264887}
!27 = !{i64 2153265267}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2153269337}
!30 = !{i64 2153270246}
!31 = !{i64 2153270683}
!32 = !{i64 2153271395}
