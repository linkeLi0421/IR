; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda10071.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10071.c"
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
%struct.lock_class_key = type {}
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.tda10071_reg_val_mask = type { i8, i8, i8 }
%struct.tda10071_modcod = type { i32, i32, i32, i8 }
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
%struct.tda10071_dev = type { %struct.dvb_frontend, ptr, ptr, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i64, i64 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.tda10071_platform_data = type { i32, i16, i8, i8, i8, i8, ptr }
%struct.tda10071_cmd = type { [30 x i8], i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }

@tda10071_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda10071_cx24118\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author253 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [53 x i8] c"description=NXP TDA10071 DVB-S/S2 demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [28 x i8] c"firmware=dvb-fe-tda10071.fw\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@tda10071_driver = internal global %struct.i2c_driver { i32 0, ptr @tda10071_probe, ptr @tda10071_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda10071_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"tda10071\00", align 1
@tda10071_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@tda10071_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"&dev->cmd_execute_mutex\00", align 1
@tda10071_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"NXP TDA10071\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179327 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @tda10071_init, ptr @tda10071_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10071_set_frontend, ptr @tda10071_get_tune_settings, ptr @tda10071_get_frontend, ptr @tda10071_read_status, ptr @tda10071_read_ber, ptr @tda10071_read_signal_strength, ptr @tda10071_read_snr, ptr @tda10071_read_ucblocks, ptr null, ptr @tda10071_diseqc_send_master_cmd, ptr @tda10071_diseqc_recv_slave_reply, ptr @tda10071_diseqc_send_burst, ptr @tda10071_set_tone, ptr @tda10071_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"NXP TDA10071 successfully identified\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"dvb-fe-tda10071.fw\00", align 1
@__const.tda10071_init.tab = private unnamed_addr constant [10 x %struct.tda10071_reg_val_mask] [%struct.tda10071_reg_val_mask { i8 -51, i8 0, i8 7 }, %struct.tda10071_reg_val_mask { i8 -128, i8 0, i8 2 }, %struct.tda10071_reg_val_mask { i8 -51, i8 0, i8 -64 }, %struct.tda10071_reg_val_mask { i8 -50, i8 0, i8 27 }, %struct.tda10071_reg_val_mask { i8 -99, i8 0, i8 1 }, %struct.tda10071_reg_val_mask { i8 -99, i8 0, i8 2 }, %struct.tda10071_reg_val_mask { i8 -98, i8 0, i8 1 }, %struct.tda10071_reg_val_mask { i8 -121, i8 0, i8 -128 }, %struct.tda10071_reg_val_mask { i8 -50, i8 0, i8 8 }, %struct.tda10071_reg_val_mask { i8 -50, i8 0, i8 16 }], align 1
@.str.4 = private unnamed_addr constant [120 x i8] c"did not find the firmware file '%s' (status %d). You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"found a '%s' in cold state, will try to load a firmware\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"firmware download failed=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"firmware version %d.%d.%d.%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"found a '%s' in warm state\0A\00", align 1
@__const.tda10071_sleep.tab = private unnamed_addr constant [10 x %struct.tda10071_reg_val_mask] [%struct.tda10071_reg_val_mask { i8 -51, i8 7, i8 7 }, %struct.tda10071_reg_val_mask { i8 -128, i8 2, i8 2 }, %struct.tda10071_reg_val_mask { i8 -51, i8 -64, i8 -64 }, %struct.tda10071_reg_val_mask { i8 -50, i8 27, i8 27 }, %struct.tda10071_reg_val_mask { i8 -99, i8 1, i8 1 }, %struct.tda10071_reg_val_mask { i8 -99, i8 2, i8 2 }, %struct.tda10071_reg_val_mask { i8 -98, i8 1, i8 1 }, %struct.tda10071_reg_val_mask { i8 -121, i8 -128, i8 -128 }, %struct.tda10071_reg_val_mask { i8 -50, i8 8, i8 8 }, %struct.tda10071_reg_val_mask { i8 -50, i8 16, i8 16 }], align 1
@TDA10071_MODCOD = internal unnamed_addr constant [22 x %struct.tda10071_modcod] [%struct.tda10071_modcod { i32 6, i32 0, i32 9, i8 0 }, %struct.tda10071_modcod { i32 6, i32 0, i32 1, i8 4 }, %struct.tda10071_modcod { i32 6, i32 0, i32 10, i8 5 }, %struct.tda10071_modcod { i32 6, i32 0, i32 2, i8 6 }, %struct.tda10071_modcod { i32 6, i32 0, i32 3, i8 7 }, %struct.tda10071_modcod { i32 6, i32 0, i32 4, i8 8 }, %struct.tda10071_modcod { i32 6, i32 0, i32 5, i8 9 }, %struct.tda10071_modcod { i32 6, i32 0, i32 8, i8 10 }, %struct.tda10071_modcod { i32 6, i32 0, i32 11, i8 11 }, %struct.tda10071_modcod { i32 6, i32 9, i32 9, i8 0 }, %struct.tda10071_modcod { i32 6, i32 9, i32 10, i8 12 }, %struct.tda10071_modcod { i32 6, i32 9, i32 2, i8 13 }, %struct.tda10071_modcod { i32 6, i32 9, i32 3, i8 14 }, %struct.tda10071_modcod { i32 6, i32 9, i32 5, i8 15 }, %struct.tda10071_modcod { i32 6, i32 9, i32 8, i8 16 }, %struct.tda10071_modcod { i32 6, i32 9, i32 11, i8 17 }, %struct.tda10071_modcod { i32 5, i32 0, i32 9, i8 45 }, %struct.tda10071_modcod { i32 5, i32 0, i32 1, i8 46 }, %struct.tda10071_modcod { i32 5, i32 0, i32 2, i8 47 }, %struct.tda10071_modcod { i32 5, i32 0, i32 3, i8 48 }, %struct.tda10071_modcod { i32 5, i32 0, i32 5, i8 49 }, %struct.tda10071_modcod { i32 5, i32 0, i32 7, i8 50 }], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_license255], section "llvm.metadata"

@__mod_i2c__tda10071_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @tda10071_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @tda10071_driver) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tda10071_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1112) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %62, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tda10071_dev, ptr %8, i32 0, i32 1
  store ptr %0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.tda10071_dev, ptr %8, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @tda10071_probe.__key) #13
  %13 = load i32, ptr %6, align 4
  %14 = getelementptr inbounds %struct.tda10071_dev, ptr %8, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tda10071_platform_data, ptr %6, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tda10071_dev, ptr %8, i32 0, i32 5
  store i16 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.tda10071_platform_data, ptr %6, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = getelementptr inbounds %struct.tda10071_dev, ptr %8, i32 0, i32 6
  store i8 %19, ptr %20, align 2
  %21 = getelementptr inbounds %struct.tda10071_platform_data, ptr %6, i32 0, i32 3
  %22 = load i8, ptr %21, align 1, !range !9
  %23 = getelementptr inbounds %struct.tda10071_dev, ptr %8, i32 0, i32 7
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.tda10071_platform_data, ptr %6, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tda10071_dev, ptr %8, i32 0, i32 8
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tda10071_platform_data, ptr %6, i32 0, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.tda10071_dev, ptr %8, i32 0, i32 9
  store i8 %28, ptr %29, align 1
  %30 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tda10071_probe.regmap_config, ptr noundef null, ptr noundef null) #13
  %31 = getelementptr inbounds %struct.tda10071_dev, ptr %8, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %10
  %34 = ptrtoint ptr %30 to i32
  br label %60

