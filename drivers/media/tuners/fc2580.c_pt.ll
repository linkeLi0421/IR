; ModuleID = '/llk/IR/drivers/media/tuners/fc2580.c_pt.bc'
source_filename = "../drivers/media/tuners/fc2580.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.fc2580_pll = type { i32, i8, i8 }
%struct.fc2580_freq_regs = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.fc2580_if_filter = type { i32, i8, i8 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc2580_reg_val = type { i8, i8 }
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
%struct.fc2580_platform_data = type { i32, ptr, ptr }
%struct.fc2580_dev = type { i32, ptr, ptr, %struct.v4l2_subdev, i8, i32, i32, %struct.v4l2_ctrl_handler, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.76 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.78, %union.anon.79, i32, ptr, i32, %struct.anon.80, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.78 = type { i64 }
%union.anon.79 = type { ptr }
%struct.anon.80 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@fc2580_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"fc2580\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description255 = internal constant [44 x i8] c"description=FCI FC2580 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@fc2580_driver = internal global %struct.i2c_driver { i32 0, ptr @fc2580_probe, ptr @fc2580_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fc2580_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"fc2580\00", align 1
@fc2580_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@fc2580_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fc2580_s_ctrl }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@fc2580_subdev_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr @fc2580_subdev_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fc2580_dvb_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"FCI FC2580\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @fc2580_dvb_init, ptr @fc2580_dvb_sleep, ptr null, ptr null, ptr @fc2580_dvb_set_params, ptr null, ptr null, ptr null, ptr null, ptr @fc2580_dvb_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"FCI FC2580 successfully identified\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@fc2580_pll_lut = internal unnamed_addr constant [3 x %struct.fc2580_pll] [%struct.fc2580_pll { i32 400000000, i8 12, i8 -128 }, %struct.fc2580_pll { i32 1000000000, i8 4, i8 0 }, %struct.fc2580_pll { i32 -1, i8 2, i8 64 }], align 4
@fc2580_freq_regs_lut = internal unnamed_addr constant [5 x %struct.fc2580_freq_regs] [%struct.fc2580_freq_regs { i32 400000000, i8 -1, i8 119, i8 51, i8 64, i8 -1, i8 -1, i8 -1, i8 9, i8 -1, i8 -116, i8 80, i8 15, i8 7, i8 0, i8 21, i8 3, i8 5, i8 16, i8 18, i8 8, i8 10, i8 120, i8 50, i8 84 }, %struct.fc2580_freq_regs { i32 538000000, i8 -16, i8 119, i8 83, i8 96, i8 -1, i8 -1, i8 -97, i8 9, i8 -1, i8 -116, i8 80, i8 19, i8 7, i8 6, i8 21, i8 6, i8 8, i8 16, i8 18, i8 11, i8 12, i8 120, i8 50, i8 20 }, %struct.fc2580_freq_regs { i32 794000000, i8 -16, i8 119, i8 83, i8 96, i8 -1, i8 -1, i8 -97, i8 9, i8 -1, i8 -116, i8 80, i8 21, i8 3, i8 3, i8 21, i8 3, i8 5, i8 12, i8 14, i8 11, i8 12, i8 120, i8 50, i8 20 }, %struct.fc2580_freq_regs { i32 1000000000, i8 -16, i8 119, i8 83, i8 96, i8 -1, i8 -1, i8 -113, i8 9, i8 -1, i8 -116, i8 80, i8 21, i8 7, i8 6, i8 21, i8 7, i8 9, i8 16, i8 18, i8 11, i8 12, i8 120, i8 50, i8 20 }, %struct.fc2580_freq_regs { i32 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 112, i8 55, i8 -25, i8 9, i8 32, i8 -116, i8 80, i8 15, i8 15, i8 0, i8 19, i8 0, i8 2, i8 12, i8 14, i8 8, i8 10, i8 -96, i8 80, i8 20 }], align 4
@fc2580_if_filter_lut = internal unnamed_addr constant [4 x %struct.fc2580_if_filter] [%struct.fc2580_if_filter { i32 6000000, i8 24, i8 0 }, %struct.fc2580_if_filter { i32 7000000, i8 24, i8 -128 }, %struct.fc2580_if_filter { i32 8000000, i8 24, i8 -128 }, %struct.fc2580_if_filter { i32 -1, i8 24, i8 -128 }], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@fc2580_subdev_tuner_ops = internal constant %struct.v4l2_subdev_tuner_ops { ptr @fc2580_standby, ptr null, ptr @fc2580_s_frequency, ptr @fc2580_g_frequency, ptr @fc2580_enum_freq_bands, ptr @fc2580_g_tuner, ptr @fc2580_s_tuner, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"FCI FC2580\00", align 1
@fc2580_init_reg_vals = internal unnamed_addr constant [16 x %struct.fc2580_reg_val] [%struct.fc2580_reg_val zeroinitializer, %struct.fc2580_reg_val { i8 18, i8 -122 }, %struct.fc2580_reg_val { i8 20, i8 92 }, %struct.fc2580_reg_val { i8 22, i8 60 }, %struct.fc2580_reg_val { i8 31, i8 -46 }, %struct.fc2580_reg_val { i8 9, i8 -41 }, %struct.fc2580_reg_val { i8 11, i8 -43 }, %struct.fc2580_reg_val { i8 12, i8 50 }, %struct.fc2580_reg_val { i8 14, i8 67 }, %struct.fc2580_reg_val { i8 33, i8 10 }, %struct.fc2580_reg_val { i8 34, i8 -126 }, %struct.fc2580_reg_val { i8 69, i8 16 }, %struct.fc2580_reg_val { i8 76, i8 0 }, %struct.fc2580_reg_val { i8 63, i8 -120 }, %struct.fc2580_reg_val { i8 2, i8 14 }, %struct.fc2580_reg_val { i8 88, i8 20 }], align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_license257], section "llvm.metadata"

@__mod_i2c__fc2580_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @fc2580_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @fc2580_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @fc2580_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc2580_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fc2580_platform_data, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 340) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %6, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 16384000, i32 %13
  store i32 %15, ptr %10, align 8
  %16 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @fc2580_probe.regmap_config, ptr noundef null, ptr noundef null) #12
  %18 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = ptrtoint ptr %17 to i32
  br label %50

