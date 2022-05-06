; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-aspeed.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-aspeed.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.aspeed_i2c_bus = type { %struct.i2c_adapter, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr, i32, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i8, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@aspeed_i2c_bus_of_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-i2c-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_i2c_24xx_get_clk_reg_val }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-i2c-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_i2c_25xx_get_clk_reg_val }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-i2c-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_i2c_25xx_get_clk_reg_val }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [51 x i8] c"author=Brendan Higgins <brendanhiggins@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [34 x i8] c"description=Aspeed I2C Bus Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [94 x i8] c"clamping clock divider: divider requested, %u, is greater than largest possible divider, %u.\0A\00", align 1
@aspeed_i2c_bus_driver = internal global %struct.platform_driver { ptr @aspeed_i2c_probe_bus, ptr @aspeed_i2c_remove_bus, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_i2c_bus_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [15 x i8] c"aspeed-i2c-bus\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"missing or invalid reset controller device tree entry\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not read bus-frequency property\0A\00", align 1
@aspeed_i2c_algo = internal constant %struct.i2c_algorithm { ptr @aspeed_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @aspeed_i2c_functionality, ptr @aspeed_i2c_reg_slave, ptr @aspeed_i2c_unreg_slave }, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"i2c bus %d registered, irq %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"multi-master\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"irq handled != irq. expected 0x%08x, but was 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"bus in unknown state. irq_status: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"slave failed to ACK TX\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"master failed to RX\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"master failed to STOP. irq_status:0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"drivers/i2c/busses/i2c-aspeed.c\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"unknown master state\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Unexpected ACK on read request.\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Expected ACK after processed read.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"unknown slave_state: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__aspeed_i2c_bus_of_table_device_table = dso_local alias [4 x %struct.of_device_id], ptr @aspeed_i2c_bus_of_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_i2c_bus_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_i2c_bus_driver) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_24xx_get_clk_reg_val(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp ugt i32 %1, 16
  %4 = add i32 %1, -1
  br i1 %3, label %5, label %11

5:                                                ; preds = %2
  %6 = lshr i32 %4, 4
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #8, !range !8
  %8 = sub nuw nsw i32 32, %7
  %9 = icmp ugt i32 %4, 524287
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef 524288) #9
  br label %30

11:                                               ; preds = %5, %2
  %12 = phi i32 [ %8, %5 ], [ 0, %2 ]
  %13 = shl nuw nsw i32 1, %12
  %14 = add i32 %13, %4
  %15 = lshr i32 %14, %12
  %16 = lshr i32 %15, 1
  %17 = icmp eq i32 %15, %16
  %18 = xor i32 %16, -1
  %19 = add i32 %15, %18
  %20 = icmp ult i32 %15, 2
  %21 = shl i32 %19, 16
  %22 = and i32 %21, 983040
  %23 = select i1 %17, i32 0, i32 %22
  %24 = shl i32 %16, 12
  %25 = add i32 %24, 61440
  %26 = and i32 %25, 61440
  %27 = select i1 %20, i32 0, i32 %26
  %28 = or i32 %23, %12
  %29 = or i32 %28, %27
  br label %30

