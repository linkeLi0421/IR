; ModuleID = '/llk/IR/drivers/nfc/s3fwrn5/i2c.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.s3fwrn5_phy_ops = type { ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.phy_common = type { ptr, i32, i32, %struct.mutex, i32 }
%struct.s3fwrn5_i2c_phy = type { %struct.phy_common, ptr, ptr, i8 }
%struct.nci_ctrl_hdr = type { i8, i8, i8 }
%struct.sk_buff = type { %union.anon.79, %union.anon.82, %union.anon.83, [48 x i8], %union.anon.84, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.86, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr, %union.anon.81 }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, ptr }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.88, i32, i32, i32, i16, i16, %union.anon.90, %union.anon.91, %union.anon.92, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.88 = type { i32 }
%union.anon.90 = type { i32 }
%union.anon.91 = type { i32 }
%union.anon.92 = type { i16 }

@s3fwrn5_i2c_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"s3fwrn5_i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@of_s3fwrn5_i2c_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3fwrn5-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license276 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [43 x i8] c"description=I2C driver for Samsung S3FWRN5\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [46 x i8] c"author=Robert Baldyga <r.baldyga@samsung.com>\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@s3fwrn5_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @s3fwrn5_i2c_probe, ptr @s3fwrn5_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_s3fwrn5_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s3fwrn5_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"s3fwrn5_i2c\00", align 1
@s3fwrn5_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&phy->common.mutex\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"s3fwrn5_en\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"s3fwrn5_fw_wake\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@i2c_phy_ops = internal constant %struct.s3fwrn5_phy_ops { ptr @s3fwrn5_phy_set_wake, ptr @s3fwrn5_i2c_set_mode, ptr @s3fwrn5_phy_get_mode, ptr @s3fwrn5_i2c_write }, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"en-gpios\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"s3fwrn5,en-gpios\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"wake-gpios\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"s3fwrn5,fw-gpios\00", align 1
@s3fwrn5_i2c_irq_thread_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"drivers/nfc/s3fwrn5/i2c.c\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_license276], section "llvm.metadata"

@__mod_i2c__s3fwrn5_i2c_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @s3fwrn5_i2c_id_table
@__mod_of__of_s3fwrn5_i2c_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @of_s3fwrn5_i2c_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @s3fwrn5_i2c_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @s3fwrn5_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3fwrn5_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 48, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %77, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_common, ptr %4, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @s3fwrn5_i2c_probe.__key) #6
  %8 = getelementptr inbounds %struct.phy_common, ptr %4, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %4, i32 0, i32 3
  %10 = load i8, ptr %9, align 4
  %11 = or i8 %10, 1
  store i8 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %4, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %13, align 8
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %77, label %17

17:                                               ; preds = %6
  %18 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef null) #6
  %19 = getelementptr inbounds %struct.phy_common, ptr %4, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = icmp ult i32 %18, 2048
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null) #6
  store i32 %22, ptr %19, align 4
  %23 = icmp ult i32 %22, 2048
  br i1 %23, label %24, label %77

24:                                               ; preds = %21, %17
  %25 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef null) #6
  %26 = getelementptr inbounds %struct.phy_common, ptr %4, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = icmp ult i32 %25, 2048
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef null) #6
  store i32 %29, ptr %26, align 4
  %30 = icmp ult i32 %29, 2048
  br i1 %30, label %31, label %77

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %19, align 4
  %35 = tail call i32 @devm_gpio_request_one(ptr noundef %33, i32 noundef %34, i32 noundef 2, ptr noundef nonnull @.str.2) #6
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %77, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %12, align 4
  %39 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %26, align 4
  %41 = tail call i32 @devm_gpio_request_one(ptr noundef %39, i32 noundef %40, i32 noundef 0, ptr noundef nonnull @.str.3) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %37
  %44 = tail call ptr @devm_clk_get_optional(ptr noundef %3, ptr noundef null) #6
  %45 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %4, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  %49 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %48, ptr noundef nonnull @.str.4) #6
  br label %77

50:                                               ; preds = %43
  %51 = tail call i32 @clk_prepare(ptr noundef %44) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = tail call i32 @clk_enable(ptr noundef %44) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  tail call void @clk_unprepare(ptr noundef %44) #6
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi i32 [ %51, %50 ], [ %54, %56 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %58) #7
  br label %77

61:                                               ; preds = %57, %53
  %62 = load ptr, ptr %12, align 4
  %63 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  %64 = tail call i32 @s3fwrn5_probe(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %63, ptr noundef nonnull @i2c_phy_ops) #6
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %12, align 4
  %68 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %69, ptr noundef null, ptr noundef nonnull @s3fwrn5_i2c_irq_thread_fn, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %4) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %4, align 4
  tail call void @s3fwrn5_remove(ptr noundef %73) #6
  br label %74