22:                                               ; preds = %12
  %23 = call i32 @regmap_read(ptr noundef %17, i32 noundef 1, ptr noundef nonnull %3) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load i32, ptr %3, align 4
  switch i32 %26, label %50 [
    i32 86, label %27
    i32 90, label %27
  ]

27:                                               ; preds = %25, %25
  %28 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 7
  %29 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %28, i32 noundef 2, ptr noundef null, ptr noundef null) #12
  %30 = call ptr @v4l2_ctrl_new_std(ptr noundef %28, ptr noundef nonnull @fc2580_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #12
  %31 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 8
  store ptr %30, ptr %31, align 4
  %32 = call ptr @v4l2_ctrl_new_std(ptr noundef %28, ptr noundef nonnull @fc2580_ctrl_ops, i32 noundef 10619148, i64 noundef 3000, i64 noundef 10000000, i64 noundef 1, i64 noundef 3000) #12
  %33 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 9
  store ptr %32, ptr %33, align 8
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %31, i8 noundef zeroext 0, i1 noundef zeroext false) #12
  %34 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 7, i32 9
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #14
  call void @v4l2_ctrl_handler_free(ptr noundef %28) #12
  br label %50

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 3
  %40 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 3, i32 8
  store ptr %28, ptr %40, align 4
  %41 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 5
  store i32 130000000, ptr %41, align 4
  %42 = load ptr, ptr %33, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 22
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.fc2580_dev, ptr %10, i32 0, i32 6
  store i32 %44, ptr %45, align 8
  call void @v4l2_i2c_subdev_init(ptr noundef %39, ptr noundef %0, ptr noundef nonnull @fc2580_subdev_ops) #12
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 4
  store ptr %10, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %47, ptr noundef nonnull align 4 dereferenceable(220) @fc2580_dvb_tuner_ops, i32 220, i1 false)
  %48 = getelementptr inbounds %struct.fc2580_platform_data, ptr %6, i32 0, i32 2
  store ptr @fc2580_get_v4l2_subdev, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %10, ptr %49, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.2) #14
  br label %52