30:                                               ; preds = %11, %10
  %31 = phi i32 [ %29, %11 ], [ 487439, %10 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_25xx_get_clk_reg_val(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp ugt i32 %1, 32
  %4 = add i32 %1, -1
  br i1 %3, label %5, label %11

5:                                                ; preds = %2
  %6 = lshr i32 %4, 5
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #8, !range !8
  %8 = sub nuw nsw i32 32, %7
  %9 = icmp ugt i32 %4, 1048575
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef 1048576) #9
  br label %30

11:                                               ; preds = %5, %2
  %12 = phi i32 [ %8, %5 ], [ 0, %2 ]
  %13 = shl nuw nsw i32 1, %12
  %14 = add i32 %13, %4
  %15 = lshr i32 %14, %12
  %16 = lshr i32 %15, 1
  %17 = icmp eq i32 %15, %16
  %18 = xor i32 %16, -1
  %19 = add i32 %15, %18
  %20 = icmp ult i32 %15, 2
  %21 = shl i32 %19, 16
  %22 = and i32 %21, 983040
  %23 = select i1 %17, i32 0, i32 %22
  %24 = shl i32 %16, 12
  %25 = add i32 %24, 61440
  %26 = and i32 %25, 61440
  %27 = select i1 %20, i32 0, i32 %26
  %28 = or i32 %23, %12
  %29 = or i32 %28, %27
  br label %30

30:                                               ; preds = %11, %10
  %31 = phi i32 [ %29, %11 ], [ 1044495, %10 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_probe_bus(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 744, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %80

12:                                               ; preds = %5
  %13 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #8
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  br label %80

17:                                               ; preds = %12
  %18 = tail call i32 @clk_get_rate(ptr noundef %13) #8
  %19 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 7
  store i32 %18, ptr %19, align 4
  tail call void @devm_clk_put(ptr noundef %2, ptr noundef %13) #8
  %20 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %21 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 3
  store ptr %20, ptr %21, align 8
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #9
  %24 = load ptr, ptr %21, align 8
  %25 = ptrtoint ptr %24 to i32
  br label %80

26:                                               ; preds = %17
  %27 = tail call i32 @reset_control_deassert(ptr noundef %20) #8
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 8
  %31 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef %30, i32 noundef 1, i32 noundef 0) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #9
  store i32 100000, ptr %30, align 8
  br label %34

34:                                               ; preds = %33, %26
  %35 = load ptr, ptr %28, align 8
  %36 = tail call ptr @of_match_node(ptr noundef nonnull @aspeed_i2c_bus_of_table, ptr noundef %35) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.of_device_id, ptr %36, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi ptr [ %40, %38 ], [ @aspeed_i2c_24xx_get_clk_reg_val, %34 ]
  %43 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 6
  store ptr %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 4
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 5
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %46, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #8
  store ptr @__this_module, ptr %3, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 8
  store i32 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  store ptr @aspeed_i2c_algo, ptr %48, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 1
  store ptr %2, ptr %49, align 4
  %50 = load ptr, ptr %28, align 8
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 25
  store ptr %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 12
  %53 = load ptr, ptr %0, align 8
  %54 = tail call i32 @strlcpy(ptr noundef %52, ptr noundef %53, i32 noundef 48) #8
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  store ptr %3, ptr %55, align 8
  %56 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 1
  store ptr %2, ptr %56, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 -1) #8, !srcloc !10
  tail call fastcc void @aspeed_i2c_init(ptr noundef nonnull %3, ptr noundef %0)
  %61 = load ptr, ptr %28, align 8
  %62 = tail call i32 @irq_of_parse_and_map(ptr noundef %61, i32 noundef 0) #8
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %41
  %67 = load ptr, ptr %2, align 4
  br label %68

68:                                               ; preds = %66, %41
  %69 = phi ptr [ %67, %66 ], [ %64, %41 ]
  %70 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %62, ptr noundef nonnull @aspeed_i2c_bus_irq, ptr noundef null, i32 noundef 0, ptr noundef %69, ptr noundef nonnull %3) #8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %3) #8
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %76, align 8
  %77 = load ptr, ptr %56, align 8
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 11
  %79 = load i32, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.5, i32 noundef %79, i32 noundef %62) #9
  br label %80

