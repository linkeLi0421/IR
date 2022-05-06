; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/sii9234.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/sii9234.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sii9234 = type { [4 x ptr], %struct.drm_bridge, ptr, ptr, i32, [4 x %struct.regulator_bulk_data], %struct.mutex, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sii9234_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sil,sii9234\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sii9234_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"SII9234\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_license265 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@sii9234_driver = internal global %struct.i2c_driver { i32 0, ptr @sii9234_probe, ptr @sii9234_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sii9234_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sii9234_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"sii9234\00", align 1
@sii9234_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&ctx->lock\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"I2C adapter lacks SMBUS feature\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"no irq provided\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@sii9234_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr null, ptr null, ptr @sii9234_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"discovery failed, no power for MHL?\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"readb: %4s[0x%02x]\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"MHL\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"TPI\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"CBUS\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"sii9234_reset() failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"RGND is not 1k\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"RSEN_HIGH without RGND_1K\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"writeb: %4s[0x%02x] <- 0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%s failed\0A\00", align 1
@__func__.sii9234_goto_d3 = private unnamed_addr constant [16 x i8] c"sii9234_goto_d3\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"writebm: %4s[0x%02x] <- 0x%02x\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"not DT device\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"failed to get reset gpio from DT\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"avcc12\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"avcc33\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"iovcc18\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"cvcc12\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"regulator_bulk failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"failed to create TPI client\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"failed to create HDMI RX client\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"failed to create CBUS client\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_license265], section "llvm.metadata"

@__mod_of__sii9234_dt_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sii9234_dt_match
@__mod_i2c__sii9234_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @sii9234_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @sii9234_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @sii9234_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii9234_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 232, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %101, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sii9234, ptr %6, i32 0, i32 2
  store ptr %5, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sii9234, ptr %6, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @sii9234_probe.__key) #5
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.i2c_algorithm, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %4) #5
  %16 = and i32 %15, 1572864
  %17 = icmp eq i32 %16, 1572864
  br i1 %17, label %19, label %18

18:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #6
  br label %101

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #6
  br label %101

24:                                               ; preds = %19
  tail call void @irq_modify_status(i32 noundef %21, i32 noundef 0, i32 noundef 4096) #5
  %25 = load i32, ptr %20, align 4
  %26 = tail call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %25, ptr noundef null, ptr noundef nonnull @sii9234_irq_thread, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef nonnull %6) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #6
  br label %101

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.17) #6
  br label %101

36:                                               ; preds = %29
  %37 = tail call ptr @devm_gpiod_get(ptr noundef %31, ptr noundef nonnull @.str.18, i32 noundef 3) #5
  %38 = getelementptr inbounds %struct.sii9234, ptr %6, i32 0, i32 3
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.19) #6
  %42 = load ptr, ptr %38, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %77

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.sii9234, ptr %6, i32 0, i32 5
  store ptr @.str.20, ptr %45, align 4
  %46 = getelementptr %struct.sii9234, ptr %6, i32 0, i32 5, i32 1
  store ptr @.str.21, ptr %46, align 4
  %47 = getelementptr %struct.sii9234, ptr %6, i32 0, i32 5, i32 2
  store ptr @.str.22, ptr %47, align 4
  %48 = getelementptr %struct.sii9234, ptr %6, i32 0, i32 5, i32 3
  store ptr @.str.23, ptr %48, align 4
  %49 = load ptr, ptr %9, align 4
  %50 = tail call i32 @devm_regulator_bulk_get(ptr noundef %49, i32 noundef 4, ptr noundef %45) #5
  switch i32 %50, label %51 [
    i32 0, label %53
    i32 -517, label %101
  ]

51:                                               ; preds = %44
  %52 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.24) #6
  br label %77

53:                                               ; preds = %44
  store ptr %0, ptr %6, align 4
  %54 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %5, ptr noundef %30, i16 noundef zeroext 61) #5
  %55 = getelementptr [4 x ptr], ptr %6, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.25) #6
  %59 = load ptr, ptr %55, align 4
  %60 = ptrtoint ptr %59 to i32
  br label %77

61:                                               ; preds = %53
  %62 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %5, ptr noundef %30, i16 noundef zeroext 73) #5
  %63 = getelementptr [4 x ptr], ptr %6, i32 0, i32 2
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.26) #6
  %67 = load ptr, ptr %63, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %77

69:                                               ; preds = %61
  %70 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %5, ptr noundef %30, i16 noundef zeroext 100) #5
  %71 = getelementptr [4 x ptr], ptr %6, i32 0, i32 3
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.27) #6
  %75 = load ptr, ptr %71, align 4
  %76 = ptrtoint ptr %75 to i32
  br label %77

77:                                               ; preds = %73, %65, %57, %51, %40
  %78 = phi i32 [ %43, %40 ], [ %60, %57 ], [ %68, %65 ], [ %76, %73 ], [ %50, %51 ]
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %77, %69
  %81 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %81, align 8
  %82 = getelementptr inbounds %struct.sii9234, ptr %6, i32 0, i32 1
  %83 = getelementptr inbounds %struct.sii9234, ptr %6, i32 0, i32 1, i32 7
  store ptr @sii9234_bridge_funcs, ptr %83, align 4
  %84 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.sii9234, ptr %6, i32 0, i32 1, i32 4
  store ptr %85, ptr %86, align 4
  tail call void @drm_bridge_add(ptr noundef %82) #5
  tail call void @mutex_lock(ptr noundef %10) #5
  %87 = getelementptr inbounds %struct.sii9234, ptr %6, i32 0, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.sii9234, ptr %6, i32 0, i32 5
  %92 = tail call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %91) #5
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %38, align 4
  tail call void @gpiod_set_value(ptr noundef %95, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %96 = load ptr, ptr %38, align 4
  tail call void @gpiod_set_value(ptr noundef %96, i32 noundef 0) #5
  tail call fastcc void @sii9234_goto_d3(ptr noundef nonnull %6) #5
  %97 = load ptr, ptr %9, align 4
  %98 = getelementptr i8, ptr %97, i32 476
  %99 = load i32, ptr %98, align 4
  tail call void @enable_irq(i32 noundef %99) #5
  br label %100

100:                                              ; preds = %94, %90, %80
  tail call void @mutex_unlock(ptr noundef %10) #5
  br label %101

101:                                              ; preds = %100, %77, %44, %35, %28, %23, %18, %2
  %102 = phi i32 [ %26, %28 ], [ 0, %100 ], [ -22, %23 ], [ -5, %18 ], [ -12, %2 ], [ %78, %77 ], [ %50, %44 ], [ -19, %35 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii9234_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sii9234, ptr %3, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.sii9234, ptr %3, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sii9234, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 476
  %12 = load i32, ptr %11, align 4
  tail call void @disable_irq(i32 noundef %12) #5
  %13 = getelementptr inbounds %struct.sii9234, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = getelementptr [4 x ptr], ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 61, i8 noundef zeroext 0) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 61, i32 noundef 0) #6
  br label %23

23:                                               ; preds = %21, %16
  store i32 %19, ptr %13, align 4
  br label %24

24:                                               ; preds = %23, %8
  %25 = getelementptr inbounds %struct.sii9234, ptr %3, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void @gpiod_set_value(ptr noundef %26, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %27 = getelementptr inbounds %struct.sii9234, ptr %3, i32 0, i32 5
  %28 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %27) #5
  store i32 0, ptr %5, align 4
  br label %29

29:                                               ; preds = %24, %1
  tail call void @mutex_unlock(ptr noundef %4) #5
  %30 = getelementptr inbounds %struct.sii9234, ptr %3, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %30) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii9234_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #5
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %2
  %9 = tail call i32 @i2c_smbus_write_byte(ptr noundef %4, i8 noundef zeroext 113) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %9, %8 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 113) #6
  br label %65

18:                                               ; preds = %11
  %19 = load i32, ptr %5, align 4
  %20 = load ptr, ptr %1, align 4
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = tail call i32 @i2c_smbus_write_byte(ptr noundef %20, i8 noundef zeroext 116) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @i2c_smbus_read_byte(ptr noundef %20) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %5, align 4
  %30 = load ptr, ptr %1, align 4
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = tail call i32 @i2c_smbus_write_byte(ptr noundef %30, i8 noundef zeroext 117) #5
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @i2c_smbus_read_byte(ptr noundef %30) #5
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %33, %32 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 117) #6
  br label %62

42:                                               ; preds = %35
  %43 = load i32, ptr %5, align 4
  %44 = load ptr, ptr %1, align 4
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = tail call i32 @i2c_smbus_write_byte(ptr noundef %44, i8 noundef zeroext 120) #5
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @i2c_smbus_read_byte(ptr noundef %44) #5
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49, %46, %25, %22
  %53 = phi i32 [ 116, %25 ], [ 116, %22 ], [ 120, %49 ], [ 120, %46 ]
  %54 = phi i32 [ %26, %25 ], [ %23, %22 ], [ %26, %49 ], [ %26, %46 ]
  %55 = phi i32 [ %26, %25 ], [ %23, %22 ], [ %50, %49 ], [ %47, %46 ]
  %56 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %53) #6
  br label %58

58:                                               ; preds = %52, %42, %18
  %59 = phi i32 [ %26, %42 ], [ %19, %18 ], [ %54, %52 ]
  %60 = phi i32 [ %43, %42 ], [ %19, %18 ], [ %55, %52 ]
  %61 = getelementptr [4 x ptr], ptr %1, i32 0, i32 3
  br label %356

62:                                               ; preds = %38, %28
  %63 = phi i32 [ %29, %28 ], [ %39, %38 ]
  %64 = getelementptr [4 x ptr], ptr %1, i32 0, i32 3
  br label %356

65:                                               ; preds = %14, %2
  %66 = phi i32 [ %15, %14 ], [ %6, %2 ]
  %67 = getelementptr [4 x ptr], ptr %1, i32 0, i32 3
  br label %356

68:                                               ; preds = %49
  %69 = load i32, ptr %5, align 4
  %70 = getelementptr [4 x ptr], ptr %1, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq i32 %69, 0
  br i1 %72, label %73, label %356

73:                                               ; preds = %68
  %74 = tail call i32 @i2c_smbus_write_byte(ptr noundef %71, i8 noundef zeroext 8) #5
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @i2c_smbus_read_byte(ptr noundef %71) #5
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76, %73
  %80 = phi i32 [ %74, %73 ], [ %77, %76 ]
  %81 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, i32 noundef 8) #6
  br label %356

83:                                               ; preds = %76
  %84 = load i32, ptr %5, align 4
  %85 = load ptr, ptr %70, align 4
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %87, label %356

87:                                               ; preds = %83
  %88 = tail call i32 @i2c_smbus_write_byte(ptr noundef %85, i8 noundef zeroext 30) #5
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = tail call i32 @i2c_smbus_read_byte(ptr noundef %85) #5
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90, %87
  %94 = phi i32 [ %88, %87 ], [ %91, %90 ]
  %95 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, i32 noundef 30) #6
  br label %356

97:                                               ; preds = %90
  %98 = load i32, ptr %5, align 4
  store i32 0, ptr %5, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %362

100:                                              ; preds = %97
  %101 = and i32 %26, 64
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %186, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 7
  %105 = load i32, ptr %104, align 4
  switch i32 %105, label %184 [
    i32 1, label %106
    i32 2, label %115
  ]

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  tail call void @gpiod_set_value(ptr noundef %108, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %109 = load ptr, ptr %107, align 4
  tail call void @gpiod_set_value(ptr noundef %109, i32 noundef 0) #5
  %110 = tail call fastcc i32 @sii9234_reset(ptr noundef %1) #5
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %184

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.11) #6
  br label %184