50:                                               ; preds = %37, %25, %22, %20
  %51 = phi i32 [ %21, %20 ], [ %23, %22 ], [ %35, %37 ], [ -19, %25 ]
  call void @kfree(ptr noundef nonnull %10) #12
  br label %52

52:                                               ; preds = %50, %38, %2
  %53 = phi i32 [ 0, %38 ], [ %51, %50 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc2580_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fc2580_dev, ptr %3, i32 0, i32 7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %4) #12
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @fc2580_get_v4l2_subdev(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fc2580_dev, ptr %3, i32 0, i32 3, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.fc2580_dev, ptr %3, i32 0, i32 3
  %8 = select i1 %6, ptr null, ptr %7
  ret ptr %8
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc2580_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -10619147
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -220
  %10 = getelementptr i8, ptr %8, i32 116
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %8, i32 -4
  store i32 %13, ptr %14, align 4
  %15 = tail call fastcc i32 @fc2580_set_params(ptr noundef %9)
  br label %16

16:                                               ; preds = %6, %1
  %17 = phi i32 [ %15, %6 ], [ -22, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fc2580_set_params(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.fc2580_dev, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %342, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fc2580_dev, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 400000000
  %10 = icmp ugt i32 %8, 1000000000
  %11 = select i1 %10, i32 2, i32 1
  %12 = select i1 %9, i32 %11, i32 0
  %13 = getelementptr [3 x %struct.fc2580_pll], ptr @fc2580_pll_lut, i32 0, i32 %12, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i32 %8 to i64
  %16 = zext i8 %14 to i64
  %17 = mul nuw nsw i64 %15, %16
  %18 = getelementptr [3 x %struct.fc2580_pll], ptr @fc2580_pll_lut, i32 0, i32 %12, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = icmp ult i64 %17, 2600000000
  %21 = select i1 %20, i8 6, i8 14
  %22 = or i8 %21, %19
  %23 = load i32, ptr %0, align 4
  %24 = zext i32 %23 to i64
  %25 = mul nuw nsw i64 %24, 152
  %26 = icmp ult i64 %17, %25
  %27 = lshr exact i64 %25, 1
  %28 = icmp ult i64 %17, %27
  %29 = select i1 %28, i32 32, i32 16
  %30 = select i1 %26, i32 %29, i32 0
  %31 = shl i32 %23, 1
  %32 = select i1 %28, i32 2, i32 1
  %33 = select i1 %26, i32 %32, i32 0
  %34 = lshr i32 %31, %33
  %35 = icmp ult i64 %17, 4294967296
  br i1 %35, label %36, label %43, !prof !10

36:                                               ; preds = %6
  %37 = trunc i64 %17 to i32
  %38 = freeze i32 %37
  %39 = freeze i32 %34
  %40 = udiv i32 %38, %39
  %41 = mul i32 %40, %39
  %42 = sub i32 %38, %41
  br label %50

43:                                               ; preds = %6
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %34, i64 %17) #15, !srcloc !11
  %45 = extractvalue { i64, i64 } %44, 0
  %46 = extractvalue { i64, i64 } %44, 1
  %47 = lshr i64 %45, 32
  %48 = trunc i64 %47 to i32
  %49 = trunc i64 %46 to i32
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi i32 [ %40, %36 ], [ %49, %43 ]
  %52 = phi i32 [ %42, %36 ], [ %48, %43 ]
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 20
  %55 = icmp ult i32 %52, 4096
  br i1 %55, label %56, label %59, !prof !10

56:                                               ; preds = %50
  %57 = trunc i64 %54 to i32
  %58 = udiv i32 %57, %34
  br label %63

59:                                               ; preds = %50
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %34, i64 %54) #15, !srcloc !11
  %61 = extractvalue { i64, i64 } %60, 1
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %58, %56 ], [ %62, %59 ]
  %65 = getelementptr inbounds %struct.fc2580_dev, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = zext i8 %22 to i32
  %68 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 2, i32 noundef %67) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %342