80:                                               ; preds = %75, %72, %68, %23, %15, %10, %1
  %81 = phi i32 [ %11, %10 ], [ %16, %15 ], [ %25, %23 ], [ 0, %75 ], [ -12, %1 ], [ %70, %68 ], [ %73, %72 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_remove_bus(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %6 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #8, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %10 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @reset_control_assert(ptr noundef %11) #8
  tail call void @i2c_del_adapter(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_clk_put(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_i2c_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %3 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #8, !srcloc !10
  %5 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %6, -1
  %10 = add i32 %9, %8
  %11 = udiv i32 %10, %8
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %15 = and i32 %14, -1048576
  %16 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 %17(ptr noundef %19, i32 noundef %11) #8
  %21 = or i32 %20, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #8, !srcloc !10
  %26 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = tail call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 17
  store i8 1, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ 1, %30 ], [ 32769, %2 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %34 = load ptr, ptr %3, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %36 = or i32 %35, %33
  %37 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #8, !srcloc !10
  %38 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 18
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = and i16 %43, 127
  %45 = zext i16 %44 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr i8, ptr %46, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #8, !srcloc !10
  %48 = load ptr, ptr %3, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %50 = or i32 %49, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %51 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #8, !srcloc !10
  br label %52

52:                                               ; preds = %41, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 24703) #8, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_bus_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %8 = and i32 %7, -5
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !10
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %14 = and i32 %7, -268369921
  %15 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = tail call fastcc i32 @aspeed_i2c_master_irq(ptr noundef %1, i32 noundef %14)
  %20 = xor i32 %19, -1
  %21 = and i32 %14, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @aspeed_i2c_slave_irq(ptr noundef %1, i32 noundef %21)
  %25 = or i32 %24, %19
  br label %34

26:                                               ; preds = %2
  %27 = tail call fastcc i32 @aspeed_i2c_slave_irq(ptr noundef %1, i32 noundef %14)
  %28 = xor i32 %27, -1
  %29 = and i32 %14, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc i32 @aspeed_i2c_master_irq(ptr noundef %1, i32 noundef %29)
  %33 = or i32 %32, %27
  br label %34

34:                                               ; preds = %31, %26, %23, %18
  %35 = phi i32 [ %25, %23 ], [ %19, %18 ], [ %33, %31 ], [ %27, %26 ]
  %36 = phi i32 [ %21, %23 ], [ 0, %18 ], [ %29, %31 ], [ 0, %26 ]
  %37 = load i32, ptr %15, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %77

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 19
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 10
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 12
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr %struct.i2c_msg, ptr %45, i32 %47
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = shl nuw nsw i32 %50, 1
  %52 = getelementptr %struct.i2c_msg, ptr %45, i32 %47, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = and i16 %53, 1
  %55 = zext i16 %54 to i32
  store i32 2, ptr %15, align 4
  %56 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 11
  store i32 0, ptr %56, align 4
  %57 = load i16, ptr %52, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %43
  %62 = getelementptr %struct.i2c_msg, ptr %45, i32 %47, i32 2
  %63 = load i16, ptr %62, align 4
  %64 = icmp eq i16 %63, 1
  %65 = and i32 %58, 1024
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  %68 = select i1 %67, i32 27, i32 11
  br label %69

69:                                               ; preds = %61, %43
  %70 = phi i32 [ 3, %43 ], [ %68, %61 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %71 = and i32 %51, 254
  %72 = or i32 %71, %55
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr i8, ptr %73, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr i8, ptr %75, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %70) #8, !srcloc !10
  br label %77

77:                                               ; preds = %69, %39, %34
  %78 = xor i32 %35, -1
  %79 = and i32 %36, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.8, i32 noundef %14, i32 noundef %35) #9
  br label %84

84:                                               ; preds = %81, %77
  %85 = and i32 %7, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr i8, ptr %88, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 4) #8, !srcloc !10
  %90 = load ptr, ptr %4, align 4
  %91 = getelementptr i8, ptr %90, i32 16
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !31
  br label %93

93:                                               ; preds = %87, %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !32
  %94 = load i16, ptr %3, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %96 = zext i1 %80 to i32
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_master_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 15
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 17
  %10 = load i8, ptr %9, align 4, !range !36
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !37
  %17 = and i32 %16, 65536
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  tail call fastcc void @aspeed_i2c_recover_bus(ptr noundef %5)
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  br label %21

21:                                               ; preds = %19, %12, %3
  %22 = phi i32 [ %7, %3 ], [ %20, %19 ], [ %7, %12 ]
  store i32 0, ptr %8, align 4
  %23 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 10
  store ptr %1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 12
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 13
  store i32 %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 5
  store i32 0, ptr %26, align 4
  %27 = load i16, ptr %1, align 4
  %28 = zext i16 %27 to i32
  %29 = shl nuw nsw i32 %28, 1
  %30 = getelementptr %struct.i2c_msg, ptr %1, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, 1
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 19
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 9
  br i1 %36, label %39, label %38

38:                                               ; preds = %21
  store i32 1, ptr %37, align 4
  br label %62

39:                                               ; preds = %21
  store i32 2, ptr %37, align 4
  %40 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 11
  store i32 0, ptr %40, align 4
  %41 = load i16, ptr %30, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = getelementptr %struct.i2c_msg, ptr %1, i32 0, i32 2
  %47 = load i16, ptr %46, align 4
  %48 = icmp eq i16 %47, 1
  %49 = and i32 %42, 1024
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  %52 = select i1 %51, i32 27, i32 11
  br label %53

53:                                               ; preds = %45, %39
  %54 = phi i32 [ 3, %39 ], [ %52, %45 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %55 = and i32 %29, 254
  %56 = or i32 %55, %33
  %57 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr i8, ptr %60, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %54) #8, !srcloc !10
  br label %62

62:                                               ; preds = %53, %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %22) #8
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 @wait_for_completion_timeout(ptr noundef %26, i32 noundef %64) #8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load i8, ptr %9, align 4, !range !36
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 20
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !38
  %75 = and i32 %74, 65536
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  tail call fastcc void @aspeed_i2c_recover_bus(ptr noundef %5)
  br label %78