35:                                               ; preds = %10
  %36 = call i32 @regmap_read(ptr noundef %30, i32 noundef 255, ptr noundef nonnull %3) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load ptr, ptr %31, align 4
  %43 = call i32 @regmap_read(ptr noundef %42, i32 noundef 221, ptr noundef nonnull %3) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i32, ptr %3, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load ptr, ptr %31, align 4
  %50 = call i32 @regmap_read(ptr noundef %49, i32 noundef 254, ptr noundef nonnull %3) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, ptr %3, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %56, ptr noundef nonnull align 4 dereferenceable(544) @tda10071_ops, i32 544, i1 false)
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 3
  store ptr %8, ptr %57, align 8
  %58 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %58, align 8
  %59 = getelementptr inbounds %struct.tda10071_platform_data, ptr %6, i32 0, i32 6
  store ptr @tda10071_get_dvb_frontend, ptr %59, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.2) #15
  br label %62

60:                                               ; preds = %52, %48, %45, %41, %38, %35, %33
  %61 = phi i32 [ %34, %33 ], [ %36, %35 ], [ %43, %41 ], [ %50, %48 ], [ -19, %38 ], [ -19, %45 ], [ -19, %52 ]
  call void @kfree(ptr noundef nonnull %8) #13
  br label %62

62:                                               ; preds = %60, %55, %2
  %63 = phi i32 [ 0, %55 ], [ %61, %60 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @tda10071_get_dvb_frontend(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_init(ptr nocapture noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.tda10071_cmd, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [43 x %struct.tda10071_reg_val_mask], align 1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %6, i8 0, i32 31, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 129, ptr nonnull %10) #13
  %15 = getelementptr inbounds i8, ptr %10, i32 89
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(129) %15, i8 0, i32 40, i1 false), !annotation !8
  store i8 -15, ptr %10, align 1
  %16 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 0, i32 1
  store i8 112, ptr %16, align 1
  %17 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 0, i32 2
  store i8 -1, ptr %17, align 1
  %18 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 1
  store i8 -120, ptr %18, align 1
  %19 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 1, i32 1
  %20 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 8
  %21 = load i8, ptr %20, align 4
  store i8 %21, ptr %19, align 1
  %22 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 1, i32 2
  store i8 63, ptr %22, align 1
  %23 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 2
  store i8 -119, ptr %23, align 1
  %24 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 2, i32 1
  store i8 0, ptr %24, align 1
  %25 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 2, i32 2
  store i8 16, ptr %25, align 1
  %26 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 3
  store i8 -119, ptr %26, align 1
  %27 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 3, i32 1
  store i8 16, ptr %27, align 1
  %28 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 3, i32 2
  store i8 16, ptr %28, align 1
  %29 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 4
  store i8 -64, ptr %29, align 1
  %30 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 4, i32 1
  store i8 1, ptr %30, align 1
  %31 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 4, i32 2
  store i8 1, ptr %31, align 1
  %32 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 5
  store i8 -64, ptr %32, align 1
  %33 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 5, i32 1
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 5, i32 2
  store i8 1, ptr %34, align 1
  %35 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 6
  store i8 -32, ptr %35, align 1
  %36 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 6, i32 1
  store i8 -1, ptr %36, align 1
  %37 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 6, i32 2
  store i8 -1, ptr %37, align 1
  %38 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 7
  store i8 -32, ptr %38, align 1
  %39 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 7, i32 1
  store i8 0, ptr %39, align 1
  %40 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 7, i32 2
  store i8 -1, ptr %40, align 1
  %41 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 8
  store i8 -106, ptr %41, align 1
  %42 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 8, i32 1
  store i8 30, ptr %42, align 1
  %43 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 8, i32 2
  store i8 126, ptr %43, align 1
  %44 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 9
  store i8 -117, ptr %44, align 1
  %45 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 9, i32 1
  store i8 8, ptr %45, align 1
  %46 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 9, i32 2
  store i8 8, ptr %46, align 1
  %47 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 10
  store i8 -117, ptr %47, align 1
  %48 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 10, i32 1
  store i8 0, ptr %48, align 1
  %49 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 10, i32 2
  store i8 8, ptr %49, align 1
  %50 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 11
  store i8 -113, ptr %50, align 1
  %51 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 11, i32 1
  store i8 26, ptr %51, align 1
  %52 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 11, i32 2
  store i8 126, ptr %52, align 1
  %53 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 12
  store i8 -116, ptr %53, align 1
  %54 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 12, i32 1
  store i8 104, ptr %54, align 1
  %55 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 12, i32 2
  store i8 -1, ptr %55, align 1
  %56 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 13
  store i8 -115, ptr %56, align 1
  %57 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 13, i32 1
  store i8 8, ptr %57, align 1
  %58 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 13, i32 2
  store i8 -1, ptr %58, align 1
  %59 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 14
  store i8 -114, ptr %59, align 1
  %60 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 14, i32 1
  store i8 76, ptr %60, align 1
  %61 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 14, i32 2
  store i8 -1, ptr %61, align 1
  %62 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 15
  store i8 -113, ptr %62, align 1
  %63 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 15, i32 1
  store i8 1, ptr %63, align 1
  %64 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 15, i32 2
  store i8 1, ptr %64, align 1
  %65 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 16
  store i8 -117, ptr %65, align 1
  %66 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 16, i32 1
  store i8 4, ptr %66, align 1
  %67 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 16, i32 2
  store i8 4, ptr %67, align 1
  %68 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 17
  store i8 -117, ptr %68, align 1
  %69 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 17, i32 1
  store i8 0, ptr %69, align 1
  %70 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 17, i32 2
  store i8 4, ptr %70, align 1
  %71 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 18
  store i8 -121, ptr %71, align 1
  %72 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 18, i32 1
  store i8 5, ptr %72, align 1
  %73 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 18, i32 2
  store i8 7, ptr %73, align 1
  %74 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 19
  store i8 -128, ptr %74, align 1
  %75 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 19, i32 1
  store i8 0, ptr %75, align 1
  %76 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 19, i32 2
  store i8 32, ptr %76, align 1
  %77 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 20
  store i8 -56, ptr %77, align 1
  %78 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 20, i32 1
  store i8 1, ptr %78, align 1
  %79 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 20, i32 2
  store i8 -1, ptr %79, align 1
  %80 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 21
  store i8 -76, ptr %80, align 1
  %81 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 21, i32 1
  store i8 71, ptr %81, align 1
  %82 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 21, i32 2
  store i8 -1, ptr %82, align 1
  %83 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 22
  store i8 -75, ptr %83, align 1
  %84 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 22, i32 1
  store i8 -100, ptr %84, align 1
  %85 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 22, i32 2
  store i8 -1, ptr %85, align 1
  %86 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 23
  store i8 -74, ptr %86, align 1
  %87 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 23, i32 1
  store i8 125, ptr %87, align 1
  %88 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 23, i32 2
  store i8 -1, ptr %88, align 1
  %89 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 24
  store i8 -70, ptr %89, align 1
  %90 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 24, i32 1
  store i8 0, ptr %90, align 1
  %91 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 24, i32 2
  store i8 3, ptr %91, align 1
  %92 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 25
  store i8 -73, ptr %92, align 1
  %93 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 25, i32 1
  store i8 71, ptr %93, align 1
  %94 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 25, i32 2
  store i8 -1, ptr %94, align 1
  %95 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 26
  store i8 -72, ptr %95, align 1
  %96 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 26, i32 1
  store i8 -100, ptr %96, align 1
  %97 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 26, i32 2
  store i8 -1, ptr %97, align 1
  %98 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 27
  store i8 -71, ptr %98, align 1
  %99 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 27, i32 1
  store i8 125, ptr %99, align 1
  %100 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 27, i32 2
  store i8 -1, ptr %100, align 1
  %101 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 28
  store i8 -70, ptr %101, align 1
  %102 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 28, i32 1
  store i8 0, ptr %102, align 1
  %103 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 28, i32 2
  store i8 12, ptr %103, align 1
  %104 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 29
  store i8 -56, ptr %104, align 1
  %105 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 29, i32 1
  store i8 0, ptr %105, align 1
  %106 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 29, i32 2
  store i8 -1, ptr %106, align 1
  %107 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 30
  store i8 -51, ptr %107, align 1
  %108 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 30, i32 1
  store i8 0, ptr %108, align 1
  %109 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 30, i32 2
  store i8 4, ptr %109, align 1
  %110 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 31
  store i8 -51, ptr %110, align 1
  %111 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 31, i32 1
  store i8 0, ptr %111, align 1
  %112 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 31, i32 2
  store i8 32, ptr %112, align 1
  %113 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 32
  store i8 -24, ptr %113, align 1
  %114 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 32, i32 1
  store i8 2, ptr %114, align 1
  %115 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 32, i32 2
  store i8 -1, ptr %115, align 1
  %116 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 33
  store i8 -49, ptr %116, align 1
  %117 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 33, i32 1
  store i8 32, ptr %117, align 1
  %118 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 33, i32 2
  store i8 -1, ptr %118, align 1
  %119 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 34
  store i8 -101, ptr %119, align 1
  %120 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 34, i32 1
  store i8 -41, ptr %120, align 1
  %121 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 34, i32 2
  store i8 -1, ptr %121, align 1
  %122 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 35
  store i8 -102, ptr %122, align 1
  %123 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 35, i32 1
  store i8 1, ptr %123, align 1
  %124 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 35, i32 2
  store i8 3, ptr %124, align 1
  %125 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 36
  store i8 -88, ptr %125, align 1
  %126 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 36, i32 1
  store i8 5, ptr %126, align 1
  %127 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 36, i32 2
  store i8 15, ptr %127, align 1
  %128 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 37
  store i8 -88, ptr %128, align 1
  %129 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 37, i32 1
  store i8 101, ptr %129, align 1
  %130 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 37, i32 2
  store i8 -16, ptr %130, align 1
  %131 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 38
  store i8 -90, ptr %131, align 1
  %132 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 38, i32 1
  store i8 -96, ptr %132, align 1
  %133 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 38, i32 2
  store i8 -16, ptr %133, align 1
  %134 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 39
  store i8 -99, ptr %134, align 1
  %135 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 39, i32 1
  store i8 80, ptr %135, align 1
  %136 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 39, i32 2
  store i8 -4, ptr %136, align 1
  %137 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 40
  store i8 -98, ptr %137, align 1
  %138 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 40, i32 1
  store i8 32, ptr %138, align 1
  %139 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 40, i32 2
  store i8 -32, ptr %139, align 1
  %140 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 41
  store i8 -93, ptr %140, align 1
  %141 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 41, i32 1
  store i8 28, ptr %141, align 1
  %142 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 41, i32 2
  store i8 124, ptr %142, align 1
  %143 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 42
  store i8 -43, ptr %143, align 1
  %144 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 42, i32 1
  store i8 3, ptr %144, align 1
  %145 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %10, i32 42, i32 2
  store i8 3, ptr %145, align 1
  %146 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 14
  %147 = load i8, ptr %146, align 4, !range !9
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %182, label %149

149:                                              ; preds = %1
  %150 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 2
  br label %154

151:                                              ; preds = %167
  %152 = add nuw nsw i32 %155, 1
  %153 = icmp eq i32 %152, 10
  br i1 %153, label %176, label %154

154:                                              ; preds = %151, %149
  %155 = phi i32 [ 0, %149 ], [ %152, %151 ]
  %156 = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_init.tab, i32 0, i32 %155
  %157 = load i8, ptr %156, align 1
  %158 = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_init.tab, i32 0, i32 %155, i32 1
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_init.tab, i32 0, i32 %155, i32 2
  %161 = load i8, ptr %160, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %159, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !8
  %162 = load ptr, ptr %150, align 4
  %163 = zext i8 %157 to i32
  %164 = call i32 @regmap_bulk_read(ptr noundef %162, i32 noundef %163, ptr noundef nonnull %5, i32 noundef 1) #13
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %154
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %367

167:                                              ; preds = %154
  %168 = and i8 %161, %159
  %169 = xor i8 %161, -1
  %170 = load i8, ptr %5, align 1
  %171 = and i8 %170, %169
  store i8 %171, ptr %5, align 1
  %172 = or i8 %171, %168
  store i8 %172, ptr %4, align 1
  %173 = load ptr, ptr %150, align 4
  %174 = call i32 @regmap_bulk_write(ptr noundef %173, i32 noundef %163, ptr noundef nonnull %4, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %151, label %367

176:                                              ; preds = %151
  store i8 54, ptr %6, align 1
  %177 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %177, align 1
  %178 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 2
  store i8 0, ptr %178, align 1
  %179 = getelementptr inbounds %struct.tda10071_cmd, ptr %6, i32 0, i32 1
  store i8 3, ptr %179, align 1
  %180 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %12, ptr noundef nonnull %6)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %355, label %367

182:                                              ; preds = %1
  %183 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %184 = call i32 @request_firmware(ptr noundef nonnull %8, ptr noundef nonnull @.str.3, ptr noundef %183) #13
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 2
  br label %192

188:                                              ; preds = %182
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %184) #15
  br label %367