70:                                               ; preds = %63
  %71 = load ptr, ptr %65, align 4
  %72 = lshr i32 %64, 16
  %73 = or i32 %72, %30
  %74 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 24, i32 noundef %73) #12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %342

76:                                               ; preds = %70
  %77 = load ptr, ptr %65, align 4
  %78 = lshr i32 %64, 8
  %79 = and i32 %78, 255
  %80 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 26, i32 noundef %79) #12
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %342

82:                                               ; preds = %76
  %83 = load ptr, ptr %65, align 4
  %84 = and i32 %64, 255
  %85 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 27, i32 noundef %84) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %342

87:                                               ; preds = %82
  %88 = load ptr, ptr %65, align 4
  %89 = tail call i32 @regmap_write(ptr noundef %88, i32 noundef 28, i32 noundef %51) #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %342

91:                                               ; preds = %87
  %92 = load i32, ptr %7, align 4
  %93 = icmp ugt i32 %92, 400000000
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = icmp ugt i32 %92, 538000000
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = icmp ugt i32 %92, 794000000
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  %99 = icmp ugt i32 %92, 1000000000
  br i1 %99, label %108, label %100

100:                                              ; preds = %98, %96, %94
  %101 = phi i32 [ 3, %98 ], [ 2, %96 ], [ 1, %94 ]
  %102 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %101, i32 1
  %103 = load i8, ptr %102, align 4
  %104 = zext i8 %103 to i32
  %105 = load ptr, ptr %65, align 4
  %106 = tail call i32 @regmap_write(ptr noundef %105, i32 noundef 37, i32 noundef %104) #12
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %342

108:                                              ; preds = %100, %98, %91
  %109 = phi i32 [ %101, %100 ], [ 0, %91 ], [ 4, %98 ]
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %132, label %111

111:                                              ; preds = %108
  %112 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %109, i32 2
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load ptr, ptr %65, align 4
  %116 = tail call i32 @regmap_write(ptr noundef %115, i32 noundef 39, i32 noundef %114) #12
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %342

118:                                              ; preds = %111
  %119 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %109, i32 3
  %120 = load i8, ptr %119, align 2
  %121 = zext i8 %120 to i32
  %122 = load ptr, ptr %65, align 4
  %123 = tail call i32 @regmap_write(ptr noundef %122, i32 noundef 40, i32 noundef %121) #12
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %342

125:                                              ; preds = %118
  %126 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %109, i32 4
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load ptr, ptr %65, align 4
  %130 = tail call i32 @regmap_write(ptr noundef %129, i32 noundef 41, i32 noundef %128) #12
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %146, label %342

132:                                              ; preds = %108
  %133 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %109, i32 5
  %134 = load i8, ptr %133, align 4
  %135 = zext i8 %134 to i32
  %136 = load ptr, ptr %65, align 4
  %137 = tail call i32 @regmap_write(ptr noundef %136, i32 noundef 43, i32 noundef %135) #12
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %342

139:                                              ; preds = %132
  %140 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %109, i32 6
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load ptr, ptr %65, align 4
  %144 = tail call i32 @regmap_write(ptr noundef %143, i32 noundef 44, i32 noundef %142) #12
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %342

146:                                              ; preds = %125
  %147 = icmp eq i32 %109, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %146, %139
  %149 = phi i32 [ %109, %146 ], [ 4, %139 ]
  %150 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %149, i32 7
  %151 = load i8, ptr %150, align 2
  %152 = zext i8 %151 to i32
  %153 = load ptr, ptr %65, align 4
  %154 = tail call i32 @regmap_write(ptr noundef %153, i32 noundef 45, i32 noundef %152) #12
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %342