78:                                               ; preds = %77, %70, %67
  %79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %80 = load i32, ptr %37, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, ptr %37, align 4
  br label %83

83:                                               ; preds = %82, %78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %79) #8
  br label %87

84:                                               ; preds = %62
  %85 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 16
  %86 = load i32, ptr %85, align 8
  br label %87

87:                                               ; preds = %84, %83
  %88 = phi i32 [ -110, %83 ], [ %86, %84 ]
  ret i32 %88
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_i2c_functionality(ptr nocapture noundef readnone %0) #7 {
  ret i32 268369929
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_reg_slave(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 18
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 127
  %15 = zext i16 %14 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %16 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #8, !srcloc !10
  %19 = load ptr, ptr %16, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %21 = or i32 %20, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #8, !srcloc !10
  store ptr %0, ptr %8, align 8
  %23 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 19
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %11, %1
  %25 = phi i32 [ 0, %11 ], [ -22, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_unreg_slave(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 18
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !39
  %15 = and i32 %14, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #8, !srcloc !10
  store ptr null, ptr %8, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i32 [ 0, %11 ], [ -22, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_i2c_recover_bus(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !41
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %1
  %11 = and i32 %7, 262144
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 5
  store i32 0, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 32) #8, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @wait_for_completion_timeout(ptr noundef %14, i32 noundef %18) #8
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !43
  %30 = and i32 %29, 262144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %51, label %61

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 5
  store i32 0, ptr %33, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 2048) #8, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  %36 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @wait_for_completion_timeout(ptr noundef %33, i32 noundef %37) #8
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 20
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !45
  %49 = and i32 %48, 131072
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45, %41, %32, %26, %22, %13
  %52 = phi i32 [ %20, %13 ], [ %20, %22 ], [ %20, %26 ], [ %39, %32 ], [ %39, %41 ], [ %39, %45 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %52) #8
  %53 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr i8, ptr %54, i32 -16
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 -1) #8, !srcloc !10
  tail call fastcc void @aspeed_i2c_init(ptr noundef %0, ptr noundef %55) #8
  br label %61

61:                                               ; preds = %51, %45, %26, %10
  %62 = phi i32 [ %56, %51 ], [ %3, %10 ], [ %20, %26 ], [ %39, %45 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %62) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_i2c_master_irq(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = and i32 %1, 8192
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 9
  store i32 0, ptr %6, align 4
  br label %192

7:                                                ; preds = %2
  %8 = and i32 %1, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = and i32 %1, 16448
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = and i32 %1, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %10, %7
  %17 = phi i32 [ -71, %13 ], [ -16, %10 ], [ -11, %7 ]
  %18 = and i32 %1, 16488
  %19 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %206, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  store i32 %17, ptr %23, align 4
  store i32 0, ptr %19, align 4
  br label %192

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 9
  %28 = icmp ult i32 %26, 2
  br i1 %28, label %206, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, i32 noundef %1) #9
  %36 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  store i32 -5, ptr %36, align 4
  %37 = load i32, ptr %27, align 4
  switch i32 %37, label %38 [
    i32 7, label %206
    i32 0, label %206
  ]

38:                                               ; preds = %33
  store i32 7, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %39 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 32) #8, !srcloc !10
  br label %206

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 12
  %44 = load i32, ptr %43, align 8
  switch i32 %26, label %180 [
    i32 2, label %45
    i32 4, label %83
    i32 3, label %89
    i32 5, label %111
    i32 6, label %115
    i32 7, label %171
  ]

45:                                               ; preds = %42
  %46 = and i32 %1, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48, !prof !49

48:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %49 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 20
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !51
  %53 = and i32 %52, -60
  %54 = load ptr, ptr %49, align 4
  %55 = getelementptr i8, ptr %54, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #8, !srcloc !10
  store i32 1, ptr %27, align 4
  br label %206

56:                                               ; preds = %45
  %57 = and i32 %1, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68, !prof !52

59:                                               ; preds = %56
  %60 = and i32 %1, 2
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  store i32 -6, ptr %62, align 4
  br i1 %61, label %63, label %64, !prof !52

63:                                               ; preds = %59
  store i32 0, ptr %27, align 4
  br label %192

64:                                               ; preds = %59
  store i32 7, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %65 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 32) #8, !srcloc !10
  br label %206