189:                                              ; preds = %215
  %190 = add nuw nsw i32 %193, 1
  %191 = icmp eq i32 %190, 43
  br i1 %191, label %220, label %192

192:                                              ; preds = %189, %186
  %193 = phi i32 [ 0, %186 ], [ %190, %189 ]
  %194 = getelementptr [43 x %struct.tda10071_reg_val_mask], ptr %10, i32 0, i32 %193
  %195 = load i8, ptr %194, align 1
  %196 = getelementptr [43 x %struct.tda10071_reg_val_mask], ptr %10, i32 0, i32 %193, i32 1
  %197 = load i8, ptr %196, align 1
  %198 = getelementptr [43 x %struct.tda10071_reg_val_mask], ptr %10, i32 0, i32 %193, i32 2
  %199 = load i8, ptr %198, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %197, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  %200 = icmp eq i8 %199, -1
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = zext i8 %195 to i32
  br label %215

203:                                              ; preds = %192
  %204 = load ptr, ptr %187, align 4
  %205 = zext i8 %195 to i32
  %206 = call i32 @regmap_bulk_read(ptr noundef %204, i32 noundef %205, ptr noundef nonnull %3, i32 noundef 1) #13
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %203
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %364

209:                                              ; preds = %203
  %210 = and i8 %199, %197
  %211 = xor i8 %199, -1
  %212 = load i8, ptr %3, align 1
  %213 = and i8 %212, %211
  store i8 %213, ptr %3, align 1
  %214 = or i8 %213, %210
  store i8 %214, ptr %2, align 1
  br label %215