115:                                              ; preds = %103
  %116 = load ptr, ptr %1, align 4
  %117 = tail call i32 @i2c_smbus_write_byte(ptr noundef %116, i8 noundef zeroext -103) #5
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = tail call i32 @i2c_smbus_read_byte(ptr noundef %116) #5
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %115
  %123 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 153) #6
  store i32 0, ptr %5, align 4
  br label %184

125:                                              ; preds = %119
  %126 = load i32, ptr %5, align 4
  store i32 0, ptr %5, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %184

128:                                              ; preds = %125
  %129 = and i32 %120, 3
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %133, ptr noundef nonnull @.str.12) #6
  br label %184

134:                                              ; preds = %128
  %135 = load ptr, ptr %1, align 4
  %136 = tail call i32 @i2c_smbus_write_byte(ptr noundef %135, i8 noundef zeroext -109) #5
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = tail call i32 @i2c_smbus_read_byte(ptr noundef %135) #5
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = or i32 %139, 140
  %143 = trunc i32 %142 to i8
  %144 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %135, i8 noundef zeroext -109, i8 noundef zeroext %143) #5
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141, %138, %134
  %147 = phi i32 [ -1, %134 ], [ -1, %138 ], [ %142, %141 ]
  %148 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 147, i32 noundef %147) #6
  br label %179

150:                                              ; preds = %141
  %151 = load i32, ptr %5, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %179

153:                                              ; preds = %150
  %154 = load ptr, ptr %1, align 4
  %155 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %154, i8 noundef zeroext -108, i8 noundef zeroext 119) #5
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 148, i32 noundef 119) #6
  br label %178

160:                                              ; preds = %153
  store i32 %155, ptr %5, align 4
  %161 = load ptr, ptr %1, align 4
  %162 = icmp eq i32 %155, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %160
  %164 = tail call i32 @i2c_smbus_write_byte(ptr noundef %161, i8 noundef zeroext -107) #5
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = tail call i32 @i2c_smbus_read_byte(ptr noundef %161) #5
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = or i32 %167, 5
  %171 = trunc i32 %170 to i8
  %172 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %161, i8 noundef zeroext -107, i8 noundef zeroext %171) #5
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169, %166, %163
  %175 = phi i32 [ -1, %163 ], [ -1, %166 ], [ %170, %169 ]
  %176 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %177 = load ptr, ptr %176, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 149, i32 noundef %175) #6
  br label %178

178:                                              ; preds = %174, %160, %157
  store i32 0, ptr %5, align 4
  br label %184

179:                                              ; preds = %150, %146
  store i32 0, ptr %5, align 4
  br label %184

180:                                              ; preds = %169
  %181 = load i32, ptr %5, align 4
  store i32 0, ptr %5, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  tail call void @msleep(i32 noundef 200) #5
  br label %184

184:                                              ; preds = %183, %180, %179, %178, %131, %125, %122, %112, %106, %103
  %185 = phi i32 [ 2, %131 ], [ 3, %183 ], [ 7, %112 ], [ 2, %106 ], [ 7, %103 ], [ 7, %125 ], [ 7, %180 ], [ 7, %122 ], [ 7, %178 ], [ 7, %179 ]
  store i32 %185, ptr %104, align 4
  br label %186

186:                                              ; preds = %184, %100
  %187 = and i32 %12, 32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %239, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 7
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 3
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %195 = load ptr, ptr %194, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.13) #6
  br label %237

196:                                              ; preds = %189
  %197 = load ptr, ptr %1, align 4
  %198 = load i32, ptr %5, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %196
  %201 = tail call i32 @i2c_smbus_write_byte(ptr noundef %197, i8 noundef zeroext 9) #5
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = tail call i32 @i2c_smbus_read_byte(ptr noundef %197) #5
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %203, %200
  %207 = phi i32 [ %201, %200 ], [ %204, %203 ]
  %208 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 9) #6
  store i32 %207, ptr %5, align 4
  br label %237

210:                                              ; preds = %196
  %211 = icmp slt i32 %198, 0
  br i1 %211, label %237, label %212

212:                                              ; preds = %210, %203
  %213 = phi i32 [ %198, %210 ], [ %204, %203 ]
  %214 = and i32 %213, 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %237

216:                                              ; preds = %212
  tail call void @msleep(i32 noundef 110) #5
  %217 = load ptr, ptr %1, align 4
  %218 = load i32, ptr %5, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %216
  %221 = tail call i32 @i2c_smbus_write_byte(ptr noundef %217, i8 noundef zeroext 9) #5
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = tail call i32 @i2c_smbus_read_byte(ptr noundef %217) #5
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223, %220
  %227 = phi i32 [ %221, %220 ], [ %224, %223 ]
  %228 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %229 = load ptr, ptr %228, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 9) #6
  store i32 %227, ptr %5, align 4
  br label %237

230:                                              ; preds = %216
  %231 = icmp slt i32 %218, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %230, %223
  %233 = phi i32 [ %218, %230 ], [ %224, %223 ]
  %234 = and i32 %233, 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  tail call fastcc void @sii9234_tmds_control(ptr noundef %1, i1 noundef zeroext false) #5
  tail call fastcc void @force_usb_id_switch_open(ptr noundef %1) #5
  tail call fastcc void @release_usb_id_switch_open(ptr noundef %1) #5
  br label %237

237:                                              ; preds = %236, %232, %230, %226, %212, %210, %206, %193
  %238 = phi i32 [ 7, %193 ], [ 7, %236 ], [ 7, %210 ], [ 4, %212 ], [ 7, %230 ], [ 4, %232 ], [ 7, %206 ], [ 7, %226 ]
  store i32 %238, ptr %190, align 4
  br label %239

239:                                              ; preds = %237, %186
  %240 = and i32 %26, 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %315, label %242

242:                                              ; preds = %239
  %243 = load i32, ptr %5, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %311

245:                                              ; preds = %242
  %246 = load ptr, ptr %1, align 4
  %247 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %246, i8 noundef zeroext -96, i8 noundef zeroext 16) #5
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %251 = load ptr, ptr %250, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 160, i32 noundef 16) #6
  br label %311

252:                                              ; preds = %245
  store i32 %247, ptr %5, align 4
  %253 = icmp eq i32 %247, 0
  br i1 %253, label %254, label %311

254:                                              ; preds = %252
  %255 = load ptr, ptr %70, align 4
  %256 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %255, i8 noundef zeroext 7, i8 noundef zeroext 50) #5
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %260 = load ptr, ptr %259, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %260, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 7, i32 noundef 50) #6
  br label %311

261:                                              ; preds = %254
  store i32 %256, ptr %5, align 4
  %262 = load ptr, ptr %70, align 4
  %263 = icmp eq i32 %256, 0
  br i1 %263, label %264, label %311

264:                                              ; preds = %261
  %265 = tail call i32 @i2c_smbus_write_byte(ptr noundef %262, i8 noundef zeroext 68) #5
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %275, label %267

267:                                              ; preds = %264
  %268 = tail call i32 @i2c_smbus_read_byte(ptr noundef %262) #5
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %267
  %271 = or i32 %268, 2
  %272 = trunc i32 %271 to i8
  %273 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %262, i8 noundef zeroext 68, i8 noundef zeroext %272) #5
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %270, %267, %264
  %276 = phi i32 [ -1, %264 ], [ -1, %267 ], [ %271, %270 ]
  %277 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %278 = load ptr, ptr %277, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 68, i32 noundef %276) #6
  br label %311

279:                                              ; preds = %270
  %280 = load i32, ptr %5, align 4
  %281 = load ptr, ptr %1, align 4
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %283, label %311

283:                                              ; preds = %279
  %284 = tail call i32 @i2c_smbus_write_byte(ptr noundef %281, i8 noundef zeroext -112) #5
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %294, label %286

286:                                              ; preds = %283
  %287 = tail call i32 @i2c_smbus_read_byte(ptr noundef %281) #5
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = or i32 %287, 1
  %291 = trunc i32 %290 to i8
  %292 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %281, i8 noundef zeroext -112, i8 noundef zeroext %291) #5
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %289, %286, %283
  %295 = phi i32 [ -1, %283 ], [ -1, %286 ], [ %290, %289 ]
  %296 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %297 = load ptr, ptr %296, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %297, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 144, i32 noundef %295) #6
  br label %311

298:                                              ; preds = %289
  %299 = load i32, ptr %5, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %311

301:                                              ; preds = %298
  %302 = load ptr, ptr %1, align 4
  %303 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %302, i8 noundef zeroext 117, i8 noundef zeroext 96) #5
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %307 = load ptr, ptr %306, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %307, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 117, i32 noundef 96) #6
  br label %311

308:                                              ; preds = %301
  store i32 0, ptr %5, align 4
  %309 = icmp eq i32 %303, 0
  %310 = select i1 %309, i32 5, i32 7
  br label %312

311:                                              ; preds = %305, %298, %294, %279, %275, %261, %258, %252, %249, %242
  store i32 0, ptr %5, align 4
  br label %312

312:                                              ; preds = %311, %308
  %313 = phi i32 [ %310, %308 ], [ 7, %311 ]
  %314 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 7
  store i32 %313, ptr %314, align 4
  br label %315

315:                                              ; preds = %312, %239
  %316 = and i32 %12, 64
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %343, label %318

318:                                              ; preds = %315
  %319 = load ptr, ptr %70, align 4
  %320 = load i32, ptr %5, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %318
  %323 = tail call i32 @i2c_smbus_write_byte(ptr noundef %319, i8 noundef zeroext 13) #5
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = tail call i32 @i2c_smbus_read_byte(ptr noundef %319) #5
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %325, %322
  %329 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %330 = load ptr, ptr %329, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %330, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, i32 noundef 13) #6
  br label %331

331:                                              ; preds = %328, %318
  store i32 0, ptr %5, align 4
  br label %340

332:                                              ; preds = %325
  %333 = load i32, ptr %5, align 4
  store i32 0, ptr %5, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = and i32 %326, 64
  %337 = icmp ne i32 %336, 0
  tail call fastcc void @sii9234_tmds_control(ptr noundef %1, i1 noundef zeroext %337) #5
  %338 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 7
  %339 = load i32, ptr %338, align 4
  br label %340

340:                                              ; preds = %335, %332, %331
  %341 = phi i32 [ %339, %335 ], [ 7, %332 ], [ 7, %331 ]
  %342 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 7
  store i32 %341, ptr %342, align 4
  br label %343

343:                                              ; preds = %340, %315
  %344 = and i32 %26, 16
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 7
  store i32 7, ptr %347, align 4
  br label %348

348:                                              ; preds = %346, %343
  %349 = and i32 %26, 8
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 7
  store i32 6, ptr %352, align 4
  br label %353

353:                                              ; preds = %351, %348
  %354 = load i32, ptr %5, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %362, label %423

356:                                              ; preds = %93, %83, %79, %68, %65, %62, %58
  %357 = phi i32 [ %12, %62 ], [ %12, %58 ], [ %12, %83 ], [ %12, %93 ], [ %12, %68 ], [ %12, %79 ], [ %66, %65 ]
  %358 = phi i32 [ %26, %62 ], [ %59, %58 ], [ %26, %83 ], [ %26, %93 ], [ %26, %68 ], [ %26, %79 ], [ %66, %65 ]
  %359 = phi ptr [ %64, %62 ], [ %61, %58 ], [ %70, %83 ], [ %70, %93 ], [ %70, %68 ], [ %70, %79 ], [ %67, %65 ]
  %360 = phi i32 [ %63, %62 ], [ %60, %58 ], [ %77, %83 ], [ %77, %93 ], [ %69, %68 ], [ %80, %79 ], [ %66, %65 ]
  %361 = phi i32 [ %63, %62 ], [ %60, %58 ], [ %84, %83 ], [ %94, %93 ], [ %69, %68 ], [ %80, %79 ], [ %66, %65 ]
  store i32 0, ptr %5, align 4
  br label %362