156:                                              ; preds = %148, %146
  %157 = phi i32 [ %149, %148 ], [ %109, %146 ]
  %158 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 8
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = load ptr, ptr %65, align 4
  %162 = tail call i32 @regmap_write(ptr noundef %161, i32 noundef 48, i32 noundef %160) #12
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %342

164:                                              ; preds = %156
  br i1 %110, label %165, label %172

165:                                              ; preds = %164
  %166 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 9
  %167 = load i8, ptr %166, align 4
  %168 = zext i8 %167 to i32
  %169 = load ptr, ptr %65, align 4
  %170 = tail call i32 @regmap_write(ptr noundef %169, i32 noundef 68, i32 noundef %168) #12
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %342

172:                                              ; preds = %165, %164
  %173 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 10
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = load ptr, ptr %65, align 4
  %177 = tail call i32 @regmap_write(ptr noundef %176, i32 noundef 80, i32 noundef %175) #12
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %342

179:                                              ; preds = %172
  %180 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 11
  %181 = load i8, ptr %180, align 2
  %182 = zext i8 %181 to i32
  %183 = load ptr, ptr %65, align 4
  %184 = tail call i32 @regmap_write(ptr noundef %183, i32 noundef 83, i32 noundef %182) #12
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %342

186:                                              ; preds = %179
  %187 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 12
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load ptr, ptr %65, align 4
  %191 = tail call i32 @regmap_write(ptr noundef %190, i32 noundef 95, i32 noundef %189) #12
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %342

193:                                              ; preds = %186
  %194 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 13
  %195 = load i8, ptr %194, align 4
  %196 = zext i8 %195 to i32
  %197 = load ptr, ptr %65, align 4
  %198 = tail call i32 @regmap_write(ptr noundef %197, i32 noundef 97, i32 noundef %196) #12
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %342

200:                                              ; preds = %193
  %201 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 14
  %202 = load i8, ptr %201, align 1
  %203 = zext i8 %202 to i32
  %204 = load ptr, ptr %65, align 4
  %205 = tail call i32 @regmap_write(ptr noundef %204, i32 noundef 98, i32 noundef %203) #12
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %342

207:                                              ; preds = %200
  %208 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 15
  %209 = load i8, ptr %208, align 2
  %210 = zext i8 %209 to i32
  %211 = load ptr, ptr %65, align 4
  %212 = tail call i32 @regmap_write(ptr noundef %211, i32 noundef 99, i32 noundef %210) #12
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %342

214:                                              ; preds = %207
  %215 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 16
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = load ptr, ptr %65, align 4
  %219 = tail call i32 @regmap_write(ptr noundef %218, i32 noundef 103, i32 noundef %217) #12
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %342

221:                                              ; preds = %214
  %222 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 17
  %223 = load i8, ptr %222, align 4
  %224 = zext i8 %223 to i32
  %225 = load ptr, ptr %65, align 4
  %226 = tail call i32 @regmap_write(ptr noundef %225, i32 noundef 104, i32 noundef %224) #12
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %342

228:                                              ; preds = %221
  %229 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 18
  %230 = load i8, ptr %229, align 1
  %231 = zext i8 %230 to i32
  %232 = load ptr, ptr %65, align 4
  %233 = tail call i32 @regmap_write(ptr noundef %232, i32 noundef 105, i32 noundef %231) #12
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %342

235:                                              ; preds = %228
  %236 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 19
  %237 = load i8, ptr %236, align 2
  %238 = zext i8 %237 to i32
  %239 = load ptr, ptr %65, align 4
  %240 = tail call i32 @regmap_write(ptr noundef %239, i32 noundef 106, i32 noundef %238) #12
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %342

242:                                              ; preds = %235
  %243 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 20
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = load ptr, ptr %65, align 4
  %247 = tail call i32 @regmap_write(ptr noundef %246, i32 noundef 107, i32 noundef %245) #12
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %342

249:                                              ; preds = %242
  %250 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 21
  %251 = load i8, ptr %250, align 4
  %252 = zext i8 %251 to i32
  %253 = load ptr, ptr %65, align 4
  %254 = tail call i32 @regmap_write(ptr noundef %253, i32 noundef 108, i32 noundef %252) #12
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %342