68:                                               ; preds = %56
  %69 = getelementptr %struct.i2c_msg, ptr %31, i32 %44, i32 2
  %70 = load i16, ptr %69, align 4
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  store i32 7, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %73 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 32) #8, !srcloc !10
  br label %206

76:                                               ; preds = %68
  %77 = getelementptr %struct.i2c_msg, ptr %31, i32 %44, i32 1
  %78 = load i16, ptr %77, align 2
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 5, ptr %27, align 4
  br label %111

82:                                               ; preds = %76
  store i32 3, ptr %27, align 4
  br label %89

83:                                               ; preds = %42
  %84 = and i32 %1, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %186, !prof !49

86:                                               ; preds = %83
  %87 = and i32 %1, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %182, label %89, !prof !52

89:                                               ; preds = %86, %82, %42
  %90 = phi i32 [ 1, %82 ], [ 0, %42 ], [ 1, %86 ]
  %91 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 11
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.i2c_msg, ptr %31, i32 %44, i32 2
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %89
  store i32 4, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %98 = getelementptr %struct.i2c_msg, ptr %31, i32 %44, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %91, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %91, align 4
  %102 = getelementptr i8, ptr %99, i32 %100
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %104) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %108 = load ptr, ptr %105, align 4
  %109 = getelementptr i8, ptr %108, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 2) #8, !srcloc !10
  br label %206

110:                                              ; preds = %89
  tail call fastcc void @aspeed_i2c_next_msg_or_stop(ptr noundef %0)
  br label %206

111:                                              ; preds = %81, %42
  %112 = phi i32 [ 1, %81 ], [ 0, %42 ]
  %113 = and i32 %1, 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %206, label %118

115:                                              ; preds = %42
  %116 = and i32 %1, 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %182, label %118, !prof !52

118:                                              ; preds = %115, %111
  %119 = phi i32 [ 0, %115 ], [ %112, %111 ]
  %120 = or i32 %119, 4
  %121 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr i8, ptr %122, i32 32
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !55
  %125 = lshr i32 %124, 8
  %126 = trunc i32 %125 to i8
  %127 = getelementptr %struct.i2c_msg, ptr %31, i32 %44, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 11
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 4
  %132 = getelementptr i8, ptr %128, i32 %130
  store i8 %126, ptr %132, align 1
  %133 = getelementptr %struct.i2c_msg, ptr %31, i32 %44, i32 1
  %134 = load i16, ptr %133, align 2
  %135 = zext i16 %134 to i32
  %136 = and i32 %135, 1024
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %118
  %139 = getelementptr %struct.i2c_msg, ptr %31, i32 %44, i32 2
  %140 = load i16, ptr %139, align 4
  br label %156