362:                                              ; preds = %356, %353, %97
  %363 = phi i32 [ %12, %353 ], [ %12, %97 ], [ %357, %356 ]
  %364 = phi i32 [ %26, %353 ], [ %26, %97 ], [ %358, %356 ]
  %365 = phi ptr [ %70, %353 ], [ %70, %97 ], [ %359, %356 ]
  %366 = phi i32 [ %77, %353 ], [ %77, %97 ], [ %360, %356 ]
  %367 = phi i32 [ %91, %353 ], [ %91, %97 ], [ %361, %356 ]
  %368 = load ptr, ptr %1, align 4
  %369 = trunc i32 %363 to i8
  %370 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %368, i8 noundef zeroext 113, i8 noundef zeroext %369) #5
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %362
  %373 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %374 = load ptr, ptr %373, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %374, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 113, i32 noundef %363) #6
  br label %423

375:                                              ; preds = %362
  store i32 %370, ptr %5, align 4
  %376 = icmp eq i32 %370, 0
  br i1 %376, label %377, label %423

377:                                              ; preds = %375
  %378 = load ptr, ptr %1, align 4
  %379 = trunc i32 %364 to i8
  %380 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %378, i8 noundef zeroext 116, i8 noundef zeroext %379) #5
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %384 = load ptr, ptr %383, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %384, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 116, i32 noundef %364) #6
  br label %423

385:                                              ; preds = %377
  store i32 %380, ptr %5, align 4
  %386 = icmp eq i32 %380, 0
  br i1 %386, label %387, label %423

387:                                              ; preds = %385
  %388 = load ptr, ptr %365, align 4
  %389 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %388, i8 noundef zeroext -80, i8 noundef zeroext -1) #5
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %387
  %392 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %393 = load ptr, ptr %392, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %393, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 176, i32 noundef 255) #6
  br label %423

394:                                              ; preds = %387
  store i32 %389, ptr %5, align 4
  %395 = icmp eq i32 %389, 0
  br i1 %395, label %396, label %423

396:                                              ; preds = %394
  %397 = load ptr, ptr %365, align 4
  %398 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %397, i8 noundef zeroext -79, i8 noundef zeroext -1) #5
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %402 = load ptr, ptr %401, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %402, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 177, i32 noundef 255) #6
  br label %423

403:                                              ; preds = %396
  store i32 %398, ptr %5, align 4
  %404 = icmp eq i32 %398, 0
  br i1 %404, label %405, label %423

405:                                              ; preds = %403
  %406 = load ptr, ptr %365, align 4
  %407 = trunc i32 %366 to i8
  %408 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %406, i8 noundef zeroext 8, i8 noundef zeroext %407) #5
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %412 = load ptr, ptr %411, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %412, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 8, i32 noundef %366) #6
  br label %423

413:                                              ; preds = %405
  store i32 %408, ptr %5, align 4
  %414 = icmp eq i32 %408, 0
  br i1 %414, label %415, label %423

415:                                              ; preds = %413
  %416 = load ptr, ptr %365, align 4
  %417 = trunc i32 %367 to i8
  %418 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %416, i8 noundef zeroext 30, i8 noundef zeroext %417) #5
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %422 = load ptr, ptr %421, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %422, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 30, i32 noundef %367) #6
  br label %423

423:                                              ; preds = %420, %415, %413, %410, %403, %400, %394, %391, %385, %382, %375, %372, %353
  store i32 0, ptr %5, align 4
  %424 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 7
  %425 = load i32, ptr %424, align 4
  %426 = icmp eq i32 %425, 7
  br i1 %426, label %427, label %432

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 3
  %429 = load ptr, ptr %428, align 4
  tail call void @gpiod_set_value(ptr noundef %429, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %430 = load ptr, ptr %428, align 4
  tail call void @gpiod_set_value(ptr noundef %430, i32 noundef 0) #5
  tail call fastcc void @sii9234_goto_d3(ptr noundef %1)
  %431 = load i32, ptr %424, align 4
  br label %432

432:                                              ; preds = %427, %423
  %433 = phi i32 [ %431, %427 ], [ %425, %423 ]
  %434 = icmp eq i32 %433, 6
  br i1 %434, label %435, label %458

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %437 = load ptr, ptr %436, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %437, ptr noundef nonnull @.str.5) #6
  %438 = getelementptr [4 x ptr], ptr %1, i32 0, i32 1
  %439 = load ptr, ptr %438, align 4
  %440 = load i32, ptr %5, align 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %457

442:                                              ; preds = %435
  %443 = tail call i32 @i2c_smbus_write_byte(ptr noundef %439, i8 noundef zeroext 61) #5
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %453, label %445

445:                                              ; preds = %442
  %446 = tail call i32 @i2c_smbus_read_byte(ptr noundef %439) #5
  %447 = icmp slt i32 %446, 0
  br i1 %447, label %453, label %448

448:                                              ; preds = %445
  %449 = and i32 %446, -2
  %450 = trunc i32 %449 to i8
  %451 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %439, i8 noundef zeroext 61, i8 noundef zeroext %450) #5
  %452 = icmp slt i32 %451, 0
  br i1 %452, label %453, label %457

453:                                              ; preds = %448, %445, %442
  %454 = phi i32 [ 0, %442 ], [ 0, %445 ], [ %449, %448 ]
  %455 = phi i32 [ %443, %442 ], [ %446, %445 ], [ %451, %448 ]
  %456 = load ptr, ptr %436, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %456, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 61, i32 noundef %454) #6
  store i32 %455, ptr %5, align 4
  br label %457

457:                                              ; preds = %453, %448, %435
  store i32 1, ptr %424, align 4
  br label %458

458:                                              ; preds = %457, %432
  tail call void @mutex_unlock(ptr noundef %3) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sii9234_goto_d3(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @sii9234_reset(ptr noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = getelementptr [4 x ptr], ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 3) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef 3) #6
  br label %35

16:                                               ; preds = %8
  store i32 %11, ptr %5, align 4
  %17 = getelementptr [4 x ptr], ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq i32 %11, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = tail call i32 @i2c_smbus_write_byte(ptr noundef %18, i8 noundef zeroext 61) #5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @i2c_smbus_read_byte(ptr noundef %18) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = and i32 %24, -2
  %28 = trunc i32 %27 to i8
  %29 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 61, i8 noundef zeroext %28) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %23, %20
  %32 = phi i32 [ 0, %20 ], [ 0, %23 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 61, i32 noundef %32) #6
  br label %35

35:                                               ; preds = %31, %26, %16, %13, %4
  store i32 0, ptr %5, align 4
  %36 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 7
  store i32 1, ptr %36, align 4
  br label %40

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.sii9234_goto_d3) #6
  br label %40

40:                                               ; preds = %37, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sii9234_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 4
  store i32 0, ptr %2, align 4
  %3 = getelementptr [4 x ptr], ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 61, i8 noundef zeroext 63) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 61, i32 noundef 63) #6
  br label %957

10:                                               ; preds = %1
  store i32 %5, ptr %2, align 4
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %10
  %13 = getelementptr [4 x ptr], ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 17, i8 noundef zeroext 1) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 17, i32 noundef 1) #6
  br label %957

20:                                               ; preds = %12
  store i32 %15, ptr %2, align 4
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = load ptr, ptr %13, align 4
  %24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 18, i8 noundef zeroext 21) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 18, i32 noundef 21) #6
  br label %957

29:                                               ; preds = %22
  store i32 %24, ptr %2, align 4
  %30 = icmp eq i32 %24, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = load ptr, ptr %0, align 4
  %33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 8, i8 noundef zeroext 53) #5
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 8, i32 noundef 53) #6
  br label %957

38:                                               ; preds = %31, %29, %20, %10
  store i32 0, ptr %2, align 4
  %39 = load ptr, ptr %0, align 4
  %40 = tail call i32 @i2c_smbus_write_byte(ptr noundef %39, i8 noundef zeroext 5) #5
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @i2c_smbus_read_byte(ptr noundef %39) #5
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = or i32 %43, 8
  %47 = trunc i32 %46 to i8
  %48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext 5, i8 noundef zeroext %47) #5
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45, %42, %38
  %51 = phi i32 [ -1, %38 ], [ -1, %42 ], [ %46, %45 ]
  %52 = phi i32 [ %40, %38 ], [ %43, %42 ], [ %48, %45 ]
  %53 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 5, i32 noundef %51) #6
  store i32 %52, ptr %2, align 4
  br label %55

55:                                               ; preds = %50, %45
  tail call void @msleep(i32 noundef 2) #5
  %56 = load ptr, ptr %0, align 4
  %57 = load i32, ptr %2, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %143

59:                                               ; preds = %55
  %60 = tail call i32 @i2c_smbus_write_byte(ptr noundef %56, i8 noundef zeroext 5) #5
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @i2c_smbus_read_byte(ptr noundef %56) #5
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = and i32 %63, -9
  %67 = trunc i32 %66 to i8
  %68 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext 5, i8 noundef zeroext %67) #5
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65, %62, %59
  %71 = phi i32 [ 0, %59 ], [ 0, %62 ], [ %66, %65 ]
  %72 = phi i32 [ %60, %59 ], [ %63, %62 ], [ %68, %65 ]
  %73 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 5, i32 noundef %71) #6
  br label %957

75:                                               ; preds = %65
  %76 = load i32, ptr %2, align 4
  %77 = getelementptr [4 x ptr], ptr %0, i32 0, i32 3
  %78 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %80, label %143

80:                                               ; preds = %75
  %81 = load ptr, ptr %77, align 4
  %82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext -32, i8 noundef zeroext -14) #5
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 224, i32 noundef 242) #6
  br label %957

86:                                               ; preds = %80
  store i32 %82, ptr %2, align 4
  %87 = icmp eq i32 %82, 0
  br i1 %87, label %88, label %142

88:                                               ; preds = %86
  %89 = load ptr, ptr %77, align 4
  %90 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext -16, i8 noundef zeroext -14) #5
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 240, i32 noundef 242) #6
  br label %957

94:                                               ; preds = %88
  store i32 %90, ptr %2, align 4
  %95 = icmp eq i32 %90, 0
  br i1 %95, label %96, label %142

96:                                               ; preds = %94
  %97 = load ptr, ptr %77, align 4
  %98 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %97, i8 noundef zeroext -31, i8 noundef zeroext -14) #5
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  store i32 %98, ptr %2, align 4
  %101 = icmp eq i32 %98, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %100
  %103 = load ptr, ptr %77, align 4
  %104 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %103, i8 noundef zeroext -15, i8 noundef zeroext -14) #5
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 241, i32 noundef 242) #6
  br label %957

108:                                              ; preds = %96
  %109 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 225, i32 noundef 242) #6
  br label %957

110:                                              ; preds = %102
  store i32 %104, ptr %2, align 4
  %111 = icmp eq i32 %104, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %110
  %113 = load ptr, ptr %77, align 4
  %114 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %113, i8 noundef zeroext -30, i8 noundef zeroext -14) #5
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  store i32 %114, ptr %2, align 4
  %117 = icmp eq i32 %114, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %116
  %119 = load ptr, ptr %77, align 4
  %120 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %119, i8 noundef zeroext -14, i8 noundef zeroext -14) #5
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 242, i32 noundef 242) #6
  br label %957