256:                                              ; preds = %249
  %257 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 22
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  %260 = load ptr, ptr %65, align 4
  %261 = tail call i32 @regmap_write(ptr noundef %260, i32 noundef 109, i32 noundef %259) #12
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %342

263:                                              ; preds = %256
  %264 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 23
  %265 = load i8, ptr %264, align 2
  %266 = zext i8 %265 to i32
  %267 = load ptr, ptr %65, align 4
  %268 = tail call i32 @regmap_write(ptr noundef %267, i32 noundef 110, i32 noundef %266) #12
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %342

270:                                              ; preds = %263
  %271 = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %157, i32 24
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = load ptr, ptr %65, align 4
  %275 = tail call i32 @regmap_write(ptr noundef %274, i32 noundef 111, i32 noundef %273) #12
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %342

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.fc2580_dev, ptr %0, i32 0, i32 6
  %279 = load i32, ptr %278, align 4
  %280 = icmp ugt i32 %279, 6000000
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = icmp ugt i32 %279, 7000000
  br i1 %282, label %283, label %286

283:                                              ; preds = %281
  %284 = icmp ugt i32 %279, 8000000
  %285 = select i1 %284, i32 3, i32 2
  br label %286

286:                                              ; preds = %283, %281, %277
  %287 = phi i32 [ 0, %277 ], [ 1, %281 ], [ %285, %283 ]
  %288 = load ptr, ptr %65, align 4
  %289 = getelementptr [4 x %struct.fc2580_if_filter], ptr @fc2580_if_filter_lut, i32 0, i32 %287, i32 1
  %290 = load i8, ptr %289, align 4
  %291 = zext i8 %290 to i32
  %292 = tail call i32 @regmap_write(ptr noundef %288, i32 noundef 54, i32 noundef %291) #12
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %342

294:                                              ; preds = %286
  %295 = load i32, ptr %278, align 4
  %296 = mul i32 %295, 122
  %297 = udiv i32 %296, 200
  %298 = sub nsw i32 8058000, %297
  %299 = load i32, ptr %0, align 4
  %300 = zext i32 %299 to i64
  %301 = zext i32 %298 to i64
  %302 = mul nuw i64 %301, %300
  %303 = tail call i64 @div64_u64(i64 noundef %302, i64 noundef 1000000000000) #12
  %304 = trunc i64 %303 to i32
  %305 = load ptr, ptr %65, align 4
  %306 = tail call i32 @regmap_write(ptr noundef %305, i32 noundef 55, i32 noundef %304) #12
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %342

308:                                              ; preds = %294
  %309 = load ptr, ptr %65, align 4
  %310 = getelementptr [4 x %struct.fc2580_if_filter], ptr @fc2580_if_filter_lut, i32 0, i32 %287, i32 2
  %311 = load i8, ptr %310, align 1
  %312 = zext i8 %311 to i32
  %313 = tail call i32 @regmap_write(ptr noundef %309, i32 noundef 57, i32 noundef %312) #12
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %342

315:                                              ; preds = %308
  %316 = load volatile i32, ptr @jiffies, align 64
  %317 = add i32 %316, 3
  store i32 -193, ptr %2, align 4
  %318 = load volatile i32, ptr @jiffies, align 64
  %319 = sub i32 %317, %318
  %320 = icmp sgt i32 %319, -1
  br i1 %320, label %321, label %342

321:                                              ; preds = %335, %315
  %322 = load ptr, ptr %65, align 4
  %323 = call i32 @regmap_write(ptr noundef %322, i32 noundef 46, i32 noundef 9) #12
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %342

325:                                              ; preds = %321
  %326 = load ptr, ptr %65, align 4
  %327 = call i32 @regmap_read(ptr noundef %326, i32 noundef 47, ptr noundef nonnull %2) #12
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %325
  %330 = load i32, ptr %2, align 4
  %331 = and i32 %330, 192
  store i32 %331, ptr %2, align 4
  %332 = load ptr, ptr %65, align 4
  %333 = call i32 @regmap_write(ptr noundef %332, i32 noundef 46, i32 noundef 1) #12
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %342