215:                                              ; preds = %209, %201
  %216 = phi i32 [ %202, %201 ], [ %205, %209 ]
  %217 = load ptr, ptr %187, align 4
  %218 = call i32 @regmap_bulk_write(ptr noundef %217, i32 noundef %216, ptr noundef nonnull %2, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %189, label %364

220:                                              ; preds = %189
  %221 = load ptr, ptr %187, align 4
  %222 = call i32 @regmap_write(ptr noundef %221, i32 noundef 224, i32 noundef 127) #13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %364

224:                                              ; preds = %220
  %225 = load ptr, ptr %187, align 4
  %226 = call i32 @regmap_write(ptr noundef %225, i32 noundef 247, i32 noundef 129) #13
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %364

228:                                              ; preds = %224
  %229 = load ptr, ptr %187, align 4
  %230 = call i32 @regmap_write(ptr noundef %229, i32 noundef 248, i32 noundef 0) #13
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %364

232:                                              ; preds = %228
  %233 = load ptr, ptr %187, align 4
  %234 = call i32 @regmap_write(ptr noundef %233, i32 noundef 249, i32 noundef 0) #13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %364

236:                                              ; preds = %232
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %183, ptr noundef nonnull @.str.5, ptr noundef nonnull @tda10071_ops) #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %183, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #15
  %237 = load ptr, ptr %8, align 4
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, -1
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %267

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 5
  %243 = load i16, ptr %242, align 8
  br label %244

244:                                              ; preds = %260, %241
  %245 = phi ptr [ %237, %241 ], [ %266, %260 ]
  %246 = phi i16 [ %243, %241 ], [ %261, %260 ]
  %247 = phi i32 [ %239, %241 ], [ %264, %260 ]
  %248 = zext i16 %246 to i32
  %249 = icmp ult i32 %247, %248
  %250 = add nsw i32 %248, -1
  %251 = select i1 %249, i32 %247, i32 %250
  %252 = load ptr, ptr %187, align 4
  %253 = getelementptr inbounds %struct.firmware, ptr %245, i32 0, i32 1
  %254 = load ptr, ptr %253, align 4
  %255 = sub i32 %239, %247
  %256 = getelementptr i8, ptr %254, i32 %255
  %257 = call i32 @regmap_bulk_write(ptr noundef %252, i32 noundef 250, ptr noundef %256, i32 noundef %251) #13
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %244
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.7, i32 noundef %257) #15
  br label %364

260:                                              ; preds = %244
  %261 = load i16, ptr %242, align 8
  %262 = zext i16 %261 to i32
  %263 = add i32 %247, 1
  %264 = sub i32 %263, %262
  %265 = icmp sgt i32 %264, 0
  %266 = load ptr, ptr %8, align 4
  br i1 %265, label %244, label %267

267:                                              ; preds = %260, %236
  %268 = phi ptr [ %237, %236 ], [ %266, %260 ]
  call void @release_firmware(ptr noundef %268) #13
  %269 = load ptr, ptr %187, align 4
  %270 = call i32 @regmap_write(ptr noundef %269, i32 noundef 247, i32 noundef 12) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %367

272:                                              ; preds = %267
  %273 = load ptr, ptr %187, align 4
  %274 = call i32 @regmap_write(ptr noundef %273, i32 noundef 224, i32 noundef 0) #13
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %367

276:                                              ; preds = %272
  call void @msleep(i32 noundef 250) #13
  %277 = load ptr, ptr %187, align 4
  %278 = call i32 @regmap_read(ptr noundef %277, i32 noundef 81, ptr noundef nonnull %7) #13
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %367

280:                                              ; preds = %276
  %281 = load i32, ptr %7, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %280
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %183, ptr noundef nonnull @.str.8) #15
  br label %367

284:                                              ; preds = %280
  store i8 1, ptr %146, align 4
  store i8 53, ptr %6, align 1
  %285 = getelementptr inbounds %struct.tda10071_cmd, ptr %6, i32 0, i32 1
  store i8 1, ptr %285, align 1
  %286 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %12, ptr noundef nonnull %6)
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %367

288:                                              ; preds = %284
  %289 = load ptr, ptr %187, align 4
  %290 = load i8, ptr %285, align 1
  %291 = zext i8 %290 to i32
  %292 = call i32 @regmap_bulk_read(ptr noundef %289, i32 noundef %291, ptr noundef nonnull %9, i32 noundef 4) #13
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %367

294:                                              ; preds = %288
  %295 = load i8, ptr %9, align 4
  %296 = zext i8 %295 to i32
  %297 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 1
  %298 = load i8, ptr %297, align 1
  %299 = zext i8 %298 to i32
  %300 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 2
  %301 = load i8, ptr %300, align 2
  %302 = zext i8 %301 to i32
  %303 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 3
  %304 = load i8, ptr %303, align 1
  %305 = zext i8 %304 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %183, ptr noundef nonnull @.str.9, i32 noundef %296, i32 noundef %299, i32 noundef %302, i32 noundef %305) #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %183, ptr noundef nonnull @.str.10, ptr noundef nonnull @tda10071_ops) #15
  %306 = load ptr, ptr %187, align 4
  %307 = call i32 @regmap_bulk_read(ptr noundef %306, i32 noundef 129, ptr noundef nonnull %9, i32 noundef 2) #13
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %367