124:                                              ; preds = %112
  %125 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 226, i32 noundef 242) #6
  br label %957

126:                                              ; preds = %118
  store i32 %120, ptr %2, align 4
  %127 = icmp eq i32 %120, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %126
  %129 = load ptr, ptr %77, align 4
  %130 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %129, i8 noundef zeroext -29, i8 noundef zeroext -14) #5
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  store i32 %130, ptr %2, align 4
  %133 = icmp eq i32 %130, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %132
  %135 = load ptr, ptr %77, align 4
  %136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %135, i8 noundef zeroext -13, i8 noundef zeroext -14) #5
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 243, i32 noundef 242) #6
  br label %143

140:                                              ; preds = %128
  %141 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 227, i32 noundef 242) #6
  br label %957

142:                                              ; preds = %132, %126, %116, %110, %100, %94, %86
  store i32 0, ptr %2, align 4
  br label %146

143:                                              ; preds = %138, %134, %75, %55
  %144 = phi i32 [ %76, %75 ], [ %57, %55 ], [ %136, %138 ], [ %136, %134 ]
  store i32 0, ptr %2, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %959, label %146

146:                                              ; preds = %143, %142
  %147 = getelementptr [4 x ptr], ptr %0, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %148, i8 noundef zeroext 16, i8 noundef zeroext -63) #5
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 16, i32 noundef 193) #6
  br label %957

154:                                              ; preds = %146
  store i32 %149, ptr %2, align 4
  %155 = icmp eq i32 %149, 0
  br i1 %155, label %156, label %271

156:                                              ; preds = %154
  %157 = load ptr, ptr %147, align 4
  %158 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %157, i8 noundef zeroext 23, i8 noundef zeroext 3) #5
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 23, i32 noundef 3) #6
  br label %957

163:                                              ; preds = %156
  store i32 %158, ptr %2, align 4
  %164 = icmp eq i32 %158, 0
  br i1 %164, label %165, label %271

165:                                              ; preds = %163
  %166 = load ptr, ptr %147, align 4
  %167 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %166, i8 noundef zeroext 26, i8 noundef zeroext 32) #5
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %171 = load ptr, ptr %170, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 26, i32 noundef 32) #6
  br label %957

172:                                              ; preds = %165
  store i32 %167, ptr %2, align 4
  %173 = icmp eq i32 %167, 0
  br i1 %173, label %174, label %271

174:                                              ; preds = %172
  %175 = load ptr, ptr %147, align 4
  %176 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %175, i8 noundef zeroext 34, i8 noundef zeroext -118) #5
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 34, i32 noundef 138) #6
  br label %957

181:                                              ; preds = %174
  store i32 %176, ptr %2, align 4
  %182 = icmp eq i32 %176, 0
  br i1 %182, label %183, label %271

183:                                              ; preds = %181
  %184 = load ptr, ptr %147, align 4
  %185 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %184, i8 noundef zeroext 35, i8 noundef zeroext 106) #5
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %189 = load ptr, ptr %188, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 35, i32 noundef 106) #6
  br label %957

190:                                              ; preds = %183
  store i32 %185, ptr %2, align 4
  %191 = icmp eq i32 %185, 0
  br i1 %191, label %192, label %271

192:                                              ; preds = %190
  %193 = load ptr, ptr %147, align 4
  %194 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %193, i8 noundef zeroext 36, i8 noundef zeroext -86) #5
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %198 = load ptr, ptr %197, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 36, i32 noundef 170) #6
  br label %957

199:                                              ; preds = %192
  store i32 %194, ptr %2, align 4
  %200 = icmp eq i32 %194, 0
  br i1 %200, label %201, label %271

201:                                              ; preds = %199
  %202 = load ptr, ptr %147, align 4
  %203 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %202, i8 noundef zeroext 37, i8 noundef zeroext -54) #5
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 37, i32 noundef 202) #6
  br label %957

208:                                              ; preds = %201
  store i32 %203, ptr %2, align 4
  %209 = icmp eq i32 %203, 0
  br i1 %209, label %210, label %271

210:                                              ; preds = %208
  %211 = load ptr, ptr %147, align 4
  %212 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %211, i8 noundef zeroext 38, i8 noundef zeroext -22) #5
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %216 = load ptr, ptr %215, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 38, i32 noundef 234) #6
  br label %957

217:                                              ; preds = %210
  store i32 %212, ptr %2, align 4
  %218 = icmp eq i32 %212, 0
  br i1 %218, label %219, label %271

219:                                              ; preds = %217
  %220 = load ptr, ptr %147, align 4
  %221 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %220, i8 noundef zeroext 76, i8 noundef zeroext -96) #5
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %225 = load ptr, ptr %224, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 76, i32 noundef 160) #6
  br label %957

226:                                              ; preds = %219
  store i32 %221, ptr %2, align 4
  %227 = icmp eq i32 %221, 0
  br i1 %227, label %228, label %271

228:                                              ; preds = %226
  %229 = load ptr, ptr %147, align 4
  %230 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %229, i8 noundef zeroext 77, i8 noundef zeroext 0) #5
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %234 = load ptr, ptr %233, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 77, i32 noundef 0) #6
  br label %957

235:                                              ; preds = %228
  store i32 %230, ptr %2, align 4
  %236 = icmp eq i32 %230, 0
  br i1 %236, label %237, label %271

237:                                              ; preds = %235
  %238 = load ptr, ptr %0, align 4
  %239 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %238, i8 noundef zeroext -128, i8 noundef zeroext 52) #5
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 128, i32 noundef 52) #6
  br label %957

244:                                              ; preds = %237
  store i32 %239, ptr %2, align 4
  %245 = icmp eq i32 %239, 0
  br i1 %245, label %246, label %271

246:                                              ; preds = %244
  %247 = load ptr, ptr %147, align 4
  %248 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %247, i8 noundef zeroext 69, i8 noundef zeroext 68) #5
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %252 = load ptr, ptr %251, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %252, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 69, i32 noundef 68) #6
  br label %957

253:                                              ; preds = %246
  store i32 %248, ptr %2, align 4
  %254 = icmp eq i32 %248, 0
  br i1 %254, label %255, label %271

255:                                              ; preds = %253
  %256 = load ptr, ptr %147, align 4
  %257 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %256, i8 noundef zeroext 49, i8 noundef zeroext 10) #5
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %261 = load ptr, ptr %260, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 49, i32 noundef 10) #6
  br label %957

262:                                              ; preds = %255
  store i32 %257, ptr %2, align 4
  %263 = icmp eq i32 %257, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %262
  %265 = load ptr, ptr %147, align 4
  %266 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %265, i8 noundef zeroext 16, i8 noundef zeroext -63) #5
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %270 = load ptr, ptr %269, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %270, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 16, i32 noundef 193) #6
  br label %957

271:                                              ; preds = %264, %262, %253, %244, %235, %226, %217, %208, %199, %190, %181, %172, %163, %154
  store i32 0, ptr %2, align 4
  %272 = load ptr, ptr %0, align 4
  %273 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %272, i8 noundef zeroext -96, i8 noundef zeroext -48) #5
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %277 = load ptr, ptr %276, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %277, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 160, i32 noundef 208) #6
  br label %957

278:                                              ; preds = %271
  store i32 %273, ptr %2, align 4
  %279 = icmp eq i32 %273, 0
  br i1 %279, label %280, label %305

280:                                              ; preds = %278
  %281 = load ptr, ptr %0, align 4
  %282 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %281, i8 noundef zeroext -95, i8 noundef zeroext -4) #5
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %286 = load ptr, ptr %285, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %286, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 161, i32 noundef 252) #6
  br label %957

287:                                              ; preds = %280
  store i32 %282, ptr %2, align 4
  %288 = icmp eq i32 %282, 0
  br i1 %288, label %289, label %305

289:                                              ; preds = %287
  %290 = load ptr, ptr %0, align 4
  %291 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %290, i8 noundef zeroext -93, i8 noundef zeroext -21) #5
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %295 = load ptr, ptr %294, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %295, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 235) #6
  br label %957

296:                                              ; preds = %289
  store i32 %291, ptr %2, align 4
  %297 = icmp eq i32 %291, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %296
  %299 = load ptr, ptr %0, align 4
  %300 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %299, i8 noundef zeroext -90, i8 noundef zeroext 12) #5
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %304 = load ptr, ptr %303, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %304, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 166, i32 noundef 12) #6
  br label %957

305:                                              ; preds = %298, %296, %287, %278
  store i32 0, ptr %2, align 4
  %306 = load ptr, ptr %0, align 4
  %307 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %306, i8 noundef zeroext 43, i8 noundef zeroext 1) #5
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %311 = load ptr, ptr %310, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %311, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 43, i32 noundef 1) #6
  br label %354

312:                                              ; preds = %305
  store i32 %307, ptr %2, align 4
  %313 = load ptr, ptr %0, align 4
  %314 = icmp eq i32 %307, 0
  br i1 %314, label %315, label %356

315:                                              ; preds = %312
  %316 = tail call i32 @i2c_smbus_write_byte(ptr noundef %313, i8 noundef zeroext -112) #5
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %327, label %318

318:                                              ; preds = %315
  %319 = tail call i32 @i2c_smbus_read_byte(ptr noundef %313) #5
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %327, label %321

321:                                              ; preds = %318
  %322 = and i32 %319, -7
  %323 = or i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %313, i8 noundef zeroext -112, i8 noundef zeroext %324) #5
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %321, %318, %315
  %328 = phi i32 [ 4, %315 ], [ 4, %318 ], [ %323, %321 ]
  %329 = phi i32 [ %316, %315 ], [ %319, %318 ], [ %325, %321 ]
  %330 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %331 = load ptr, ptr %330, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %331, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 144, i32 noundef %328) #6
  br label %354

332:                                              ; preds = %321
  %333 = load i32, ptr %2, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %332
  %336 = getelementptr [4 x ptr], ptr %0, i32 0, i32 3
  br label %485

337:                                              ; preds = %332
  %338 = load ptr, ptr %0, align 4
  %339 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %338, i8 noundef zeroext -111, i8 noundef zeroext -91) #5
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %343 = load ptr, ptr %342, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %343, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 145, i32 noundef 165) #6
  br label %354

344:                                              ; preds = %337
  store i32 %339, ptr %2, align 4
  %345 = icmp eq i32 %339, 0
  br i1 %345, label %346, label %356

346:                                              ; preds = %344
  %347 = load ptr, ptr %0, align 4
  %348 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %347, i8 noundef zeroext -108, i8 noundef zeroext 119) #5
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %352 = load ptr, ptr %351, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %352, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 148, i32 noundef 119) #6
  store i32 %348, ptr %2, align 4
  %353 = getelementptr [4 x ptr], ptr %0, i32 0, i32 3
  br label %485

354:                                              ; preds = %341, %327, %309
  %355 = phi i32 [ %339, %341 ], [ %307, %309 ], [ %329, %327 ]
  store i32 %355, ptr %2, align 4
  br label %356

356:                                              ; preds = %354, %344, %312
  %357 = getelementptr [4 x ptr], ptr %0, i32 0, i32 3
  br label %485

358:                                              ; preds = %346
  store i32 %348, ptr %2, align 4
  %359 = getelementptr [4 x ptr], ptr %0, i32 0, i32 3
  %360 = load ptr, ptr %359, align 4
  %361 = icmp eq i32 %348, 0
  br i1 %361, label %362, label %485

362:                                              ; preds = %358
  %363 = tail call i32 @i2c_smbus_write_byte(ptr noundef %360, i8 noundef zeroext 49) #5
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %373, label %365