74:                                               ; preds = %72, %61
  %75 = phi i32 [ %64, %61 ], [ %70, %72 ]
  %76 = load ptr, ptr %45, align 4
  tail call void @clk_disable(ptr noundef %76) #6
  tail call void @clk_unprepare(ptr noundef %76) #6
  br label %77

77:                                               ; preds = %74, %66, %60, %47, %37, %31, %28, %21, %6, %2
  %78 = phi i32 [ %49, %47 ], [ %58, %60 ], [ %75, %74 ], [ -12, %2 ], [ %35, %31 ], [ %41, %37 ], [ 0, %66 ], [ -19, %6 ], [ -19, %21 ], [ -19, %28 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3fwrn5_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @s3fwrn5_remove(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #6
  tail call void @clk_unprepare(ptr noundef %6) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3fwrn5_i2c_irq_thread_fn(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [4 x i8], align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5, %2
  %9 = load i1, ptr @s3fwrn5_i2c_irq_thread_fn.__already_done, align 1
  br i1 %9, label %58, label %10, !prof !8

10:                                               ; preds = %8
  store i1 true, ptr @s3fwrn5_i2c_irq_thread_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 125, i32 noundef 9, ptr noundef null) #6
  br label %58

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.phy_common, ptr %1, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %1, i32 0, i32 3
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.phy_common, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %23 = icmp eq i32 %19, 1
  %24 = select i1 %23, i32 3, i32 4
  %25 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %3, i32 noundef %24, i16 noundef zeroext 1) #6
  %28 = icmp slt i32 %27, 0
  %29 = icmp ult i32 %27, %24
  %30 = or i1 %28, %29
  br i1 %30, label %56, label %31

31:                                               ; preds = %22
  %32 = load i32, ptr %18, align 4
  %33 = icmp eq i32 %32, 1
  %34 = getelementptr inbounds %struct.nci_ctrl_hdr, ptr %3, i32 0, i32 2
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = load i16, ptr %34, align 2
  %38 = zext i16 %37 to i32
  %39 = select i1 %33, i32 %36, i32 %38
  %40 = add nuw nsw i32 %39, %24
  %41 = call ptr @__alloc_skb(i32 noundef %40, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %31
  %44 = call ptr @skb_put(ptr noundef nonnull %41, i32 noundef %24) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %44, ptr noundef nonnull align 4 dereferenceable(3) %3, i32 %24, i1 false) #6
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %25, align 4
  %48 = call ptr @skb_put(ptr noundef nonnull %41, i32 noundef %39) #6
  %49 = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef %48, i32 noundef %39, i16 noundef zeroext 1) #6
  %50 = icmp eq i32 %49, %39
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  call void @kfree_skb_reason(ptr noundef nonnull %41, i32 noundef 0) #6
  br label %56

52:                                               ; preds = %46, %43
  %53 = load ptr, ptr %1, align 4
  %54 = load i32, ptr %18, align 4
  %55 = call i32 @s3fwrn5_recv_frame(ptr noundef %53, ptr noundef nonnull %41, i32 noundef %54) #6
  br label %56

56:                                               ; preds = %52, %51, %31, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %57

57:                                               ; preds = %56, %17, %11
  call void @mutex_unlock(ptr noundef %12) #6
  br label %58

58:                                               ; preds = %57, %10, %8
  %59 = phi i32 [ 1, %57 ], [ 0, %10 ], [ 0, %8 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_phy_set_wake(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3fwrn5_i2c_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = tail call zeroext i1 @s3fwrn5_phy_power_ctrl(ptr noundef %0, i32 noundef %1) #6
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, 1
  store i8 %8, ptr %6, align 4
  br label %9

9:                                                ; preds = %5, %2
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_phy_get_mode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3fwrn5_i2c_write(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, -2
  store i8 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef %10, i32 noundef %12, i16 noundef zeroext 0) #6
  %14 = icmp eq i32 %13, -121
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  tail call void @usleep_range_state(i32 noundef 110000, i32 noundef 120000, i32 noundef 2) #6
  %16 = load ptr, ptr %7, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = load i32, ptr %11, align 8
  %19 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef %17, i32 noundef %18, i16 noundef zeroext 0) #6
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i32 [ %19, %15 ], [ %13, %2 ]
  tail call void @mutex_unlock(ptr noundef %3) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %11, align 8
  %25 = icmp eq i32 %21, %24
  %26 = select i1 %25, i32 0, i32 -121
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i32 [ %21, %20 ], [ %26, %23 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @s3fwrn5_phy_power_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_recv_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