309:                                              ; preds = %294
  store i8 16, ptr %6, align 1
  %310 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 4
  %311 = load i32, ptr %310, align 4
  %312 = udiv i32 %311, 1000
  %313 = lshr i32 %312, 8
  %314 = trunc i32 %313 to i8
  %315 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 1
  store i8 %314, ptr %315, align 1
  %316 = trunc i32 %312 to i8
  %317 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 2
  store i8 %316, ptr %317, align 1
  %318 = load i8, ptr %9, align 4
  %319 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 3
  store i8 %318, ptr %319, align 1
  %320 = load i8, ptr %297, align 1
  %321 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 4
  store i8 %320, ptr %321, align 1
  %322 = load i8, ptr %20, align 4
  %323 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 5
  store i8 %322, ptr %323, align 1
  %324 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 7
  %325 = load i8, ptr %324, align 1, !range !9
  %326 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 6
  store i8 %325, ptr %326, align 1
  %327 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 7
  store i8 0, ptr %327, align 1
  store i8 8, ptr %285, align 1
  %328 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %12, ptr noundef nonnull %6)
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %367

330:                                              ; preds = %309
  %331 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 9
  %332 = load i8, ptr %331, align 1
  %333 = icmp eq i8 %332, 0
  %334 = select i1 %333, i8 20, i8 %332
  store i8 21, ptr %6, align 1
  store i32 0, ptr %315, align 1
  store i8 %334, ptr %323, align 1
  store i8 0, ptr %326, align 1
  store i8 3, ptr %327, align 1
  %335 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 8
  store i8 2, ptr %335, align 1
  %336 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 9
  store i8 2, ptr %336, align 1
  %337 = getelementptr inbounds [30 x i8], ptr %6, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(5) %337, i8 0, i64 5, i1 false)
  store i8 15, ptr %285, align 1
  %338 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %12, ptr noundef nonnull %6)
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %367

340:                                              ; preds = %330
  store i8 19, ptr %6, align 1
  store i8 0, ptr %315, align 1
  %341 = getelementptr inbounds %struct.tda10071_dev, ptr %12, i32 0, i32 6
  %342 = load i8, ptr %341, align 2
  store i8 %342, ptr %317, align 1
  store i8 0, ptr %319, align 1
  store i8 4, ptr %321, align 1
  store i8 0, ptr %323, align 1
  store i8 6, ptr %285, align 1
  %343 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %12, ptr noundef nonnull %6)
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %367

345:                                              ; preds = %340
  %346 = load ptr, ptr %187, align 4
  %347 = call i32 @regmap_update_bits_base(ptr noundef %346, i32 noundef 240, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %367

349:                                              ; preds = %345
  store i8 32, ptr %6, align 1
  store i8 0, ptr %315, align 1
  store i8 -106, ptr %317, align 1
  store i8 3, ptr %319, align 1
  store i8 22, ptr %321, align 1
  store i8 1, ptr %323, align 1
  store i8 1, ptr %326, align 1
  store i32 505290270, ptr %327, align 1
  store i8 11, ptr %285, align 1
  %350 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %12, ptr noundef nonnull %6)
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %367

352:                                              ; preds = %349
  store i8 62, ptr %6, align 1
  store i8 0, ptr %315, align 1
  store i8 14, ptr %317, align 1
  store i8 14, ptr %319, align 1
  store i8 4, ptr %285, align 1
  %353 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %12, ptr noundef nonnull %6)
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %367

355:                                              ; preds = %352, %176
  %356 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %356, align 4
  %357 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %357, align 1
  %358 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %358, align 1
  %359 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %359, align 1
  %360 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %360, align 4
  %361 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %361, align 1
  %362 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %362, align 2
  %363 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %363, align 1
  br label %367

364:                                              ; preds = %259, %232, %228, %224, %220, %215, %208
  %365 = phi i32 [ %222, %220 ], [ %226, %224 ], [ %230, %228 ], [ %234, %232 ], [ %257, %259 ], [ %206, %208 ], [ %218, %215 ]
  %366 = load ptr, ptr %8, align 4
  call void @release_firmware(ptr noundef %366) #13
  br label %367

367:                                              ; preds = %364, %355, %352, %349, %345, %340, %330, %309, %294, %288, %284, %283, %276, %272, %267, %188, %176, %167, %166
  %368 = phi i32 [ 0, %355 ], [ %180, %176 ], [ %184, %188 ], [ %365, %364 ], [ %270, %267 ], [ %274, %272 ], [ %278, %276 ], [ -14, %283 ], [ %286, %284 ], [ %292, %288 ], [ %307, %294 ], [ %328, %309 ], [ %338, %330 ], [ %343, %340 ], [ %347, %345 ], [ %350, %349 ], [ %353, %352 ], [ %164, %166 ], [ %174, %167 ]
  call void @llvm.lifetime.end.p0(i64 129, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %6) #13
  ret i32 %368
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.tda10071_cmd, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %4) #13
  %7 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %7, i8 0, i32 27, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 14
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %1
  store i8 54, ptr %4, align 1
  %12 = getelementptr inbounds [30 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds [30 x i8], ptr %4, i32 0, i32 2
  store i8 1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.tda10071_cmd, ptr %4, i32 0, i32 1
  store i8 3, ptr %14, align 1
  %15 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %6, ptr noundef nonnull %4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 2
  br label %22

19:                                               ; preds = %35
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %44, label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ 0, %17 ], [ %20, %19 ]
  %24 = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_sleep.tab, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_sleep.tab, i32 0, i32 %23, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_sleep.tab, i32 0, i32 %23, i32 2
  %29 = load i8, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %27, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  %30 = load ptr, ptr %18, align 4
  %31 = zext i8 %25 to i32
  %32 = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef %31, ptr noundef nonnull %3, i32 noundef 1) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %44

35:                                               ; preds = %22
  %36 = and i8 %29, %27
  %37 = xor i8 %29, -1
  %38 = load i8, ptr %3, align 1
  %39 = and i8 %38, %37
  store i8 %39, ptr %3, align 1
  %40 = or i8 %39, %36
  store i8 %40, ptr %2, align 1
  %41 = load ptr, ptr %18, align 4
  %42 = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef %31, ptr noundef nonnull %2, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %19, label %44

44:                                               ; preds = %35, %34, %19, %11, %1
  %45 = phi i32 [ %15, %11 ], [ -14, %1 ], [ %32, %34 ], [ %42, %35 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %4) #13
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_set_frontend(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.tda10071_cmd, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %2) #13
  %5 = getelementptr inbounds i8, ptr %2, i32 15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %5, i8 0, i32 15, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.tda10071_dev, ptr %4, i32 0, i32 13
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.tda10071_dev, ptr %4, i32 0, i32 14
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %105, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %105

15:                                               ; preds = %11
  %16 = trunc i32 %13 to i24
  %17 = shl i24 %16, 3
  %18 = lshr i24 196609, %17
  %19 = trunc i24 %18 to i8
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %105 [
    i32 5, label %37
    i32 6, label %22
  ]

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 14
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %105

28:                                               ; preds = %22
  %29 = trunc i32 %26 to i24
  %30 = shl i24 %29, 3
  %31 = lshr i24 66048, %30
  %32 = trunc i24 %31 to i8
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 13
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %105 [
    i32 1, label %37
    i32 0, label %35
    i32 2, label %36
  ]