365:                                              ; preds = %362
  %366 = tail call i32 @i2c_smbus_read_byte(ptr noundef %360) #5
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %373, label %368

368:                                              ; preds = %365
  %369 = or i32 %366, 12
  %370 = trunc i32 %369 to i8
  %371 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %360, i8 noundef zeroext 49, i8 noundef zeroext %370) #5
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %368, %365, %362
  %374 = phi i32 [ -1, %362 ], [ -1, %365 ], [ %369, %368 ]
  %375 = phi i32 [ %363, %362 ], [ %366, %365 ], [ %371, %368 ]
  %376 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %377 = load ptr, ptr %376, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %377, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 49, i32 noundef %374) #6
  store i32 %375, ptr %2, align 4
  br label %485

378:                                              ; preds = %368
  %379 = load i32, ptr %2, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %485

381:                                              ; preds = %378
  %382 = load ptr, ptr %0, align 4
  %383 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %382, i8 noundef zeroext -91, i8 noundef zeroext -96) #5
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %387 = load ptr, ptr %386, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %387, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 165, i32 noundef 160) #6
  store i32 %383, ptr %2, align 4
  br label %485

388:                                              ; preds = %381
  store i32 %383, ptr %2, align 4
  %389 = icmp eq i32 %383, 0
  br i1 %389, label %390, label %485

390:                                              ; preds = %388
  %391 = load ptr, ptr %0, align 4
  %392 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %391, i8 noundef zeroext -107, i8 noundef zeroext 49) #5
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %396 = load ptr, ptr %395, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %396, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 149, i32 noundef 49) #6
  store i32 %392, ptr %2, align 4
  br label %485

397:                                              ; preds = %390
  store i32 %392, ptr %2, align 4
  %398 = icmp eq i32 %392, 0
  br i1 %398, label %399, label %485

399:                                              ; preds = %397
  %400 = load ptr, ptr %0, align 4
  %401 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %400, i8 noundef zeroext -105, i8 noundef zeroext 0) #5
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %405 = load ptr, ptr %404, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %405, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 151, i32 noundef 0) #6
  store i32 %401, ptr %2, align 4
  br label %485

406:                                              ; preds = %399
  store i32 %401, ptr %2, align 4
  %407 = load ptr, ptr %0, align 4
  %408 = icmp eq i32 %401, 0
  br i1 %408, label %409, label %485

409:                                              ; preds = %406
  %410 = tail call i32 @i2c_smbus_write_byte(ptr noundef %407, i8 noundef zeroext -107) #5
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %420, label %412

412:                                              ; preds = %409
  %413 = tail call i32 @i2c_smbus_read_byte(ptr noundef %407) #5
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %420, label %415

415:                                              ; preds = %412
  %416 = or i32 %413, 64
  %417 = trunc i32 %416 to i8
  %418 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %407, i8 noundef zeroext -107, i8 noundef zeroext %417) #5
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %415, %412, %409
  %421 = phi i32 [ -1, %409 ], [ -1, %412 ], [ %416, %415 ]
  %422 = phi i32 [ %410, %409 ], [ %413, %412 ], [ %418, %415 ]
  %423 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %424 = load ptr, ptr %423, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %424, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 149, i32 noundef %421) #6
  store i32 %422, ptr %2, align 4
  br label %485

425:                                              ; preds = %415
  %426 = load i32, ptr %2, align 4
  %427 = load ptr, ptr %0, align 4
  %428 = icmp eq i32 %426, 0
  br i1 %428, label %429, label %485

429:                                              ; preds = %425
  %430 = tail call i32 @i2c_smbus_write_byte(ptr noundef %427, i8 noundef zeroext -110) #5
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %440, label %432

432:                                              ; preds = %429
  %433 = tail call i32 @i2c_smbus_read_byte(ptr noundef %427) #5
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %440, label %435

435:                                              ; preds = %432
  %436 = or i32 %433, 134
  %437 = trunc i32 %436 to i8
  %438 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %427, i8 noundef zeroext -110, i8 noundef zeroext %437) #5
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %440, label %445

440:                                              ; preds = %435, %432, %429
  %441 = phi i32 [ -1, %429 ], [ -1, %432 ], [ %436, %435 ]
  %442 = phi i32 [ %430, %429 ], [ %433, %432 ], [ %438, %435 ]
  %443 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %444 = load ptr, ptr %443, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %444, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 146, i32 noundef %441) #6
  store i32 %442, ptr %2, align 4
  br label %485

445:                                              ; preds = %435
  %446 = load i32, ptr %2, align 4
  %447 = load ptr, ptr %0, align 4
  %448 = icmp eq i32 %446, 0
  br i1 %448, label %449, label %485

449:                                              ; preds = %445
  %450 = tail call i32 @i2c_smbus_write_byte(ptr noundef %447, i8 noundef zeroext -109) #5
  %451 = icmp slt i32 %450, 0
  br i1 %451, label %460, label %452

452:                                              ; preds = %449
  %453 = tail call i32 @i2c_smbus_read_byte(ptr noundef %447) #5
  %454 = icmp slt i32 %453, 0
  br i1 %454, label %460, label %455

455:                                              ; preds = %452
  %456 = or i32 %453, 140
  %457 = trunc i32 %456 to i8
  %458 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %447, i8 noundef zeroext -109, i8 noundef zeroext %457) #5
  %459 = icmp slt i32 %458, 0
  br i1 %459, label %460, label %465

460:                                              ; preds = %455, %452, %449
  %461 = phi i32 [ -1, %449 ], [ -1, %452 ], [ %456, %455 ]
  %462 = phi i32 [ %450, %449 ], [ %453, %452 ], [ %458, %455 ]
  %463 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %464 = load ptr, ptr %463, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %464, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 147, i32 noundef %461) #6
  store i32 %462, ptr %2, align 4
  br label %485

465:                                              ; preds = %455
  %466 = load i32, ptr %2, align 4
  %467 = load ptr, ptr %0, align 4
  %468 = icmp eq i32 %466, 0
  br i1 %468, label %469, label %485

469:                                              ; preds = %465
  %470 = tail call i32 @i2c_smbus_write_byte(ptr noundef %467, i8 noundef zeroext 121) #5
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %480, label %472

472:                                              ; preds = %469
  %473 = tail call i32 @i2c_smbus_read_byte(ptr noundef %467) #5
  %474 = icmp slt i32 %473, 0
  br i1 %474, label %480, label %475

475:                                              ; preds = %472
  %476 = and i32 %473, -7
  %477 = trunc i32 %476 to i8
  %478 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %467, i8 noundef zeroext 121, i8 noundef zeroext %477) #5
  %479 = icmp slt i32 %478, 0
  br i1 %479, label %480, label %485

480:                                              ; preds = %475, %472, %469
  %481 = phi i32 [ 0, %469 ], [ 0, %472 ], [ %476, %475 ]
  %482 = phi i32 [ %470, %469 ], [ %473, %472 ], [ %478, %475 ]
  %483 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %484 = load ptr, ptr %483, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %484, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 121, i32 noundef %481) #6
  store i32 %482, ptr %2, align 4
  br label %485

485:                                              ; preds = %480, %475, %465, %460, %445, %440, %425, %420, %406, %403, %397, %394, %388, %385, %378, %373, %358, %356, %350, %335
  %486 = phi ptr [ %359, %465 ], [ %359, %475 ], [ %359, %480 ], [ %359, %460 ], [ %359, %445 ], [ %359, %378 ], [ %359, %420 ], [ %359, %440 ], [ %359, %425 ], [ %353, %350 ], [ %357, %356 ], [ %359, %358 ], [ %359, %403 ], [ %359, %406 ], [ %359, %394 ], [ %359, %397 ], [ %359, %385 ], [ %359, %388 ], [ %336, %335 ], [ %359, %373 ]
  tail call void @msleep(i32 noundef 25) #5
  %487 = load ptr, ptr %0, align 4
  %488 = load i32, ptr %2, align 4
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %516

490:                                              ; preds = %485
  %491 = tail call i32 @i2c_smbus_write_byte(ptr noundef %487, i8 noundef zeroext -107) #5
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %501, label %493

493:                                              ; preds = %490
  %494 = tail call i32 @i2c_smbus_read_byte(ptr noundef %487) #5
  %495 = icmp slt i32 %494, 0
  br i1 %495, label %501, label %496

496:                                              ; preds = %493
  %497 = and i32 %494, -65
  %498 = trunc i32 %497 to i8
  %499 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %487, i8 noundef zeroext -107, i8 noundef zeroext %498) #5
  %500 = icmp slt i32 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %496, %493, %490
  %502 = phi i32 [ 0, %490 ], [ 0, %493 ], [ %497, %496 ]
  %503 = phi i32 [ %491, %490 ], [ %494, %493 ], [ %499, %496 ]
  %504 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %505 = load ptr, ptr %504, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %505, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 149, i32 noundef %502) #6
  br label %957

506:                                              ; preds = %496
  %507 = load i32, ptr %2, align 4
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %516

509:                                              ; preds = %506
  %510 = load ptr, ptr %0, align 4
  %511 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %510, i8 noundef zeroext -112, i8 noundef zeroext 39) #5
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %515 = load ptr, ptr %514, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %515, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 144, i32 noundef 39) #6
  br label %516

516:                                              ; preds = %513, %509, %506, %485
  %517 = phi i32 [ %507, %506 ], [ %488, %485 ], [ %511, %513 ], [ %511, %509 ]
  store i32 0, ptr %2, align 4
  %518 = icmp slt i32 %517, 0
  br i1 %518, label %959, label %519

519:                                              ; preds = %516
  %520 = load ptr, ptr %486, align 4
  %521 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %520, i8 noundef zeroext 7, i8 noundef zeroext -14) #5
  %522 = icmp slt i32 %521, 0
  br i1 %522, label %523, label %526

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %525 = load ptr, ptr %524, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %525, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 7, i32 noundef 242) #6
  br label %957

526:                                              ; preds = %519
  store i32 %521, ptr %2, align 4
  %527 = icmp eq i32 %521, 0
  br i1 %527, label %528, label %833

528:                                              ; preds = %526
  %529 = load ptr, ptr %486, align 4
  %530 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %529, i8 noundef zeroext 64, i8 noundef zeroext 3) #5
  %531 = icmp slt i32 %530, 0
  br i1 %531, label %532, label %535

532:                                              ; preds = %528
  %533 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %534 = load ptr, ptr %533, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %534, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 64, i32 noundef 3) #6
  br label %957

535:                                              ; preds = %528
  store i32 %530, ptr %2, align 4
  %536 = icmp eq i32 %530, 0
  br i1 %536, label %537, label %833

537:                                              ; preds = %535
  %538 = load ptr, ptr %486, align 4
  %539 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %538, i8 noundef zeroext 66, i8 noundef zeroext 6) #5
  %540 = icmp slt i32 %539, 0
  br i1 %540, label %541, label %544

541:                                              ; preds = %537
  %542 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %543 = load ptr, ptr %542, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %543, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 66, i32 noundef 6) #6
  br label %957

544:                                              ; preds = %537
  store i32 %539, ptr %2, align 4
  %545 = icmp eq i32 %539, 0
  br i1 %545, label %546, label %833

546:                                              ; preds = %544
  %547 = load ptr, ptr %486, align 4
  %548 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %547, i8 noundef zeroext 54, i8 noundef zeroext 12) #5
  %549 = icmp slt i32 %548, 0
  br i1 %549, label %550, label %553

550:                                              ; preds = %546
  %551 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %552 = load ptr, ptr %551, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %552, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 54, i32 noundef 12) #6
  br label %957

553:                                              ; preds = %546
  store i32 %548, ptr %2, align 4
  %554 = icmp eq i32 %548, 0
  br i1 %554, label %555, label %833