141:                                              ; preds = %118
  %142 = and i32 %125, 255
  %143 = icmp ugt i32 %142, 32
  br i1 %143, label %144, label %148, !prof !52

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  store i32 -71, ptr %145, align 4
  store i32 7, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %146 = load ptr, ptr %121, align 4
  %147 = getelementptr i8, ptr %146, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 32) #8, !srcloc !10
  br label %206

148:                                              ; preds = %141
  %149 = and i32 %135, 4
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %150, i32 1, i32 2
  %152 = add nuw nsw i32 %151, %142
  %153 = trunc i32 %152 to i16
  %154 = getelementptr %struct.i2c_msg, ptr %31, i32 %44, i32 2
  store i16 %153, ptr %154, align 4
  %155 = and i16 %134, -1025
  store i16 %155, ptr %133, align 2
  br label %156

156:                                              ; preds = %148, %138
  %157 = phi i16 [ %140, %138 ], [ %153, %148 ]
  %158 = load i32, ptr %129, align 4
  %159 = zext i16 %157 to i32
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %156
  %162 = getelementptr %struct.i2c_msg, ptr %31, i32 %44, i32 2
  store i32 6, ptr %27, align 4
  %163 = add nuw i32 %158, 1
  %164 = load i16, ptr %162, align 4
  %165 = zext i16 %164 to i32
  %166 = icmp eq i32 %163, %165
  %167 = select i1 %166, i32 24, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %168 = load ptr, ptr %121, align 4
  %169 = getelementptr i8, ptr %168, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #8, !srcloc !10
  br label %206

170:                                              ; preds = %156
  tail call fastcc void @aspeed_i2c_next_msg_or_stop(ptr noundef %0)
  br label %206

171:                                              ; preds = %42
  %172 = and i32 %1, 16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178, !prof !52

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 1
  %176 = load ptr, ptr %175, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.12, i32 noundef %1) #9
  %177 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  store i32 -5, ptr %177, align 4
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i32 [ 0, %174 ], [ 16, %171 ]
  store i32 0, ptr %27, align 4
  br label %192

180:                                              ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 575, i32 noundef 9, ptr noundef nonnull @.str.15) #8
  store i32 0, ptr %27, align 4
  %181 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  store i32 -22, ptr %181, align 4
  br label %192

182:                                              ; preds = %115, %86
  %183 = phi ptr [ @.str.10, %86 ], [ @.str.11, %115 ]
  %184 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 1
  %185 = load ptr, ptr %184, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull %183) #9
  br label %186

186:                                              ; preds = %182, %83
  %187 = phi i32 [ 2, %83 ], [ 0, %182 ]
  %188 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  store i32 -5, ptr %188, align 4
  store i32 7, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %189 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr i8, ptr %190, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 32) #8, !srcloc !10
  br label %206

192:                                              ; preds = %180, %178, %63, %22, %5
  %193 = phi i32 [ 8192, %5 ], [ %18, %22 ], [ 0, %63 ], [ 0, %180 ], [ %179, %178 ]
  %194 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 10
  store ptr null, ptr %194, align 8
  %195 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 15
  %196 = load i32, ptr %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 12
  %200 = load i32, ptr %199, align 8
  %201 = add i32 %200, 1
  br label %202

202:                                              ; preds = %198, %192
  %203 = phi i32 [ %201, %198 ], [ %196, %192 ]
  %204 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 16
  store i32 %203, ptr %204, align 8
  %205 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 5
  tail call void @complete(ptr noundef %205) #8
  br label %206