35:                                               ; preds = %28
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %35, %28, %15
  %38 = phi i8 [ %32, %36 ], [ %32, %35 ], [ 0, %15 ], [ %32, %28 ]
  %39 = phi i8 [ 2, %36 ], [ 1, %35 ], [ 2, %15 ], [ 0, %28 ]
  %40 = phi i32 [ %24, %36 ], [ %24, %35 ], [ 0, %15 ], [ %24, %28 ]
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  br label %42

42:                                               ; preds = %56, %37
  %43 = phi i32 [ 0, %37 ], [ %57, %56 ]
  %44 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %21, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %43, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %40, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, ptr %41, align 4
  %53 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %43, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %51, %47, %42
  %57 = add nuw nsw i32 %43, 1
  %58 = icmp eq i32 %57, 22
  br i1 %58, label %105, label %42

59:                                               ; preds = %51
  %60 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %43, i32 3
  %61 = load i8, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %63 = load i32, ptr %62, align 4
  %64 = icmp ult i32 %63, 5000001
  %65 = select i1 %64, i32 14, i32 4
  %66 = getelementptr inbounds %struct.tda10071_dev, ptr %4, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 129, i32 noundef %65) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %59
  %71 = load ptr, ptr %66, align 4
  %72 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 227, i32 noundef %65) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %70
  store i8 17, ptr %2, align 1
  %75 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %75, align 1
  %76 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 2
  store i8 %61, ptr %76, align 1
  %77 = load i32, ptr %6, align 4
  %78 = lshr i32 %77, 16
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 3
  store i8 %79, ptr %80, align 1
  %81 = lshr i32 %77, 8
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 4
  store i8 %82, ptr %83, align 1
  %84 = trunc i32 %77 to i8
  %85 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 5
  store i8 %84, ptr %85, align 1
  %86 = load i32, ptr %62, align 4
  %87 = udiv i32 %86, 1000
  %88 = lshr i32 %87, 8
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 6
  store i8 %89, ptr %90, align 1
  %91 = trunc i32 %87 to i8
  %92 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 7
  store i8 %91, ptr %92, align 1
  %93 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 8
  store i8 19, ptr %93, align 1
  %94 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 9
  store i8 -120, ptr %94, align 1
  %95 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 10
  store i8 %38, ptr %95, align 1
  %96 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 11
  store i8 %19, ptr %96, align 1
  %97 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 12
  store i8 %39, ptr %97, align 1
  %98 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 13
  store i8 0, ptr %98, align 1
  %99 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 14
  store i8 0, ptr %99, align 1
  %100 = getelementptr inbounds %struct.tda10071_cmd, ptr %2, i32 0, i32 1
  store i8 15, ptr %100, align 1
  %101 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %74
  %104 = load i32, ptr %20, align 4
  store i32 %104, ptr %7, align 8
  br label %105

105:                                              ; preds = %103, %74, %70, %59, %56, %28, %22, %15, %11, %1
  %106 = phi i32 [ 0, %103 ], [ %68, %59 ], [ %72, %70 ], [ %101, %74 ], [ -14, %1 ], [ -22, %11 ], [ -22, %22 ], [ -22, %28 ], [ -22, %15 ], [ -22, %56 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %2) #13
  ret i32 %106
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tda10071_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 8000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [5 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.tda10071_dev, ptr %5, i32 0, i32 14
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %80, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tda10071_dev, ptr %5, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %80, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tda10071_dev, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @regmap_bulk_read(ptr noundef %16, i32 noundef 48, ptr noundef nonnull %3, i32 noundef 5) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %14
  %20 = load i8, ptr %3, align 1
  %21 = and i8 %20, 63
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 15
  br label %25

25:                                               ; preds = %37, %19
  %26 = phi i32 [ 0, %19 ], [ %38, %37 ]
  %27 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %26, i32 3
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %21, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %26
  %32 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %26, i32 1
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %22, align 4
  %34 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %26, i32 2
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %23, align 4
  %36 = load i32, ptr %31, align 4
  store i32 %36, ptr %24, align 4
  br label %37

37:                                               ; preds = %30, %25
  %38 = add nuw nsw i32 %26, 1
  %39 = icmp eq i32 %38, 22
  br i1 %39, label %40, label %25

40:                                               ; preds = %37
  %41 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 1
  %44 = xor i8 %43, 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  %47 = xor i8 %42, -1
  %48 = lshr i8 %47, 7
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 13
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 16
  %55 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or i32 %58, %54
  %60 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 4
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  store i32 %63, ptr %1, align 4
  %64 = load ptr, ptr %15, align 4
  %65 = call i32 @regmap_bulk_read(ptr noundef %64, i32 noundef 82, ptr noundef nonnull %3, i32 noundef 3) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %40
  %68 = load i8, ptr %3, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 16
  %71 = load i8, ptr %41, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 8
  %74 = or i32 %73, %70
  %75 = load i8, ptr %51, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %74, %76
  %78 = mul i32 %77, 1000
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %78, ptr %79, align 4
  br label %80

80:                                               ; preds = %67, %40, %14, %9, %2
  %81 = phi i32 [ 0, %67 ], [ %17, %14 ], [ %65, %40 ], [ 0, %9 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #13
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca %struct.tda10071_cmd, align 1
  %4 = alloca i32, align 4
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %3, i8 0, i32 31, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !8
  store i32 0, ptr %1, align 4
  %8 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 14
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %176, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 57, ptr noundef nonnull %4) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %176

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %1, align 4
  %22 = or i32 %21, 3
  store i32 %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = and i32 %17, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %1, align 4
  %28 = or i32 %27, 4
  store i32 %28, ptr %1, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = and i32 %17, 8
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %1, align 4
  br i1 %31, label %35, label %33

33:                                               ; preds = %29
  %34 = or i32 %32, 24
  store i32 %34, ptr %1, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %34, %33 ], [ %32, %29 ]
  %37 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 12
  store i32 %36, ptr %37, align 4
  %38 = and i32 %36, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  store i8 26, ptr %3, align 1
  %41 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %41, align 1
  %42 = getelementptr inbounds %struct.tda10071_cmd, ptr %3, i32 0, i32 1
  store i8 2, ptr %42, align 1
  %43 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %7, ptr noundef nonnull %3)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %176

45:                                               ; preds = %40
  %46 = load ptr, ptr %12, align 4
  %47 = call i32 @regmap_read(ptr noundef %46, i32 noundef 80, ptr noundef nonnull %4) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %176

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %50, align 1
  %51 = load i32, ptr %4, align 4
  %52 = mul i32 %51, 1000
  %53 = add i32 %52, -256000
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %54, ptr %55, align 1
  br label %58

56:                                               ; preds = %35
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %57, align 1
  br label %58

58:                                               ; preds = %56, %49
  %59 = load i32, ptr %37, align 4
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %12, align 4
  %64 = call i32 @regmap_bulk_read(ptr noundef %63, i32 noundef 58, ptr noundef nonnull %5, i32 noundef 2) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %176

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %67, align 1
  %68 = load i8, ptr %5, align 8
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %70, %73
  %75 = mul nuw nsw i32 %74, 100
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %76, ptr %77, align 1
  br label %80