555:                                              ; preds = %553
  %556 = load ptr, ptr %486, align 4
  %557 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %556, i8 noundef zeroext 61, i8 noundef zeroext -3) #5
  %558 = icmp slt i32 %557, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %555
  %560 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %561 = load ptr, ptr %560, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %561, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 61, i32 noundef 253) #6
  br label %957

562:                                              ; preds = %555
  store i32 %557, ptr %2, align 4
  %563 = icmp eq i32 %557, 0
  br i1 %563, label %564, label %833

564:                                              ; preds = %562
  %565 = load ptr, ptr %486, align 4
  %566 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %565, i8 noundef zeroext 28, i8 noundef zeroext 1) #5
  %567 = icmp slt i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %564
  %569 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %570 = load ptr, ptr %569, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %570, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 28, i32 noundef 1) #6
  br label %957

571:                                              ; preds = %564
  store i32 %566, ptr %2, align 4
  %572 = icmp eq i32 %566, 0
  br i1 %572, label %573, label %833

573:                                              ; preds = %571
  %574 = load ptr, ptr %486, align 4
  %575 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %574, i8 noundef zeroext 29, i8 noundef zeroext 15) #5
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %577, label %580

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %579 = load ptr, ptr %578, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %579, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 29, i32 noundef 15) #6
  br label %957

580:                                              ; preds = %573
  store i32 %575, ptr %2, align 4
  %581 = icmp eq i32 %575, 0
  br i1 %581, label %582, label %833

582:                                              ; preds = %580
  %583 = load ptr, ptr %486, align 4
  %584 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %583, i8 noundef zeroext 68, i8 noundef zeroext 2) #5
  %585 = icmp slt i32 %584, 0
  br i1 %585, label %586, label %589

586:                                              ; preds = %582
  %587 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %588 = load ptr, ptr %587, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %588, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 68, i32 noundef 2) #6
  br label %957

589:                                              ; preds = %582
  store i32 %584, ptr %2, align 4
  %590 = icmp eq i32 %584, 0
  br i1 %590, label %591, label %833

591:                                              ; preds = %589
  %592 = load ptr, ptr %486, align 4
  %593 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %592, i8 noundef zeroext -128, i8 noundef zeroext 0) #5
  %594 = icmp slt i32 %593, 0
  br i1 %594, label %595, label %598

595:                                              ; preds = %591
  %596 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %597 = load ptr, ptr %596, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %597, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 128, i32 noundef 0) #6
  br label %957

598:                                              ; preds = %591
  store i32 %593, ptr %2, align 4
  %599 = icmp eq i32 %593, 0
  br i1 %599, label %600, label %833

600:                                              ; preds = %598
  %601 = load ptr, ptr %486, align 4
  %602 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %601, i8 noundef zeroext -127, i8 noundef zeroext 17) #5
  %603 = icmp slt i32 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %606 = load ptr, ptr %605, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %606, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 129, i32 noundef 17) #6
  br label %957

607:                                              ; preds = %600
  store i32 %602, ptr %2, align 4
  %608 = icmp eq i32 %602, 0
  br i1 %608, label %609, label %833

609:                                              ; preds = %607
  %610 = load ptr, ptr %486, align 4
  %611 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %610, i8 noundef zeroext -126, i8 noundef zeroext 2) #5
  %612 = icmp slt i32 %611, 0
  br i1 %612, label %613, label %616

613:                                              ; preds = %609
  %614 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %615 = load ptr, ptr %614, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %615, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 130, i32 noundef 2) #6
  br label %957

616:                                              ; preds = %609
  store i32 %611, ptr %2, align 4
  %617 = icmp eq i32 %611, 0
  br i1 %617, label %618, label %833

618:                                              ; preds = %616
  %619 = load ptr, ptr %486, align 4
  %620 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %619, i8 noundef zeroext -125, i8 noundef zeroext 1) #5
  %621 = icmp slt i32 %620, 0
  br i1 %621, label %622, label %625

622:                                              ; preds = %618
  %623 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %624 = load ptr, ptr %623, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %624, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 131, i32 noundef 1) #6
  br label %957

625:                                              ; preds = %618
  store i32 %620, ptr %2, align 4
  %626 = icmp eq i32 %620, 0
  br i1 %626, label %627, label %833

627:                                              ; preds = %625
  %628 = load ptr, ptr %486, align 4
  %629 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %628, i8 noundef zeroext -124, i8 noundef zeroext 65) #5
  %630 = icmp slt i32 %629, 0
  br i1 %630, label %631, label %634

631:                                              ; preds = %627
  %632 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %633 = load ptr, ptr %632, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %633, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 132, i32 noundef 65) #6
  br label %957

634:                                              ; preds = %627
  store i32 %629, ptr %2, align 4
  %635 = icmp eq i32 %629, 0
  br i1 %635, label %636, label %833

636:                                              ; preds = %634
  %637 = load ptr, ptr %486, align 4
  %638 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %637, i8 noundef zeroext -123, i8 noundef zeroext 3) #5
  %639 = icmp slt i32 %638, 0
  br i1 %639, label %640, label %643

640:                                              ; preds = %636
  %641 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %642 = load ptr, ptr %641, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %642, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 133, i32 noundef 3) #6
  br label %957

643:                                              ; preds = %636
  store i32 %638, ptr %2, align 4
  %644 = icmp eq i32 %638, 0
  br i1 %644, label %645, label %833

645:                                              ; preds = %643
  %646 = load ptr, ptr %486, align 4
  %647 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %646, i8 noundef zeroext -121, i8 noundef zeroext 0) #5
  %648 = icmp slt i32 %647, 0
  br i1 %648, label %649, label %652

649:                                              ; preds = %645
  %650 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %651 = load ptr, ptr %650, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %651, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 135, i32 noundef 0) #6
  br label %957

652:                                              ; preds = %645
  store i32 %647, ptr %2, align 4
  %653 = icmp eq i32 %647, 0
  br i1 %653, label %654, label %833

654:                                              ; preds = %652
  %655 = load ptr, ptr %486, align 4
  %656 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %655, i8 noundef zeroext -120, i8 noundef zeroext -128) #5
  %657 = icmp slt i32 %656, 0
  br i1 %657, label %658, label %661

658:                                              ; preds = %654
  %659 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %660 = load ptr, ptr %659, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %660, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 136, i32 noundef 128) #6
  br label %957

661:                                              ; preds = %654
  store i32 %656, ptr %2, align 4
  %662 = icmp eq i32 %656, 0
  br i1 %662, label %663, label %833

663:                                              ; preds = %661
  %664 = load ptr, ptr %486, align 4
  %665 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %664, i8 noundef zeroext -119, i8 noundef zeroext 15) #5
  %666 = icmp slt i32 %665, 0
  br i1 %666, label %667, label %670

667:                                              ; preds = %663
  %668 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %669 = load ptr, ptr %668, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %669, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 137, i32 noundef 15) #6
  br label %957

670:                                              ; preds = %663
  store i32 %665, ptr %2, align 4
  %671 = icmp eq i32 %665, 0
  br i1 %671, label %672, label %833

672:                                              ; preds = %670
  %673 = load ptr, ptr %486, align 4
  %674 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %673, i8 noundef zeroext -118, i8 noundef zeroext 7) #5
  %675 = icmp slt i32 %674, 0
  br i1 %675, label %676, label %679

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %678 = load ptr, ptr %677, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %678, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 138, i32 noundef 7) #6
  store i32 %674, ptr %2, align 4
  br label %957

679:                                              ; preds = %672
  store i32 %674, ptr %2, align 4
  %680 = icmp eq i32 %674, 0
  br i1 %680, label %681, label %833

681:                                              ; preds = %679
  %682 = load ptr, ptr %486, align 4
  %683 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %682, i8 noundef zeroext -117, i8 noundef zeroext 0) #5
  %684 = icmp slt i32 %683, 0
  br i1 %684, label %685, label %688

685:                                              ; preds = %681
  %686 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %687 = load ptr, ptr %686, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %687, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 0) #6
  store i32 %683, ptr %2, align 4
  br label %957

688:                                              ; preds = %681
  store i32 %683, ptr %2, align 4
  %689 = icmp eq i32 %683, 0
  br i1 %689, label %690, label %833

690:                                              ; preds = %688
  %691 = load ptr, ptr %486, align 4
  %692 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %691, i8 noundef zeroext -116, i8 noundef zeroext 0) #5
  %693 = icmp slt i32 %692, 0
  br i1 %693, label %694, label %697

694:                                              ; preds = %690
  %695 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %696 = load ptr, ptr %695, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %696, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 140, i32 noundef 0) #6
  store i32 %692, ptr %2, align 4
  br label %957

697:                                              ; preds = %690
  store i32 %692, ptr %2, align 4
  %698 = icmp eq i32 %692, 0
  br i1 %698, label %699, label %833

699:                                              ; preds = %697
  %700 = load ptr, ptr %486, align 4
  %701 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %700, i8 noundef zeroext -115, i8 noundef zeroext 16) #5
  %702 = icmp slt i32 %701, 0
  br i1 %702, label %703, label %706

703:                                              ; preds = %699
  %704 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %705 = load ptr, ptr %704, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %705, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 141, i32 noundef 16) #6
  store i32 %701, ptr %2, align 4
  br label %957

706:                                              ; preds = %699
  store i32 %701, ptr %2, align 4
  %707 = icmp eq i32 %701, 0
  br i1 %707, label %708, label %833

708:                                              ; preds = %706
  %709 = load ptr, ptr %486, align 4
  %710 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %709, i8 noundef zeroext -114, i8 noundef zeroext 51) #5
  %711 = icmp slt i32 %710, 0
  br i1 %711, label %712, label %715

712:                                              ; preds = %708
  %713 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %714 = load ptr, ptr %713, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %714, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 142, i32 noundef 51) #6
  store i32 %710, ptr %2, align 4
  br label %957

715:                                              ; preds = %708
  store i32 %710, ptr %2, align 4
  %716 = icmp eq i32 %710, 0
  br i1 %716, label %717, label %833

717:                                              ; preds = %715
  %718 = load ptr, ptr %486, align 4
  %719 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %718, i8 noundef zeroext -113, i8 noundef zeroext 0) #5
  %720 = icmp slt i32 %719, 0
  br i1 %720, label %721, label %724

721:                                              ; preds = %717
  %722 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %723 = load ptr, ptr %722, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %723, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 143, i32 noundef 0) #6
  store i32 %719, ptr %2, align 4
  br label %957

724:                                              ; preds = %717
  store i32 %719, ptr %2, align 4
  %725 = load ptr, ptr %486, align 4
  %726 = icmp eq i32 %719, 0
  br i1 %726, label %727, label %833

727:                                              ; preds = %724
  %728 = tail call i32 @i2c_smbus_write_byte(ptr noundef %725, i8 noundef zeroext 49) #5
  %729 = icmp slt i32 %728, 0
  br i1 %729, label %738, label %730

730:                                              ; preds = %727
  %731 = tail call i32 @i2c_smbus_read_byte(ptr noundef %725) #5
  %732 = icmp slt i32 %731, 0
  br i1 %732, label %738, label %733

733:                                              ; preds = %730
  %734 = or i32 %731, 12
  %735 = trunc i32 %734 to i8
  %736 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %725, i8 noundef zeroext 49, i8 noundef zeroext %735) #5
  %737 = icmp slt i32 %736, 0
  br i1 %737, label %738, label %743