206:                                              ; preds = %202, %186, %170, %161, %144, %111, %110, %97, %72, %64, %48, %38, %33, %33, %24, %16
  %207 = phi i32 [ %193, %202 ], [ 0, %48 ], [ 2, %64 ], [ 1, %72 ], [ %187, %186 ], [ %120, %144 ], [ %120, %161 ], [ %120, %170 ], [ %112, %111 ], [ %90, %97 ], [ %90, %110 ], [ 0, %38 ], [ 0, %33 ], [ 0, %24 ], [ 0, %33 ], [ %18, %16 ]
  ret i32 %207
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_i2c_slave_irq(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %103, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !58
  %12 = and i32 %1, 128
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 19
  br i1 %13, label %16, label %15

15:                                               ; preds = %7
  store i32 1, ptr %14, align 4
  br label %19

16:                                               ; preds = %7
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %103, label %19

19:                                               ; preds = %16, %15
  %20 = phi i32 [ 128, %15 ], [ 0, %16 ]
  %21 = phi i32 [ 1, %15 ], [ %17, %16 ]
  %22 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 19
  %23 = and i32 %1, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr i8, ptr %26, i32 32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !59
  %29 = lshr i32 %28, 8
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %3, align 1
  %31 = load i32, ptr %22, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = and i32 %28, 256
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 4, i32 2
  store i32 %36, ptr %22, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = phi i32 [ %31, %25 ], [ %36, %33 ]
  %39 = or i32 %20, 4
  br label %40

40:                                               ; preds = %37, %19
  %41 = phi i32 [ %38, %37 ], [ %21, %19 ]
  %42 = phi i32 [ %39, %37 ], [ %20, %19 ]
  %43 = and i32 %1, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %40
  %46 = and i32 %1, 2
  %47 = icmp ne i32 %46, 0
  %48 = icmp eq i32 %41, 3
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %92, label %50

50:                                               ; preds = %45
  switch i32 %41, label %100 [
    i32 2, label %51
    i32 3, label %67
    i32 4, label %84
    i32 5, label %88
    i32 6, label %95
    i32 1, label %103
  ]

51:                                               ; preds = %50
  %52 = and i32 %1, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54, !prof !49

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.16) #9
  br label %57

57:                                               ; preds = %54, %51
  store i32 3, ptr %22, align 4
  %58 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 8
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 %59(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %3) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !60
  call void @arm_heavy_mb() #8
  %61 = load i8, ptr %3, align 1
  %62 = zext i8 %61 to i32
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr i8, ptr %63, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !61
  call void @arm_heavy_mb() #8
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr i8, ptr %65, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 4) #8, !srcloc !10
  br label %103

67:                                               ; preds = %50
  %68 = and i32 %1, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73, !prof !52

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.17) #9
  br label %103

73:                                               ; preds = %67
  %74 = or i32 %42, 1
  %75 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 8
  %76 = load ptr, ptr %75, align 8
  %77 = call i32 %76(ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull %3) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !62
  call void @arm_heavy_mb() #8
  %78 = load i8, ptr %3, align 1
  %79 = zext i8 %78 to i32
  %80 = load ptr, ptr %8, align 4
  %81 = getelementptr i8, ptr %80, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !63
  call void @arm_heavy_mb() #8
  %82 = load ptr, ptr %8, align 4
  %83 = getelementptr i8, ptr %82, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 4) #8, !srcloc !10
  br label %103

84:                                               ; preds = %50
  store i32 5, ptr %22, align 4
  %85 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 8
  %86 = load ptr, ptr %85, align 8
  %87 = call i32 %86(ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %3) #8
  br label %103

88:                                               ; preds = %50
  %89 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 8
  %90 = load ptr, ptr %89, align 8
  %91 = call i32 %90(ptr noundef nonnull %5, i32 noundef 3, ptr noundef nonnull %3) #8
  br label %103

92:                                               ; preds = %45, %40
  %93 = phi i32 [ 16, %40 ], [ 2, %45 ]
  %94 = or i32 %42, %93
  store i32 6, ptr %22, align 4
  br label %95

95:                                               ; preds = %92, %50
  %96 = phi i32 [ %42, %50 ], [ %94, %92 ]
  %97 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 8
  %98 = load ptr, ptr %97, align 8
  %99 = call i32 %98(ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %3) #8
  store i32 0, ptr %22, align 4
  br label %103