335:                                              ; preds = %329
  %336 = load i32, ptr %2, align 4
  %337 = load volatile i32, ptr @jiffies, align 64
  %338 = sub i32 %317, %337
  %339 = icmp sgt i32 %338, -1
  %340 = icmp ne i32 %336, 192
  %341 = select i1 %339, i1 %340, i1 false
  br i1 %341, label %321, label %342

342:                                              ; preds = %335, %329, %325, %321, %315, %308, %294, %286, %270, %263, %256, %249, %242, %235, %228, %221, %214, %207, %200, %193, %186, %179, %172, %165, %156, %148, %139, %132, %125, %118, %111, %100, %87, %82, %76, %70, %63, %1
  %343 = phi i32 [ 0, %1 ], [ %68, %63 ], [ %74, %70 ], [ %80, %76 ], [ %85, %82 ], [ %89, %87 ], [ %106, %100 ], [ %116, %111 ], [ %123, %118 ], [ %130, %125 ], [ %137, %132 ], [ %144, %139 ], [ %154, %148 ], [ %162, %156 ], [ %170, %165 ], [ %177, %172 ], [ %184, %179 ], [ %191, %186 ], [ %198, %193 ], [ %205, %200 ], [ %212, %207 ], [ %219, %214 ], [ %226, %221 ], [ %233, %228 ], [ %240, %235 ], [ %247, %242 ], [ %254, %249 ], [ %261, %256 ], [ %268, %263 ], [ %275, %270 ], [ %292, %286 ], [ %306, %294 ], [ %313, %308 ], [ 0, %315 ], [ %323, %321 ], [ %327, %325 ], [ %333, %329 ], [ 0, %335 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %343
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc2580_standby(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 196
  store i8 0, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 2, i32 noundef 10) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = tail call fastcc i32 @fc2580_set_params(ptr noundef %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ %5, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc2580_s_frequency(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr inbounds %struct.v4l2_frequency, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 130000000)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 2000000000)
  %8 = getelementptr i8, ptr %0, i32 200
  store i32 %7, ptr %8, align 4
  %9 = tail call fastcc i32 @fc2580_set_params(ptr noundef %3)
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fc2580_g_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 200
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.v4l2_frequency, ptr %1, i32 0, i32 2
  store i32 %4, ptr %5, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fc2580_enum_freq_bands(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #8 {
  %3 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 3
  store i32 5120, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 4
  store i32 130000000, ptr %8, align 4
  %9 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 5
  store i32 2000000000, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc2580_g_tuner(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strscpy(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 32) #12
  %5 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 2
  store i32 5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 3
  store i32 5120, ptr %6, align 4
  %7 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 4
  store i32 130000000, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 5
  store i32 2000000000, ptr %8, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @fc2580_s_tuner(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #9 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc2580_dvb_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fc2580_dev, ptr %3, i32 0, i32 2
  br label %8

5:                                                ; preds = %8
  %6 = add nuw nsw i32 %9, 1
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ 0, %1 ], [ %6, %5 ]
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr [16 x %struct.fc2580_reg_val], ptr @fc2580_init_reg_vals, i32 0, i32 %9
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [16 x %struct.fc2580_reg_val], ptr @fc2580_init_reg_vals, i32 0, i32 %9, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %13, i32 noundef %16) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %5, label %21

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.fc2580_dev, ptr %3, i32 0, i32 4
  store i8 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %8
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc2580_dvb_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fc2580_dev, ptr %3, i32 0, i32 4
  store i8 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fc2580_dev, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2, i32 noundef 10) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc2580_dvb_set_params(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fc2580_dev, ptr %3, i32 0, i32 5
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fc2580_dev, ptr %3, i32 0, i32 6
  store i32 %8, ptr %9, align 4
  %10 = tail call fastcc i32 @fc2580_set_params(ptr noundef %3)
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fc2580_dvb_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148620838, i64 2148621118, i64 2148621452, i64 2148621786}