738:                                              ; preds = %733, %730, %727
  %739 = phi i32 [ 12, %727 ], [ 12, %730 ], [ %734, %733 ]
  %740 = phi i32 [ %728, %727 ], [ %731, %730 ], [ %736, %733 ]
  %741 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %742 = load ptr, ptr %741, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %742, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 49, i32 noundef %739) #6
  store i32 %740, ptr %2, align 4
  br label %957

743:                                              ; preds = %733
  %744 = load i32, ptr %2, align 4
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %834

746:                                              ; preds = %743
  %747 = load ptr, ptr %486, align 4
  %748 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %747, i8 noundef zeroext 48, i8 noundef zeroext 1) #5
  %749 = icmp slt i32 %748, 0
  br i1 %749, label %750, label %753

750:                                              ; preds = %746
  %751 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %752 = load ptr, ptr %751, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %752, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 48, i32 noundef 1) #6
  store i32 %748, ptr %2, align 4
  br label %957

753:                                              ; preds = %746
  store i32 %748, ptr %2, align 4
  %754 = load ptr, ptr %486, align 4
  %755 = icmp eq i32 %748, 0
  br i1 %755, label %756, label %833

756:                                              ; preds = %753
  %757 = tail call i32 @i2c_smbus_write_byte(ptr noundef %754, i8 noundef zeroext 60) #5
  %758 = icmp slt i32 %757, 0
  br i1 %758, label %768, label %759

759:                                              ; preds = %756
  %760 = tail call i32 @i2c_smbus_read_byte(ptr noundef %754) #5
  %761 = icmp slt i32 %760, 0
  br i1 %761, label %768, label %762

762:                                              ; preds = %759
  %763 = and i32 %760, -57
  %764 = or i32 %763, 48
  %765 = trunc i32 %764 to i8
  %766 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %754, i8 noundef zeroext 60, i8 noundef zeroext %765) #5
  %767 = icmp slt i32 %766, 0
  br i1 %767, label %768, label %773

768:                                              ; preds = %762, %759, %756
  %769 = phi i32 [ 48, %756 ], [ 48, %759 ], [ %764, %762 ]
  %770 = phi i32 [ %757, %756 ], [ %760, %759 ], [ %766, %762 ]
  %771 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %772 = load ptr, ptr %771, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %772, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 60, i32 noundef %769) #6
  store i32 %770, ptr %2, align 4
  br label %957

773:                                              ; preds = %762
  %774 = load i32, ptr %2, align 4
  %775 = load ptr, ptr %486, align 4
  %776 = icmp eq i32 %774, 0
  br i1 %776, label %777, label %834

777:                                              ; preds = %773
  %778 = tail call i32 @i2c_smbus_write_byte(ptr noundef %775, i8 noundef zeroext 34) #5
  %779 = icmp slt i32 %778, 0
  br i1 %779, label %789, label %780

780:                                              ; preds = %777
  %781 = tail call i32 @i2c_smbus_read_byte(ptr noundef %775) #5
  %782 = icmp slt i32 %781, 0
  br i1 %782, label %789, label %783

783:                                              ; preds = %780
  %784 = and i32 %781, -16
  %785 = or i32 %784, 13
  %786 = trunc i32 %785 to i8
  %787 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %775, i8 noundef zeroext 34, i8 noundef zeroext %786) #5
  %788 = icmp slt i32 %787, 0
  br i1 %788, label %789, label %794

789:                                              ; preds = %783, %780, %777
  %790 = phi i32 [ 13, %777 ], [ 13, %780 ], [ %785, %783 ]
  %791 = phi i32 [ %778, %777 ], [ %781, %780 ], [ %787, %783 ]
  %792 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %793 = load ptr, ptr %792, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %793, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 34, i32 noundef %790) #6
  store i32 %791, ptr %2, align 4
  br label %957

794:                                              ; preds = %783
  %795 = load i32, ptr %2, align 4
  %796 = load ptr, ptr %486, align 4
  %797 = icmp eq i32 %795, 0
  br i1 %797, label %798, label %834

798:                                              ; preds = %794
  %799 = tail call i32 @i2c_smbus_write_byte(ptr noundef %796, i8 noundef zeroext 46) #5
  %800 = icmp slt i32 %799, 0
  br i1 %800, label %809, label %801

801:                                              ; preds = %798
  %802 = tail call i32 @i2c_smbus_read_byte(ptr noundef %796) #5
  %803 = icmp slt i32 %802, 0
  br i1 %803, label %809, label %804

804:                                              ; preds = %801
  %805 = or i32 %802, 21
  %806 = trunc i32 %805 to i8
  %807 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %796, i8 noundef zeroext 46, i8 noundef zeroext %806) #5
  %808 = icmp slt i32 %807, 0
  br i1 %808, label %809, label %814

809:                                              ; preds = %804, %801, %798
  %810 = phi i32 [ 21, %798 ], [ 21, %801 ], [ %805, %804 ]
  %811 = phi i32 [ %799, %798 ], [ %802, %801 ], [ %807, %804 ]
  %812 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %813 = load ptr, ptr %812, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %813, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 46, i32 noundef %810) #6
  store i32 %811, ptr %2, align 4
  br label %957

814:                                              ; preds = %804
  %815 = load i32, ptr %2, align 4
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %817, label %834

817:                                              ; preds = %814
  %818 = load ptr, ptr %486, align 4
  %819 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %818, i8 noundef zeroext 9, i8 noundef zeroext 0) #5
  %820 = icmp slt i32 %819, 0
  br i1 %820, label %821, label %824

821:                                              ; preds = %817
  %822 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %823 = load ptr, ptr %822, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %823, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 9, i32 noundef 0) #6
  store i32 %819, ptr %2, align 4
  br label %957

824:                                              ; preds = %817
  store i32 %819, ptr %2, align 4
  %825 = icmp eq i32 %819, 0
  br i1 %825, label %826, label %833

826:                                              ; preds = %824
  %827 = load ptr, ptr %486, align 4
  %828 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %827, i8 noundef zeroext 31, i8 noundef zeroext 0) #5
  %829 = icmp slt i32 %828, 0
  br i1 %829, label %830, label %834

830:                                              ; preds = %826
  %831 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %832 = load ptr, ptr %831, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %832, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 31, i32 noundef 0) #6
  br label %834

833:                                              ; preds = %824, %753, %724, %715, %706, %697, %688, %679, %670, %661, %652, %643, %634, %625, %616, %607, %598, %589, %580, %571, %562, %553, %544, %535, %526
  store i32 0, ptr %2, align 4
  br label %837

834:                                              ; preds = %830, %826, %814, %794, %773, %743
  %835 = phi i32 [ %744, %743 ], [ %774, %773 ], [ %815, %814 ], [ %795, %794 ], [ %828, %830 ], [ %828, %826 ]
  store i32 0, ptr %2, align 4
  %836 = icmp slt i32 %835, 0
  br i1 %836, label %959, label %837

837:                                              ; preds = %834, %833
  %838 = load ptr, ptr %0, align 4
  %839 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %838, i8 noundef zeroext 5, i8 noundef zeroext 4) #5
  %840 = icmp slt i32 %839, 0
  br i1 %840, label %841, label %844

841:                                              ; preds = %837
  %842 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %843 = load ptr, ptr %842, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %843, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 5, i32 noundef 4) #6
  br label %871

844:                                              ; preds = %837
  store i32 %839, ptr %2, align 4
  %845 = icmp eq i32 %839, 0
  br i1 %845, label %846, label %873

846:                                              ; preds = %844
  %847 = load ptr, ptr %0, align 4
  %848 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %847, i8 noundef zeroext 13, i8 noundef zeroext 28) #5
  %849 = icmp slt i32 %848, 0
  br i1 %849, label %850, label %853

850:                                              ; preds = %846
  %851 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %852 = load ptr, ptr %851, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %852, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 13, i32 noundef 28) #6
  br label %871

853:                                              ; preds = %846
  store i32 %848, ptr %2, align 4
  %854 = icmp eq i32 %848, 0
  br i1 %854, label %855, label %873

855:                                              ; preds = %853
  %856 = load ptr, ptr %0, align 4
  %857 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %856, i8 noundef zeroext 120, i8 noundef zeroext 92) #5
  %858 = icmp slt i32 %857, 0
  br i1 %858, label %859, label %862

859:                                              ; preds = %855
  %860 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %861 = load ptr, ptr %860, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %861, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 120, i32 noundef 92) #6
  br label %871

862:                                              ; preds = %855
  store i32 %857, ptr %2, align 4
  %863 = icmp eq i32 %857, 0
  br i1 %863, label %864, label %873

864:                                              ; preds = %862
  %865 = load ptr, ptr %0, align 4
  %866 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %865, i8 noundef zeroext 117, i8 noundef zeroext 96) #5
  %867 = icmp slt i32 %866, 0
  br i1 %867, label %868, label %871

868:                                              ; preds = %864
  %869 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %870 = load ptr, ptr %869, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %870, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 117, i32 noundef 96) #6
  br label %871

871:                                              ; preds = %868, %864, %859, %850, %841
  %872 = phi i32 [ %839, %841 ], [ %857, %859 ], [ %848, %850 ], [ %866, %868 ], [ %866, %864 ]
  store i32 %872, ptr %2, align 4
  br label %873

873:                                              ; preds = %871, %862, %853, %844
  tail call fastcc void @force_usb_id_switch_open(ptr noundef %0)
  %874 = load ptr, ptr %0, align 4
  %875 = load i32, ptr %2, align 4
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %877, label %915

877:                                              ; preds = %873
  %878 = tail call i32 @i2c_smbus_write_byte(ptr noundef %874, i8 noundef zeroext -109) #5
  %879 = icmp slt i32 %878, 0
  br i1 %879, label %888, label %880

880:                                              ; preds = %877
  %881 = tail call i32 @i2c_smbus_read_byte(ptr noundef %874) #5
  %882 = icmp slt i32 %881, 0
  br i1 %882, label %888, label %883

883:                                              ; preds = %880
  %884 = and i32 %881, -241
  %885 = trunc i32 %884 to i8
  %886 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %874, i8 noundef zeroext -109, i8 noundef zeroext %885) #5
  %887 = icmp slt i32 %886, 0
  br i1 %887, label %888, label %893

888:                                              ; preds = %883, %880, %877
  %889 = phi i32 [ 0, %877 ], [ 0, %880 ], [ %884, %883 ]
  %890 = phi i32 [ %878, %877 ], [ %881, %880 ], [ %886, %883 ]
  %891 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %892 = load ptr, ptr %891, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %892, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 147, i32 noundef %889) #6
  br label %913

893:                                              ; preds = %883
  %894 = load i32, ptr %2, align 4
  %895 = load ptr, ptr %0, align 4
  %896 = icmp eq i32 %894, 0
  br i1 %896, label %897, label %915

897:                                              ; preds = %893
  %898 = tail call i32 @i2c_smbus_write_byte(ptr noundef %895, i8 noundef zeroext -108) #5
  %899 = icmp slt i32 %898, 0
  br i1 %899, label %908, label %900

900:                                              ; preds = %897
  %901 = tail call i32 @i2c_smbus_read_byte(ptr noundef %895) #5
  %902 = icmp slt i32 %901, 0
  br i1 %902, label %908, label %903

903:                                              ; preds = %900
  %904 = and i32 %901, -4
  %905 = trunc i32 %904 to i8
  %906 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %895, i8 noundef zeroext -108, i8 noundef zeroext %905) #5
  %907 = icmp slt i32 %906, 0
  br i1 %907, label %908, label %915

908:                                              ; preds = %903, %900, %897
  %909 = phi i32 [ 0, %897 ], [ 0, %900 ], [ %904, %903 ]
  %910 = phi i32 [ %898, %897 ], [ %901, %900 ], [ %906, %903 ]
  %911 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %912 = load ptr, ptr %911, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %912, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 148, i32 noundef %909) #6
  br label %913