100:                                              ; preds = %50
  %101 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.18, i32 noundef %41) #9
  store i32 0, ptr %22, align 4
  br label %103

103:                                              ; preds = %100, %95, %88, %84, %73, %70, %57, %50, %16, %2
  %104 = phi i32 [ 0, %2 ], [ 0, %16 ], [ %42, %100 ], [ %42, %50 ], [ %96, %95 ], [ %42, %88 ], [ %42, %84 ], [ %42, %70 ], [ %74, %73 ], [ %42, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_i2c_next_msg_or_stop(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, 1
  %5 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %1
  store i32 %4, ptr %2, align 8
  %9 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.i2c_msg, ptr %10, i32 %4
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = shl nuw nsw i32 %13, 1
  %15 = getelementptr %struct.i2c_msg, ptr %10, i32 %4, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 1
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 19
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 9
  br i1 %21, label %24, label %23

23:                                               ; preds = %8
  store i32 1, ptr %22, align 4
  br label %52

24:                                               ; preds = %8
  store i32 2, ptr %22, align 4
  %25 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 11
  store i32 0, ptr %25, align 4
  %26 = load i16, ptr %15, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = getelementptr %struct.i2c_msg, ptr %10, i32 %4, i32 2
  %32 = load i16, ptr %31, align 4
  %33 = icmp eq i16 %32, 1
  %34 = and i32 %27, 1024
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  %37 = select i1 %36, i32 27, i32 11
  br label %38

38:                                               ; preds = %30, %24
  %39 = phi i32 [ 3, %24 ], [ %37, %30 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %40 = and i32 %14, 254
  %41 = or i32 %40, %18
  %42 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %41) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %39) #8, !srcloc !10
  br label %52

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 9
  store i32 7, ptr %48, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %49 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 32) #8, !srcloc !10
  br label %52

52:                                               ; preds = %47, %38, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i32 0, i32 33}
!9 = !{i64 2154254523}
!10 = !{i64 5408465}
!11 = !{i64 2154254843}
!12 = !{i64 2154256149}
!13 = !{i64 2154256460}
!14 = !{i64 2154245469}
!15 = !{i64 5408883}
!16 = !{i64 2154242470}
!17 = !{i64 2154244743}
!18 = !{i64 2154245076}
!19 = !{i64 2154246388}
!20 = !{i64 2154246871}
!21 = !{i64 2154232921}
!22 = !{i64 2154233403}
!23 = !{i64 2154233688}
!24 = !{i64 2154249016}
!25 = !{i64 2154225755}
!26 = !{i64 2154226067}
!27 = !{i64 2154226613}
!28 = !{i64 2154207043}
!29 = !{i64 2154207378}
!30 = !{i64 2154228311}
!31 = !{i64 2154228823}
!32 = !{i64 2148909616}
!33 = !{i64 2148905440}
!34 = !{i64 2148905515, i64 2148905542, i64 2148905589, i64 2148905611, i64 2148905639, i64 2148905659}
!35 = !{i64 2148932619}
!36 = !{i8 0, i8 2}
!37 = !{i64 2154229511}
!38 = !{i64 2154230283}
!39 = !{i64 2154234890}
!40 = !{i64 2154235175}
!41 = !{i64 2154195569}
!42 = !{i64 2154196733}
!43 = !{i64 2154197597}
!44 = !{i64 2154198680}
!45 = !{i64 2154199546}
!46 = !{i64 2154251557}
!47 = !{i64 2154251877}
!48 = !{i64 2154207809}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2154212457}
!51 = !{i64 2154213085}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2154216782}
!54 = !{i64 2154217251}
!55 = !{i64 2154218640}
!56 = !{i64 2154219064}
!57 = !{!"auto-init"}
!58 = !{i64 2154200506}
!59 = !{i64 2154201783}
!60 = !{i64 2154203132}
!61 = !{i64 2154203559}
!62 = !{i64 2154204778}
!63 = !{i64 2154205205}