78:                                               ; preds = %58
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %79, align 1
  br label %80

80:                                               ; preds = %78, %66
  %81 = load i32, ptr %37, align 4
  %82 = and i32 %81, 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %173, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 13
  %86 = load i32, ptr %85, align 8
  switch i32 %86, label %176 [
    i32 5, label %88
    i32 6, label %87
  ]

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i8 [ 0, %87 ], [ 1, %84 ]
  %90 = phi i32 [ 77, %87 ], [ 76, %84 ]
  %91 = phi i32 [ 4, %87 ], [ 8, %84 ]
  %92 = load ptr, ptr %12, align 4
  %93 = call i32 @regmap_read(ptr noundef %92, i32 noundef %90, ptr noundef nonnull %4) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %176

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 10
  %97 = load i8, ptr %96, align 2
  %98 = zext i8 %97 to i32
  %99 = load i32, ptr %4, align 4
  %100 = icmp eq i32 %99, %98
  br i1 %100, label %176, label %101

101:                                              ; preds = %95
  %102 = trunc i32 %99 to i8
  store i8 %102, ptr %96, align 2
  store i8 63, ptr %3, align 1
  %103 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %103, align 1
  %104 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 2
  store i8 %89, ptr %104, align 1
  %105 = getelementptr inbounds %struct.tda10071_cmd, ptr %3, i32 0, i32 1
  store i8 3, ptr %105, align 1
  %106 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %7, ptr noundef nonnull %3)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %176

108:                                              ; preds = %101
  %109 = load ptr, ptr %12, align 4
  %110 = load i8, ptr %105, align 1
  %111 = zext i8 %110 to i32
  %112 = call i32 @regmap_bulk_read(ptr noundef %109, i32 noundef %111, ptr noundef nonnull %5, i32 noundef %91) #13
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %176

114:                                              ; preds = %108
  %115 = load i32, ptr %85, align 8
  %116 = icmp eq i32 %115, 5
  %117 = load i8, ptr %5, align 8
  %118 = zext i8 %117 to i32
  br i1 %116, label %119, label %158

119:                                              ; preds = %114
  %120 = shl nuw i32 %118, 24
  %121 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 1
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 16
  %125 = or i32 %124, %120
  %126 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 2
  %127 = load i8, ptr %126, align 2
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = or i32 %125, %129
  %131 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 3
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %130, %133
  %135 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 11
  store i32 %134, ptr %135, align 8
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 15
  %138 = load i64, ptr %137, align 8
  %139 = add i64 %138, %136
  store i64 %139, ptr %137, align 8
  %140 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %140, align 1
  %141 = load i64, ptr %137, align 8
  %142 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %141, ptr %142, align 1
  %143 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 4
  %144 = load i8, ptr %143, align 4
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 8
  %147 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 5
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %146, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 16
  %153 = load i64, ptr %152, align 8
  %154 = add i64 %153, %151
  store i64 %154, ptr %152, align 8
  %155 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %155, align 1
  %156 = load i64, ptr %152, align 8
  %157 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  store i64 %156, ptr %157, align 1
  br label %176

158:                                              ; preds = %114
  %159 = shl nuw nsw i32 %118, 8
  %160 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 1
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %159, %162
  %164 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 11
  store i32 %163, ptr %164, align 8
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds %struct.tda10071_dev, ptr %7, i32 0, i32 15
  %167 = load i64, ptr %166, align 8
  %168 = add i64 %167, %165
  store i64 %168, ptr %166, align 8
  %169 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %169, align 1
  %170 = load i64, ptr %166, align 8
  %171 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %170, ptr %171, align 1
  %172 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %172, align 1
  br label %176

173:                                              ; preds = %80
  %174 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %174, align 1
  %175 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %175, align 1
  br label %176

176:                                              ; preds = %173, %158, %119, %108, %101, %95, %88, %84, %62, %45, %40, %11, %2
  %177 = phi i32 [ 0, %173 ], [ %14, %11 ], [ %43, %40 ], [ %47, %45 ], [ %64, %62 ], [ 0, %2 ], [ -22, %84 ], [ %93, %88 ], [ 0, %95 ], [ %106, %101 ], [ %112, %108 ], [ 0, %158 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #13
  ret i32 %177
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda10071_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda10071_dev, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %9 = load i64, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = call i64 @div_s64_rem(i64 noundef %9, i32 noundef 1000, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, 256
  %13 = call i32 @llvm.umax.i32(i32 %12, i32 181)
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 236)
  %15 = mul nuw nsw i32 %14, 65535
  %16 = add nsw i32 %15, -11861835
  %17 = udiv i32 %16, 55
  %18 = trunc i32 %17 to i16
  br label %19

19:                                               ; preds = %7, %2
  %20 = phi i16 [ %18, %7 ], [ 0, %2 ]
  store i16 %20, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %9 = load i64, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = call i64 @div_s64_rem(i64 noundef %9, i32 noundef 100, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %11 = trunc i64 %10 to i16
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i16 [ %11, %7 ], [ 0, %2 ]
  store i16 %13, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda10071_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %8 = load i64, ptr %7, align 1
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  store i32 %11, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_diseqc_send_master_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.tda10071_cmd, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #13
  %7 = getelementptr inbounds i8, ptr %3, i32 7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %7, i8 0, i32 23, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %8 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 14
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = add i8 %13, -7
  %15 = icmp ult i8 %14, -4
  br i1 %15, label %52, label %16

16:                                               ; preds = %11
  store i32 0, ptr %4, align 4
  %17 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 2
  br label %18

18:                                               ; preds = %23, %16
  %19 = phi i32 [ 500, %16 ], [ %26, %23 ]
  %20 = load ptr, ptr %17, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 71, ptr noundef nonnull %4) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = load i32, ptr %4, align 4
  %25 = and i32 %24, 1
  store i32 %25, ptr %4, align 4
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #13
  %26 = add nsw i32 %19, -1
  %27 = icmp ne i32 %26, 0
  %28 = load i32, ptr %4, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %18, label %31

31:                                               ; preds = %23
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 71, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  store i8 33, ptr %3, align 1
  %39 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %39, align 1
  %40 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 2
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %41, align 1
  %42 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 4
  store i8 2, ptr %42, align 1
  %43 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 5
  store i8 0, ptr %43, align 1
  %44 = load i8, ptr %12, align 1
  %45 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 6
  store i8 %44, ptr %45, align 1
  %46 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 7
  %47 = zext i8 %44 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %46, ptr align 1 %1, i32 %47, i1 false)
  %48 = add i8 %44, 7
  %49 = getelementptr inbounds %struct.tda10071_cmd, ptr %3, i32 0, i32 1
  store i8 %48, ptr %49, align 1
  %50 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %6, ptr noundef nonnull %3)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %38, %33, %31, %18, %11, %2
  %53 = phi i32 [ %36, %33 ], [ %50, %38 ], [ -14, %2 ], [ -22, %11 ], [ -110, %31 ], [ %21, %18 ]
  br label %54