913:                                              ; preds = %908, %888
  %914 = phi i32 [ %890, %888 ], [ %910, %908 ]
  store i32 %914, ptr %2, align 4
  br label %915

915:                                              ; preds = %913, %903, %893, %873
  tail call fastcc void @release_usb_id_switch_open(ptr noundef %0)
  %916 = load ptr, ptr %0, align 4
  %917 = load i32, ptr %2, align 4
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %919, label %957

919:                                              ; preds = %915
  %920 = tail call i32 @i2c_smbus_write_byte(ptr noundef %916, i8 noundef zeroext 121) #5
  %921 = icmp slt i32 %920, 0
  br i1 %921, label %930, label %922

922:                                              ; preds = %919
  %923 = tail call i32 @i2c_smbus_read_byte(ptr noundef %916) #5
  %924 = icmp slt i32 %923, 0
  br i1 %924, label %930, label %925

925:                                              ; preds = %922
  %926 = and i32 %923, -33
  %927 = trunc i32 %926 to i8
  %928 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %916, i8 noundef zeroext 121, i8 noundef zeroext %927) #5
  %929 = icmp slt i32 %928, 0
  br i1 %929, label %930, label %935

930:                                              ; preds = %925, %922, %919
  %931 = phi i32 [ 0, %919 ], [ 0, %922 ], [ %926, %925 ]
  %932 = phi i32 [ %920, %919 ], [ %923, %922 ], [ %928, %925 ]
  %933 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %934 = load ptr, ptr %933, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %934, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 121, i32 noundef %931) #6
  br label %957

935:                                              ; preds = %925
  %936 = load i32, ptr %2, align 4
  %937 = load ptr, ptr %0, align 4
  %938 = icmp eq i32 %936, 0
  br i1 %938, label %939, label %957

939:                                              ; preds = %935
  %940 = tail call i32 @i2c_smbus_write_byte(ptr noundef %937, i8 noundef zeroext 121) #5
  %941 = icmp slt i32 %940, 0
  br i1 %941, label %952, label %942

942:                                              ; preds = %939
  %943 = tail call i32 @i2c_smbus_read_byte(ptr noundef %937) #5
  %944 = icmp slt i32 %943, 0
  br i1 %944, label %952, label %945

945:                                              ; preds = %942
  %946 = or i32 %943, 16
  %947 = trunc i32 %946 to i8
  %948 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %937, i8 noundef zeroext 121, i8 noundef zeroext %947) #5
  %949 = icmp slt i32 %948, 0
  br i1 %949, label %952, label %950

950:                                              ; preds = %945
  %951 = load i32, ptr %2, align 4
  br label %957

952:                                              ; preds = %945, %942, %939
  %953 = phi i32 [ -1, %939 ], [ -1, %942 ], [ %946, %945 ]
  %954 = phi i32 [ %940, %939 ], [ %943, %942 ], [ %948, %945 ]
  %955 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %956 = load ptr, ptr %955, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %956, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 121, i32 noundef %953) #6
  br label %957

957:                                              ; preds = %952, %950, %935, %930, %915, %821, %809, %789, %768, %750, %738, %721, %712, %703, %694, %685, %676, %667, %658, %649, %640, %631, %622, %613, %604, %595, %586, %577, %568, %559, %550, %541, %532, %523, %501, %302, %293, %284, %275, %268, %259, %250, %241, %232, %223, %214, %205, %196, %187, %178, %169, %160, %151, %140, %124, %122, %108, %106, %92, %84, %70, %35, %26, %17, %7
  %958 = phi i32 [ %503, %501 ], [ %266, %268 ], [ %33, %35 ], [ %5, %7 ], [ %24, %26 ], [ %15, %17 ], [ %72, %70 ], [ %82, %84 ], [ %98, %108 ], [ %90, %92 ], [ %114, %124 ], [ %104, %106 ], [ %120, %122 ], [ %130, %140 ], [ %149, %151 ], [ %158, %160 ], [ %167, %169 ], [ %176, %178 ], [ %185, %187 ], [ %194, %196 ], [ %203, %205 ], [ %212, %214 ], [ %221, %223 ], [ %230, %232 ], [ %239, %241 ], [ %248, %250 ], [ %257, %259 ], [ %300, %302 ], [ %273, %275 ], [ %291, %293 ], [ %282, %284 ], [ %748, %750 ], [ %770, %768 ], [ %811, %809 ], [ %521, %523 ], [ %530, %532 ], [ %539, %541 ], [ %548, %550 ], [ %557, %559 ], [ %566, %568 ], [ %575, %577 ], [ %584, %586 ], [ %593, %595 ], [ %602, %604 ], [ %611, %613 ], [ %620, %622 ], [ %629, %631 ], [ %638, %640 ], [ %647, %649 ], [ %656, %658 ], [ %665, %667 ], [ %674, %676 ], [ %683, %685 ], [ %692, %694 ], [ %701, %703 ], [ %710, %712 ], [ %719, %721 ], [ %819, %821 ], [ %791, %789 ], [ %740, %738 ], [ %951, %950 ], [ %932, %930 ], [ %917, %915 ], [ %936, %935 ], [ %954, %952 ]
  store i32 0, ptr %2, align 4
  br label %959

959:                                              ; preds = %957, %834, %516, %143
  %960 = phi i32 [ %144, %143 ], [ %517, %516 ], [ %835, %834 ], [ %958, %957 ]
  ret i32 %960
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @force_usb_id_switch_open(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %84

6:                                                ; preds = %1
  %7 = tail call i32 @i2c_smbus_write_byte(ptr noundef %2, i8 noundef zeroext -112) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @i2c_smbus_read_byte(ptr noundef %2) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = and i32 %10, -2
  %14 = trunc i32 %13 to i8
  %15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -112, i8 noundef zeroext %14) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12, %9, %6
  %18 = phi i32 [ 0, %6 ], [ 0, %9 ], [ %13, %12 ]
  %19 = phi i32 [ %7, %6 ], [ %10, %9 ], [ %15, %12 ]
  %20 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 144, i32 noundef %18) #6
  br label %82

22:                                               ; preds = %12
  %23 = load i32, ptr %3, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %84

26:                                               ; preds = %22
  %27 = tail call i32 @i2c_smbus_write_byte(ptr noundef %24, i8 noundef zeroext -107) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @i2c_smbus_read_byte(ptr noundef %24) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = or i32 %30, 64
  %34 = trunc i32 %33 to i8
  %35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext -107, i8 noundef zeroext %34) #5
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %29, %26
  %38 = phi i32 [ -1, %26 ], [ -1, %29 ], [ %33, %32 ]
  %39 = phi i32 [ %27, %26 ], [ %30, %29 ], [ %35, %32 ]
  %40 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 149, i32 noundef %38) #6
  br label %82

42:                                               ; preds = %32
  %43 = load i32, ptr %3, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = tail call i32 @i2c_smbus_write_byte(ptr noundef %44, i8 noundef zeroext -110) #5
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @i2c_smbus_read_byte(ptr noundef %44) #5
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = or i32 %50, 134
  %54 = trunc i32 %53 to i8
  %55 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -110, i8 noundef zeroext %54) #5
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52, %49, %46
  %58 = phi i32 [ -1, %46 ], [ -1, %49 ], [ %53, %52 ]
  %59 = phi i32 [ %47, %46 ], [ %50, %49 ], [ %55, %52 ]
  %60 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 146, i32 noundef %58) #6
  br label %82

62:                                               ; preds = %52
  %63 = load i32, ptr %3, align 4
  %64 = load ptr, ptr %0, align 4
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = tail call i32 @i2c_smbus_write_byte(ptr noundef %64, i8 noundef zeroext 121) #5
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @i2c_smbus_read_byte(ptr noundef %64) #5
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = and i32 %70, -49
  %74 = trunc i32 %73 to i8
  %75 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext 121, i8 noundef zeroext %74) #5
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72, %69, %66
  %78 = phi i32 [ 0, %66 ], [ 0, %69 ], [ %73, %72 ]
  %79 = phi i32 [ %67, %66 ], [ %70, %69 ], [ %75, %72 ]
  %80 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 121, i32 noundef %78) #6
  br label %82

82:                                               ; preds = %77, %57, %37, %17
  %83 = phi i32 [ %39, %37 ], [ %19, %17 ], [ %59, %57 ], [ %79, %77 ]
  store i32 %83, ptr %3, align 4
  br label %84

84:                                               ; preds = %82, %72, %62, %42, %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @release_usb_id_switch_open(ptr nocapture noundef %0) unnamed_addr #2 {
  tail call void @msleep(i32 noundef 100) #5
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = tail call i32 @i2c_smbus_write_byte(ptr noundef %2, i8 noundef zeroext -107) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @i2c_smbus_read_byte(ptr noundef %2) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = and i32 %10, -65
  %14 = trunc i32 %13 to i8
  %15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext -107, i8 noundef zeroext %14) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12, %9, %6
  %18 = phi i32 [ 0, %6 ], [ 0, %9 ], [ %13, %12 ]
  %19 = phi i32 [ %7, %6 ], [ %10, %9 ], [ %15, %12 ]
  %20 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 149, i32 noundef %18) #6
  br label %42

22:                                               ; preds = %12
  %23 = load i32, ptr %3, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = tail call i32 @i2c_smbus_write_byte(ptr noundef %24, i8 noundef zeroext -112) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @i2c_smbus_read_byte(ptr noundef %24) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = or i32 %30, 1
  %34 = trunc i32 %33 to i8
  %35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext -112, i8 noundef zeroext %34) #5
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %29, %26
  %38 = phi i32 [ -1, %26 ], [ -1, %29 ], [ %33, %32 ]
  %39 = phi i32 [ %27, %26 ], [ %30, %29 ], [ %35, %32 ]
  %40 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 144, i32 noundef %38) #6
  br label %42

42:                                               ; preds = %37, %17
  %43 = phi i32 [ %19, %17 ], [ %39, %37 ]
  store i32 %43, ptr %3, align 4
  br label %44

44:                                               ; preds = %42, %32, %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sii9234_tmds_control(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = sext i1 %1 to i32
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %2
  %9 = tail call i32 @i2c_smbus_write_byte(ptr noundef %4, i8 noundef zeroext -128) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = select i1 %1, i32 16, i32 0
  %16 = and i32 %12, -17
  %17 = or i32 %16, %15
  %18 = trunc i32 %17 to i8
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -128, i8 noundef zeroext %18) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14, %11, %8
  %22 = phi i32 [ %3, %8 ], [ %3, %11 ], [ %17, %14 ]
  %23 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 128, i32 noundef %22) #6
  br label %46

25:                                               ; preds = %14
  %26 = load i32, ptr %5, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = tail call i32 @i2c_smbus_write_byte(ptr noundef %27, i8 noundef zeroext 121) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @i2c_smbus_read_byte(ptr noundef %27) #5
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = select i1 %1, i32 48, i32 0
  %37 = and i32 %33, -49
  %38 = or i32 %37, %36
  %39 = trunc i32 %38 to i8
  %40 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 121, i8 noundef zeroext %39) #5
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35, %32, %29
  %43 = phi i32 [ %3, %29 ], [ %3, %32 ], [ %38, %35 ]
  %44 = getelementptr inbounds %struct.sii9234, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 121, i32 noundef %43) #6
  br label %46

46:                                               ; preds = %42, %35, %25, %21, %2
  store i32 0, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sii9234_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #4 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp sgt i32 %4, 75000
  %6 = select i1 %5, i32 15, i32 0
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