54:                                               ; preds = %52, %38
  %55 = phi i32 [ %53, %52 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #13
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_diseqc_recv_slave_reply(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.tda10071_cmd, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #13
  %7 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %7, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %8 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 14
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %2
  store i32 0, ptr %4, align 4
  %12 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 2
  br label %13

13:                                               ; preds = %18, %11
  %14 = phi i32 [ 500, %11 ], [ %22, %18 ]
  %15 = load ptr, ptr %12, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 71, ptr noundef nonnull %4) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %13
  %19 = load i32, ptr %4, align 4
  %20 = lshr i32 %19, 1
  %21 = and i32 %20, 1
  store i32 %21, ptr %4, align 4
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #13
  %22 = add nsw i32 %14, -1
  %23 = icmp ne i32 %22, 0
  %24 = load i32, ptr %4, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %13, label %27

27:                                               ; preds = %18
  %28 = icmp eq i32 %22, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @regmap_read(ptr noundef %31, i32 noundef 70, ptr noundef nonnull %4) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i32, ptr %4, align 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 31
  %38 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %1, i32 0, i32 1
  %39 = call i8 @llvm.umin.i8(i8 %37, i8 4)
  store i8 %39, ptr %38, align 4
  store i8 37, ptr %3, align 1
  %40 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.tda10071_cmd, ptr %3, i32 0, i32 1
  store i8 2, ptr %41, align 1
  %42 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %6, ptr noundef nonnull %3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load ptr, ptr %30, align 4
  %46 = load i8, ptr %41, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, ptr %38, align 4
  %49 = zext i8 %48 to i32
  %50 = call i32 @regmap_bulk_read(ptr noundef %45, i32 noundef %47, ptr noundef %1, i32 noundef %49) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44, %34, %29, %27, %13, %2
  %53 = phi i32 [ %32, %29 ], [ %42, %34 ], [ %50, %44 ], [ -14, %2 ], [ -110, %27 ], [ %16, %13 ]
  br label %54

54:                                               ; preds = %52, %44
  %55 = phi i32 [ %53, %52 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #13
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_diseqc_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.tda10071_cmd, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #13
  %7 = getelementptr inbounds i8, ptr %3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %7, i8 0, i32 27, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %8 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 14
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %2
  switch i32 %1, label %42 [
    i32 0, label %13
    i32 1, label %12
  ]

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i8 [ 1, %12 ], [ 0, %11 ]
  store i32 0, ptr %4, align 4
  %15 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 2
  br label %16

16:                                               ; preds = %21, %13
  %17 = phi i32 [ 500, %13 ], [ %24, %21 ]
  %18 = load ptr, ptr %15, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 71, ptr noundef nonnull %4) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load i32, ptr %4, align 4
  %23 = and i32 %22, 1
  store i32 %23, ptr %4, align 4
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #13
  %24 = add nsw i32 %17, -1
  %25 = icmp ne i32 %24, 0
  %26 = load i32, ptr %4, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %16, label %29

29:                                               ; preds = %21
  %30 = icmp eq i32 %24, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.tda10071_dev, ptr %6, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 71, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  store i8 36, ptr %3, align 1
  %37 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %37, align 1
  %38 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 2
  store i8 %14, ptr %38, align 1
  %39 = getelementptr inbounds %struct.tda10071_cmd, ptr %3, i32 0, i32 1
  store i8 3, ptr %39, align 1
  %40 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %6, ptr noundef nonnull %3)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36, %31, %29, %16, %11, %2
  %43 = phi i32 [ %34, %31 ], [ %40, %36 ], [ -14, %2 ], [ -22, %11 ], [ -110, %29 ], [ %19, %16 ]
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32 [ %43, %42 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #13
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.tda10071_cmd, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #13
  %6 = getelementptr inbounds i8, ptr %3, i32 5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %6, i8 0, i32 25, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.tda10071_dev, ptr %5, i32 0, i32 14
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  switch i32 %1, label %21 [
    i32 0, label %12
    i32 1, label %11
  ]

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11, %10
  %13 = phi i8 [ 0, %11 ], [ 1, %10 ]
  store i8 35, ptr %3, align 1
  %14 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 2
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 4
  store i8 %13, ptr %17, align 1
  %18 = getelementptr inbounds %struct.tda10071_cmd, ptr %3, i32 0, i32 1
  store i8 5, ptr %18, align 1
  %19 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %12, %10, %2
  %22 = phi i32 [ %19, %12 ], [ -14, %2 ], [ -22, %10 ]
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi i32 [ %22, %21 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #13
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10071_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.tda10071_cmd, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #13
  %6 = getelementptr inbounds i8, ptr %3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %6, i8 0, i32 27, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.tda10071_dev, ptr %5, i32 0, i32 14
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = icmp ult i32 %1, 3
  br i1 %11, label %12, label %22

12:                                               ; preds = %10
  %13 = trunc i32 %1 to i24
  %14 = shl i24 %13, 3
  %15 = lshr i24 256, %14
  %16 = trunc i24 %15 to i8
  store i8 34, ptr %3, align 1
  %17 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 2
  store i8 %16, ptr %18, align 1
  %19 = getelementptr inbounds %struct.tda10071_cmd, ptr %3, i32 0, i32 1
  store i8 3, ptr %19, align 1
  %20 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %12, %10, %2
  %23 = phi i32 [ %20, %12 ], [ -14, %2 ], [ -22, %10 ]
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi i32 [ %23, %22 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #13
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda10071_cmd_execute(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.tda10071_dev, ptr %0, i32 0, i32 14
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tda10071_dev, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.tda10071_dev, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tda10071_cmd, ptr %1, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @regmap_bulk_write(ptr noundef %10, i32 noundef 0, ptr noundef %1, i32 noundef %13) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %7
  %17 = load ptr, ptr %9, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 31, i32 noundef 1) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  store i32 1, ptr %3, align 4
  br label %21

21:                                               ; preds = %26, %20
  %22 = phi i32 [ %27, %26 ], [ 1000, %20 ]
  %23 = load ptr, ptr %9, align 4
  %24 = call i32 @regmap_read(ptr noundef %23, i32 noundef 31, ptr noundef nonnull %3) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  call void @usleep_range_state(i32 noundef 200, i32 noundef 5000, i32 noundef 2) #13
  %27 = add nsw i32 %22, -1
  %28 = icmp ne i32 %27, 0
  %29 = load i32, ptr %3, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %21, label %32

32:                                               ; preds = %26
  %33 = icmp eq i32 %27, 0
  call void @mutex_unlock(ptr noundef %8) #13
  br i1 %33, label %36, label %38

34:                                               ; preds = %21, %16, %7
  %35 = phi i32 [ %14, %7 ], [ %18, %16 ], [ %24, %21 ]
  call void @mutex_unlock(ptr noundef %8) #13
  br label %36

36:                                               ; preds = %34, %32, %2
  %37 = phi i32 [ %35, %34 ], [ -14, %2 ], [ -110, %32 ]
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
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
!9 = !{i8 0, i8 2}
