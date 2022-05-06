; ModuleID = '/llk/IR/drivers/media/dvb-frontends/rtl2830.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/rtl2830.c"
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
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
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
%struct.rtl2830_dev = type { ptr, ptr, ptr, ptr, %struct.dvb_frontend, i8, i32, i32, i64, i64, i64 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.rtl2830_platform_data = type { i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.rtl2830_reg_val_mask = type { i16, i8, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@rtl2830_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rtl2830\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author253 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [53 x i8] c"description=Realtek RTL2830 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@rtl2830_driver = internal global %struct.i2c_driver { i32 0, ptr @rtl2830_probe, ptr @rtl2830_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rtl2830_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"rtl2830\00", align 1
@rtl2830_probe.regmap_bus = internal constant %struct.regmap_bus { i8 0, ptr @rtl2830_regmap_write, ptr @rtl2830_regmap_gather_write, ptr null, ptr null, ptr null, ptr @rtl2830_regmap_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 3, i32 0, i32 0, i8 0 }, align 4
@rtl2830_probe.regmap_range_cfg = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 1280, i32 0, i32 255, i32 0, i32 0, i32 256 }], align 4
@rtl2830_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1280, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @rtl2830_probe.regmap_range_cfg, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@rtl2830_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Realtek RTL2830 (DVB-T)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @rtl2830_init, ptr @rtl2830_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2830_set_frontend, ptr @rtl2830_get_tune_settings, ptr @rtl2830_get_frontend, ptr @rtl2830_read_status, ptr @rtl2830_read_ber, ptr @rtl2830_read_signal_strength, ptr @rtl2830_read_snr, ptr @rtl2830_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Realtek RTL2830 successfully attached\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"i2c reg write failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"i2c reg read failed %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"(\00\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\04\06\0A\12\0A\12\1E(\00", align 1
@rtl2830_set_frontend.bw_params1 = internal constant [3 x [34 x i8]] [[34 x i8] c"\1F\F0\1F\F0\1F\FA\00\17\00A\00d\00g\008\1F\DE\1Fz\1FG\1F|\000\01K\02\82\03s\03\CF", [34 x i8] c"\1F\FA\1F\DA\1F\C1\1F\B3\1F\CA\00\07\00M\00m\00@\1F\CA\1FM\1F*\1F\B2\00\EC\02~\03\D0\04S", [34 x i8] c"\00\10\00\0E\1F\F7\1F\C9\1F\A0\1F\A6\1F\EC\00N\00}\00:\1F\98\1F\10\1F@\00u\02_\04$\04\DB"], align 1
@rtl2830_set_frontend.bw_params2 = internal constant [3 x [6 x i8]] [[6 x i8] c"\C3\0CD330", [6 x i8] c"\B8\E3\93\99\99\98", [6 x i8] c"\AE\BA\F3&fd"], align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid bandwidth_hz %u\0A\00", align 1
@rtl2830_read_status.constant = internal unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 70705899, i32 70705899, i32 70705899, i32 70705899], [4 x i32] [i32 82433173, i32 82433173, i32 87483115, i32 94445660], [4 x i32] [i32 92888734, i32 92888734, i32 95487525, i32 99770748]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255], section "llvm.metadata"
@switch.table.rtl2830_get_frontend = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@switch.table.rtl2830_get_frontend.8 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4

@__mod_i2c__rtl2830_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @rtl2830_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @rtl2830_driver) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @rtl2830_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1096) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %10, ptr %13, align 8
  %14 = getelementptr inbounds %struct.rtl2830_dev, ptr %10, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  %15 = load ptr, ptr %5, align 4
  store ptr %15, ptr %10, align 8
  %16 = getelementptr inbounds %struct.rtl2830_dev, ptr %10, i32 0, i32 5
  store i8 1, ptr %16, align 8
  %17 = tail call ptr @__regmap_init(ptr noundef %4, ptr noundef nonnull @rtl2830_probe.regmap_bus, ptr noundef %0, ptr noundef nonnull @rtl2830_probe.regmap_config, ptr noundef null, ptr noundef null) #13
  %18 = getelementptr inbounds %struct.rtl2830_dev, ptr %10, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = ptrtoint ptr %17 to i32
  br label %58

22:                                               ; preds = %12
  %23 = load ptr, ptr %13, align 8
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %25, i32 noundef 2) #13
  %29 = getelementptr inbounds %struct.rtl2830_dev, ptr %23, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 1) #13
  %32 = load ptr, ptr %24, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.i2c_lock_operations, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  call void %36(ptr noundef %32, i32 noundef 2) #13
  %37 = icmp eq i32 %31, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %22
  %39 = load ptr, ptr %24, align 8
  %40 = call ptr @i2c_mux_alloc(ptr noundef %39, ptr noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @rtl2830_select, ptr noundef null) #13
  %41 = getelementptr inbounds %struct.rtl2830_dev, ptr %10, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.i2c_mux_core, ptr %40, i32 0, i32 3
  store ptr %0, ptr %44, align 4
  %45 = load ptr, ptr %41, align 4
  %46 = call i32 @i2c_mux_add_adapter(ptr noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtl2830_dev, ptr %10, i32 0, i32 4, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %49, ptr noundef nonnull align 4 dereferenceable(544) @rtl2830_ops, i32 544, i1 false)
  %50 = getelementptr inbounds %struct.rtl2830_dev, ptr %10, i32 0, i32 4, i32 3
  store ptr %0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.rtl2830_platform_data, ptr %6, i32 0, i32 5
  store ptr @rtl2830_get_dvb_frontend, ptr %51, align 4
  %52 = getelementptr inbounds %struct.rtl2830_platform_data, ptr %6, i32 0, i32 6
  store ptr @rtl2830_get_i2c_adapter, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rtl2830_platform_data, ptr %6, i32 0, i32 7
  store ptr @rtl2830_pid_filter, ptr %53, align 4
  %54 = getelementptr inbounds %struct.rtl2830_platform_data, ptr %6, i32 0, i32 8
  store ptr @rtl2830_pid_filter_ctrl, ptr %54, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.1) #15
  br label %60

55:                                               ; preds = %43, %38, %22
  %56 = phi i32 [ %31, %22 ], [ %46, %43 ], [ -12, %38 ]
  %57 = load ptr, ptr %18, align 8
  call void @regmap_exit(ptr noundef %57) #13
  br label %58

58:                                               ; preds = %55, %20
  %59 = phi i32 [ %21, %20 ], [ %56, %55 ]
  call void @kfree(ptr noundef nonnull %10) #13
  br label %60

60:                                               ; preds = %58, %48, %8, %2
  %61 = phi i32 [ 0, %48 ], [ %59, %58 ], [ -22, %2 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  tail call void @regmap_exit(ptr noundef %7) #13
  tail call void @kfree(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_regmap_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [1 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  store i16 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %10 = trunc i32 %2 to i16
  store i16 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @__i2c_transfer(ptr noundef %13, ptr noundef nonnull %4, i32 noundef 1) #13
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %14) #15
  %18 = icmp sgt i32 %14, -1
  %19 = select i1 %18, i32 -121, i32 %14
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i32 [ %19, %16 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_regmap_gather_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #2 {
  %6 = alloca [256 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #13
  %8 = getelementptr inbounds i8, ptr %6, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %8, i8 0, i32 255, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %9 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  store i16 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %14 = trunc i32 %4 to i16
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %16, align 4
  %17 = load i8, ptr %1, align 1
  store i8 %17, ptr %6, align 1
  %18 = getelementptr inbounds [256 x i8], ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %3, i32 %4, i1 false)
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @__i2c_transfer(ptr noundef %20, ptr noundef nonnull %7, i32 noundef 1) #13
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef %21) #15
  %25 = icmp sgt i32 %21, -1
  %26 = select i1 %25, i32 -121, i32 %21
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i32 [ %26, %23 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #13
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_regmap_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %12 = trunc i32 %2 to i16
  store i16 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %9, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %17 = trunc i32 %4 to i16
  store i16 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @__i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 2) #13
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.3, i32 noundef %21) #15
  %25 = icmp sgt i32 %21, -1
  %26 = select i1 %25, i32 -121, i32 %21
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i32 [ %26, %23 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtl2830_bulk_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %8, i32 noundef 2) #13
  %12 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef %1, ptr noundef %2, i32 noundef %3) #13
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.i2c_lock_operations, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %15, i32 noundef 2) #13
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_select(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 257, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @rtl2830_get_dvb_frontend(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @rtl2830_get_i2c_adapter(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_mux_core, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_pid_filter(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %10 = icmp ugt i16 %2, 8191
  %11 = zext i8 %1 to i32
  %12 = icmp ugt i8 %1, 32
  %13 = or i1 %12, %10
  br i1 %13, label %69, label %14

14:                                               ; preds = %4
  %15 = icmp eq i32 %3, 0
  %16 = getelementptr inbounds %struct.rtl2830_dev, ptr %9, i32 0, i32 6
  br i1 %15, label %18, label %17

17:                                               ; preds = %14
  tail call void @_set_bit(i32 noundef %11, ptr noundef %16) #13
  br label %19

18:                                               ; preds = %14
  tail call void @_clear_bit(i32 noundef %11, ptr noundef %16) #13
  br label %19

19:                                               ; preds = %18, %17
  %20 = getelementptr inbounds %struct.rtl2830_dev, ptr %9, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %5, align 4
  %23 = lshr i32 %21, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %24, ptr %25, align 1
  %26 = lshr i32 %21, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %27, ptr %28, align 2
  %29 = lshr i32 %21, 24
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 %30, ptr %31, align 1
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %34, i32 noundef 2) #13
  %38 = getelementptr inbounds %struct.rtl2830_dev, ptr %32, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @regmap_bulk_write(ptr noundef %39, i32 noundef 98, ptr noundef nonnull %5, i32 noundef 4) #13
  %41 = load ptr, ptr %33, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.i2c_lock_operations, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  call void %45(ptr noundef %41, i32 noundef 2) #13
  %46 = icmp eq i32 %40, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %19
  %48 = lshr i16 %2, 8
  %49 = trunc i16 %48 to i8
  store i8 %49, ptr %5, align 4
  %50 = trunc i16 %2 to i8
  store i8 %50, ptr %25, align 1
  %51 = shl nuw nsw i32 %11, 1
  %52 = add nuw nsw i32 %51, 102
  %53 = load ptr, ptr %8, align 8
  %54 = load ptr, ptr %33, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %56, align 4
  call void %57(ptr noundef %54, i32 noundef 2) #13
  %58 = getelementptr inbounds %struct.rtl2830_dev, ptr %53, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 @regmap_bulk_write(ptr noundef %59, i32 noundef %52, ptr noundef nonnull %5, i32 noundef 2) #13
  %61 = load ptr, ptr %33, align 8
  %62 = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 4
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.i2c_lock_operations, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  call void %65(ptr noundef %61, i32 noundef 2) #13
  %66 = icmp eq i32 %60, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %47, %19
  %68 = phi i32 [ %40, %19 ], [ %60, %47 ]
  br label %69

69:                                               ; preds = %67, %47, %4
  %70 = phi i32 [ %68, %67 ], [ 0, %4 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_pid_filter_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 0, i32 128
  %7 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %10, i32 noundef 2) #13
  %14 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 97, i32 noundef 128, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.i2c_lock_operations, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %17, i32 noundef 2) #13
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [36 x %struct.rtl2830_reg_val_mask], align 2
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #13
  %7 = getelementptr inbounds i8, ptr %2, i32 74
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(144) %7, i8 0, i32 70, i1 false), !annotation !8
  store i16 13, ptr %2, align 2
  %8 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 0, i32 1
  store i8 1, ptr %8, align 2
  %9 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 0, i32 2
  store i8 3, ptr %9, align 1
  %10 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 1
  store i16 13, ptr %10, align 2
  %11 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 1, i32 1
  store i8 16, ptr %11, align 2
  %12 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 1, i32 2
  store i8 16, ptr %12, align 1
  %13 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 2
  store i16 260, ptr %13, align 2
  %14 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 2, i32 1
  store i8 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 2, i32 2
  store i8 30, ptr %15, align 1
  %16 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 3
  store i16 261, ptr %16, align 2
  %17 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 3, i32 1
  store i8 -128, ptr %17, align 2
  %18 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 3, i32 2
  store i8 -128, ptr %18, align 1
  %19 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 4
  store i16 272, ptr %19, align 2
  %20 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 4, i32 1
  store i8 2, ptr %20, align 2
  %21 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 4, i32 2
  store i8 3, ptr %21, align 1
  %22 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 5
  store i16 272, ptr %22, align 2
  %23 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 5, i32 1
  store i8 8, ptr %23, align 2
  %24 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 5, i32 2
  store i8 12, ptr %24, align 1
  %25 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 6
  store i16 379, ptr %25, align 2
  %26 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 6, i32 1
  store i8 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 6, i32 2
  store i8 64, ptr %27, align 1
  %28 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 7
  store i16 381, ptr %28, align 2
  %29 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 7, i32 1
  store i8 5, ptr %29, align 2
  %30 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 7, i32 2
  store i8 15, ptr %30, align 1
  %31 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 8
  store i16 381, ptr %31, align 2
  %32 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 8, i32 1
  store i8 80, ptr %32, align 2
  %33 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 8, i32 2
  store i8 -16, ptr %33, align 1
  %34 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 9
  store i16 396, ptr %34, align 2
  %35 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 9, i32 1
  store i8 8, ptr %35, align 2
  %36 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 9, i32 2
  store i8 15, ptr %36, align 1
  %37 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 10
  store i16 397, ptr %37, align 2
  %38 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 10, i32 1
  store i8 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 10, i32 2
  store i8 -64, ptr %39, align 1
  %40 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 11
  store i16 392, ptr %40, align 2
  %41 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 11, i32 1
  store i8 5, ptr %41, align 2
  %42 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 11, i32 2
  store i8 15, ptr %42, align 1
  %43 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 12
  store i16 393, ptr %43, align 2
  %44 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 12, i32 1
  store i8 0, ptr %44, align 2
  %45 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 12, i32 2
  store i8 -4, ptr %45, align 1
  %46 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 13
  store i16 725, ptr %46, align 2
  %47 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 13, i32 1
  store i8 2, ptr %47, align 2
  %48 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 13, i32 2
  store i8 2, ptr %48, align 1
  %49 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 14
  store i16 753, ptr %49, align 2
  %50 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 14, i32 1
  store i8 2, ptr %50, align 2
  %51 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 14, i32 2
  store i8 6, ptr %51, align 1
  %52 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 15
  store i16 753, ptr %52, align 2
  %53 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 15, i32 1
  store i8 32, ptr %53, align 2
  %54 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 15, i32 2
  store i8 -8, ptr %54, align 1
  %55 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 16
  store i16 365, ptr %55, align 2
  %56 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 16, i32 1
  store i8 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 16, i32 2
  store i8 1, ptr %57, align 1
  %58 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 17
  store i16 422, ptr %58, align 2
  %59 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 17, i32 1
  store i8 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 17, i32 2
  store i8 -128, ptr %60, align 1
  %61 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 18
  store i16 262, ptr %61, align 2
  %62 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 18, i32 1
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds %struct.rtl2830_platform_data, ptr %63, i32 0, i32 2
  %65 = load i8, ptr %64, align 1
  store i8 %65, ptr %62, align 2
  %66 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 18, i32 2
  store i8 63, ptr %66, align 1
  %67 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 19
  store i16 263, ptr %67, align 2
  %68 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 19, i32 1
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds %struct.rtl2830_platform_data, ptr %69, i32 0, i32 3
  %71 = load i8, ptr %70, align 2
  store i8 %71, ptr %68, align 2
  %72 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 19, i32 2
  store i8 63, ptr %72, align 1
  %73 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 20
  store i16 274, ptr %73, align 2
  %74 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 20, i32 1
  store i8 40, ptr %74, align 2
  %75 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 20, i32 2
  store i8 -1, ptr %75, align 1
  %76 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 21
  store i16 259, ptr %76, align 2
  %77 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 21, i32 1
  %78 = load ptr, ptr %6, align 8
  %79 = getelementptr inbounds %struct.rtl2830_platform_data, ptr %78, i32 0, i32 4
  %80 = load i8, ptr %79, align 1
  store i8 %80, ptr %77, align 2
  %81 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 21, i32 2
  store i8 -1, ptr %81, align 1
  %82 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 22
  store i16 10, ptr %82, align 2
  %83 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 22, i32 1
  store i8 2, ptr %83, align 2
  %84 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 22, i32 2
  store i8 7, ptr %84, align 1
  %85 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 23
  store i16 320, ptr %85, align 2
  %86 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 23, i32 1
  store i8 12, ptr %86, align 2
  %87 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 23, i32 2
  store i8 60, ptr %87, align 1
  %88 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 24
  store i16 320, ptr %88, align 2
  %89 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 24, i32 1
  store i8 64, ptr %89, align 2
  %90 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 24, i32 2
  store i8 -64, ptr %90, align 1
  %91 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 25
  store i16 347, ptr %91, align 2
  %92 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 25, i32 1
  store i8 5, ptr %92, align 2
  %93 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 25, i32 2
  store i8 7, ptr %93, align 1
  %94 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 26
  store i16 347, ptr %94, align 2
  %95 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 26, i32 1
  store i8 40, ptr %95, align 2
  %96 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 26, i32 2
  store i8 56, ptr %96, align 1
  %97 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 27
  store i16 348, ptr %97, align 2
  %98 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 27, i32 1
  store i8 5, ptr %98, align 2
  %99 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 27, i32 2
  store i8 7, ptr %99, align 1
  %100 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 28
  store i16 348, ptr %100, align 2
  %101 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 28, i32 1
  store i8 40, ptr %101, align 2
  %102 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 28, i32 2
  store i8 56, ptr %102, align 1
  %103 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 29
  store i16 277, ptr %103, align 2
  %104 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 29, i32 1
  %105 = load ptr, ptr %6, align 8
  %106 = getelementptr inbounds %struct.rtl2830_platform_data, ptr %105, i32 0, i32 1
  %107 = load i8, ptr %106, align 4, !range !9
  store i8 %107, ptr %104, align 2
  %108 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 29, i32 2
  store i8 1, ptr %108, align 1
  %109 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 30
  store i16 367, ptr %109, align 2
  %110 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 30, i32 1
  store i8 1, ptr %110, align 2
  %111 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 30, i32 2
  store i8 7, ptr %111, align 1
  %112 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 31
  store i16 368, ptr %112, align 2
  %113 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 31, i32 1
  store i8 24, ptr %113, align 2
  %114 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 31, i32 2
  store i8 56, ptr %114, align 1
  %115 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 32
  store i16 370, ptr %115, align 2
  %116 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 32, i32 1
  store i8 15, ptr %116, align 2
  %117 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 32, i32 2
  store i8 15, ptr %117, align 1
  %118 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 33
  store i16 371, ptr %118, align 2
  %119 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 33, i32 1
  store i8 8, ptr %119, align 2
  %120 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 33, i32 2
  store i8 56, ptr %120, align 1
  %121 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 34
  store i16 373, ptr %121, align 2
  %122 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 34, i32 1
  store i8 1, ptr %122, align 2
  %123 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 34, i32 2
  store i8 7, ptr %123, align 1
  %124 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 35
  store i16 374, ptr %124, align 2
  %125 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 35, i32 1
  store i8 0, ptr %125, align 2
  %126 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %2, i32 35, i32 2
  store i8 -64, ptr %126, align 1
  %127 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  br label %131

128:                                              ; preds = %131
  %129 = add nuw nsw i32 %132, 1
  %130 = icmp eq i32 %129, 36
  br i1 %130, label %156, label %131

131:                                              ; preds = %128, %1
  %132 = phi i32 [ 0, %1 ], [ %129, %128 ]
  %133 = getelementptr [36 x %struct.rtl2830_reg_val_mask], ptr %2, i32 0, i32 %132
  %134 = load i16, ptr %133, align 2
  %135 = zext i16 %134 to i32
  %136 = getelementptr [36 x %struct.rtl2830_reg_val_mask], ptr %2, i32 0, i32 %132, i32 2
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = getelementptr [36 x %struct.rtl2830_reg_val_mask], ptr %2, i32 0, i32 %132, i32 1
  %140 = load i8, ptr %139, align 2
  %141 = zext i8 %140 to i32
  %142 = load ptr, ptr %5, align 8
  %143 = load ptr, ptr %127, align 8
  %144 = getelementptr inbounds %struct.i2c_adapter, ptr %143, i32 0, i32 4
  %145 = load ptr, ptr %144, align 8
  %146 = load ptr, ptr %145, align 4
  tail call void %146(ptr noundef %143, i32 noundef 2) #13
  %147 = getelementptr inbounds %struct.rtl2830_dev, ptr %142, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8
  %149 = tail call i32 @regmap_update_bits_base(ptr noundef %148, i32 noundef %135, i32 noundef %138, i32 noundef %141, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %150 = load ptr, ptr %127, align 8
  %151 = getelementptr inbounds %struct.i2c_adapter, ptr %150, i32 0, i32 4
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.i2c_lock_operations, ptr %152, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  tail call void %154(ptr noundef %150, i32 noundef 2) #13
  %155 = icmp eq i32 %149, 0
  br i1 %155, label %128, label %226

156:                                              ; preds = %128
  %157 = load ptr, ptr %5, align 8
  %158 = load ptr, ptr %127, align 8
  %159 = getelementptr inbounds %struct.i2c_adapter, ptr %158, i32 0, i32 4
  %160 = load ptr, ptr %159, align 8
  %161 = load ptr, ptr %160, align 4
  tail call void %161(ptr noundef %158, i32 noundef 2) #13
  %162 = getelementptr inbounds %struct.rtl2830_dev, ptr %157, i32 0, i32 2
  %163 = load ptr, ptr %162, align 8
  %164 = tail call i32 @regmap_bulk_write(ptr noundef %163, i32 noundef 399, ptr noundef nonnull @.str.4, i32 noundef 2) #13
  %165 = load ptr, ptr %127, align 8
  %166 = getelementptr inbounds %struct.i2c_adapter, ptr %165, i32 0, i32 4
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.i2c_lock_operations, ptr %167, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  tail call void %169(ptr noundef %165, i32 noundef 2) #13
  %170 = icmp eq i32 %164, 0
  br i1 %170, label %171, label %226

171:                                              ; preds = %156
  %172 = load ptr, ptr %5, align 8
  %173 = load ptr, ptr %127, align 8
  %174 = getelementptr inbounds %struct.i2c_adapter, ptr %173, i32 0, i32 4
  %175 = load ptr, ptr %174, align 8
  %176 = load ptr, ptr %175, align 4
  tail call void %176(ptr noundef %173, i32 noundef 2) #13
  %177 = getelementptr inbounds %struct.rtl2830_dev, ptr %172, i32 0, i32 2
  %178 = load ptr, ptr %177, align 8
  %179 = tail call i32 @regmap_bulk_write(ptr noundef %178, i32 noundef 405, ptr noundef nonnull @.str.5, i32 noundef 8) #13
  %180 = load ptr, ptr %127, align 8
  %181 = getelementptr inbounds %struct.i2c_adapter, ptr %180, i32 0, i32 4
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.i2c_lock_operations, ptr %182, i32 0, i32 2
  %184 = load ptr, ptr %183, align 4
  tail call void %184(ptr noundef %180, i32 noundef 2) #13
  %185 = icmp eq i32 %179, 0
  br i1 %185, label %186, label %226

186:                                              ; preds = %171
  %187 = load ptr, ptr %5, align 8
  %188 = load ptr, ptr %127, align 8
  %189 = getelementptr inbounds %struct.i2c_adapter, ptr %188, i32 0, i32 4
  %190 = load ptr, ptr %189, align 8
  %191 = load ptr, ptr %190, align 4
  tail call void %191(ptr noundef %188, i32 noundef 2) #13
  %192 = getelementptr inbounds %struct.rtl2830_dev, ptr %187, i32 0, i32 2
  %193 = load ptr, ptr %192, align 8
  %194 = tail call i32 @regmap_update_bits_base(ptr noundef %193, i32 noundef 257, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %195 = load ptr, ptr %127, align 8
  %196 = getelementptr inbounds %struct.i2c_adapter, ptr %195, i32 0, i32 4
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.i2c_lock_operations, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  tail call void %199(ptr noundef %195, i32 noundef 2) #13
  %200 = icmp eq i32 %194, 0
  br i1 %200, label %201, label %226

201:                                              ; preds = %186
  %202 = load ptr, ptr %5, align 8
  %203 = load ptr, ptr %127, align 8
  %204 = getelementptr inbounds %struct.i2c_adapter, ptr %203, i32 0, i32 4
  %205 = load ptr, ptr %204, align 8
  %206 = load ptr, ptr %205, align 4
  tail call void %206(ptr noundef %203, i32 noundef 2) #13
  %207 = getelementptr inbounds %struct.rtl2830_dev, ptr %202, i32 0, i32 2
  %208 = load ptr, ptr %207, align 8
  %209 = tail call i32 @regmap_update_bits_base(ptr noundef %208, i32 noundef 257, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %210 = load ptr, ptr %127, align 8
  %211 = getelementptr inbounds %struct.i2c_adapter, ptr %210, i32 0, i32 4
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.i2c_lock_operations, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 4
  tail call void %214(ptr noundef %210, i32 noundef 2) #13
  %215 = icmp eq i32 %209, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %201
  %217 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 4, i32 8, i32 42
  store i8 1, ptr %217, align 4
  %218 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 4, i32 8, i32 42, i32 1
  store i8 0, ptr %218, align 1
  %219 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 4, i32 8, i32 43
  store i8 1, ptr %219, align 1
  %220 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 4, i32 8, i32 43, i32 1
  store i8 0, ptr %220, align 1
  %221 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 4, i32 8, i32 46
  store i8 1, ptr %221, align 4
  %222 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 4, i32 8, i32 46, i32 1
  store i8 0, ptr %222, align 1
  %223 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 4, i32 8, i32 47
  store i8 1, ptr %223, align 1
  %224 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 4, i32 8, i32 47, i32 1
  store i8 0, ptr %224, align 1
  %225 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 5
  store i8 0, ptr %225, align 8
  br label %226

226:                                              ; preds = %216, %201, %186, %171, %156, %131
  %227 = phi i32 [ 0, %216 ], [ %164, %156 ], [ %179, %171 ], [ %194, %186 ], [ %209, %201 ], [ %149, %131 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #13
  ret i32 %227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rtl2830_sleep(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rtl2830_dev, ptr %5, i32 0, i32 5
  store i8 1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.rtl2830_dev, ptr %5, i32 0, i32 7
  store i32 0, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_set_frontend(ptr noundef %0) #2 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 %10(ptr noundef %0) #13
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %19 [
    i32 6000000, label %21
    i32 7000000, label %17
    i32 8000000, label %18
  ]

17:                                               ; preds = %14
  br label %21

18:                                               ; preds = %14
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.6, i32 noundef %16) #15
  br label %118

21:                                               ; preds = %18, %17, %14
  %22 = phi i32 [ 2, %18 ], [ 1, %17 ], [ 0, %14 ]
  %23 = shl nuw nsw i32 %22, 1
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %26, i32 noundef 2) #13
  %30 = getelementptr inbounds %struct.rtl2830_dev, ptr %24, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 8, i32 noundef 6, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %33 = load ptr, ptr %25, align 8
  %34 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.i2c_lock_operations, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %33, i32 noundef 2) #13
  %38 = icmp eq i32 %32, 0
  br i1 %38, label %39, label %116

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %116, label %43

43:                                               ; preds = %39
  %44 = call i32 %41(ptr noundef %0, ptr noundef nonnull %4) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %116

46:                                               ; preds = %43
  %47 = load i32, ptr %4, align 4
  %48 = load ptr, ptr %8, align 8
  %49 = load i32, ptr %48, align 4
  %50 = urem i32 %47, %49
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %51, 22
  %53 = icmp ult i32 %50, 1024
  br i1 %53, label %54, label %57, !prof !10

54:                                               ; preds = %46
  %55 = trunc i64 %52 to i32
  %56 = udiv i32 %55, %49
  br label %61

57:                                               ; preds = %46
  %58 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %49, i64 %52) #16, !srcloc !11
  %59 = extractvalue { i64, i64 } %58, 1
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i32 [ %56, %54 ], [ %60, %57 ]
  %63 = sub i32 0, %62
  %64 = lshr i32 %63, 8
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 %65, ptr %66, align 1
  %67 = trunc i32 %63 to i8
  %68 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 %67, ptr %68, align 1
  %69 = load ptr, ptr %7, align 8
  %70 = load ptr, ptr %25, align 8
  %71 = getelementptr inbounds %struct.i2c_adapter, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %72, align 4
  call void %73(ptr noundef %70, i32 noundef 2) #13
  %74 = getelementptr inbounds %struct.rtl2830_dev, ptr %69, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = call i32 @regmap_bulk_read(ptr noundef %75, i32 noundef 281, ptr noundef nonnull %3, i32 noundef 1) #13
  %77 = load ptr, ptr %25, align 8
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 4
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.i2c_lock_operations, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  call void %81(ptr noundef %77, i32 noundef 2) #13
  %82 = icmp eq i32 %76, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %61
  %84 = lshr i32 %63, 16
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 63
  %87 = load i8, ptr %3, align 1
  %88 = and i8 %87, -64
  %89 = or i8 %86, %88
  store i8 %89, ptr %2, align 1
  %90 = load ptr, ptr %7, align 8
  %91 = load ptr, ptr %25, align 8
  %92 = getelementptr inbounds %struct.i2c_adapter, ptr %91, i32 0, i32 4
  %93 = load ptr, ptr %92, align 8
  %94 = load ptr, ptr %93, align 4
  call void %94(ptr noundef %91, i32 noundef 2) #13
  %95 = getelementptr inbounds %struct.rtl2830_dev, ptr %90, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = call i32 @regmap_bulk_write(ptr noundef %96, i32 noundef 281, ptr noundef nonnull %2, i32 noundef 3) #13
  %98 = load ptr, ptr %25, align 8
  %99 = getelementptr inbounds %struct.i2c_adapter, ptr %98, i32 0, i32 4
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.i2c_lock_operations, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  call void %102(ptr noundef %98, i32 noundef 2) #13
  %103 = icmp eq i32 %97, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %83
  %105 = getelementptr [3 x [34 x i8]], ptr @rtl2830_set_frontend.bw_params1, i32 0, i32 %22
  %106 = call fastcc i32 @rtl2830_bulk_write(ptr noundef %6, i32 noundef 284, ptr noundef %105, i32 noundef 17)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = getelementptr [3 x [34 x i8]], ptr @rtl2830_set_frontend.bw_params1, i32 0, i32 %22, i32 17
  %110 = call fastcc i32 @rtl2830_bulk_write(ptr noundef %6, i32 noundef 301, ptr noundef %109, i32 noundef 17)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = getelementptr [3 x [6 x i8]], ptr @rtl2830_set_frontend.bw_params2, i32 0, i32 %22
  %114 = call fastcc i32 @rtl2830_bulk_write(ptr noundef %6, i32 noundef 413, ptr noundef %113, i32 noundef 6)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112, %108, %104, %83, %61, %43, %39, %21
  %117 = phi i32 [ %32, %21 ], [ %44, %43 ], [ %76, %61 ], [ %97, %83 ], [ %106, %104 ], [ %110, %108 ], [ %114, %112 ], [ -22, %39 ]
  br label %118

118:                                              ; preds = %116, %112, %19
  %119 = phi i32 [ -22, %19 ], [ %117, %116 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #13
  ret i32 %119
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rtl2830_get_tune_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  store i32 500, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %3, align 4
  %8 = shl i32 %7, 1
  %9 = or i32 %8, 1
  %10 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_get_frontend(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #2 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.rtl2830_dev, ptr %7, i32 0, i32 5
  %9 = load i8, ptr %8, align 8, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %86

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %13, i32 noundef 2) #13
  %17 = getelementptr inbounds %struct.rtl2830_dev, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 828, ptr noundef nonnull %3, i32 noundef 2) #13
  %20 = load ptr, ptr %12, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.i2c_lock_operations, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  call void %24(ptr noundef %20, i32 noundef 2) #13
  %25 = icmp eq i32 %19, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %11
  %27 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %28 = load ptr, ptr %6, align 8
  %29 = load ptr, ptr %12, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %31, align 4
  call void %32(ptr noundef %29, i32 noundef 2) #13
  %33 = getelementptr inbounds %struct.rtl2830_dev, ptr %28, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = call i32 @regmap_bulk_read(ptr noundef %34, i32 noundef 849, ptr noundef %27, i32 noundef 1) #13
  %36 = load ptr, ptr %12, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.i2c_lock_operations, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  call void %40(ptr noundef %36, i32 noundef 2) #13
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %26
  %43 = load i8, ptr %3, align 1
  %44 = lshr i8 %43, 2
  %45 = and i8 %44, 3
  %46 = icmp eq i8 %45, 3
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = zext i8 %45 to i32
  %49 = getelementptr inbounds [3 x i32], ptr @switch.table.rtl2830_get_frontend, i32 0, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i8, ptr %27, align 1
  %54 = lshr i8 %53, 2
  %55 = and i8 %54, 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %56, ptr %57, align 4
  %58 = and i8 %53, 3
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %59, ptr %60, align 4
  %61 = lshr i8 %43, 4
  %62 = and i8 %61, 7
  %63 = icmp ult i8 %62, 4
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = zext i8 %62 to i32
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %64, %52
  %68 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = lshr i8 %69, 3
  %71 = and i8 %70, 7
  %72 = icmp ult i8 %71, 5
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = zext i8 %71 to i32
  %75 = getelementptr inbounds [5 x i32], ptr @switch.table.rtl2830_get_frontend.8, i32 0, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %73, %67
  %79 = and i8 %69, 7
  %80 = icmp ult i8 %79, 5
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = zext i8 %79 to i32
  %83 = getelementptr inbounds [5 x i32], ptr @switch.table.rtl2830_get_frontend.8, i32 0, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %81, %78, %26, %11, %2
  %87 = phi i32 [ 0, %2 ], [ 0, %78 ], [ %19, %11 ], [ %35, %26 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  store i32 0, ptr %1, align 4
  %9 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 5
  %10 = load i8, ptr %9, align 8, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %175

12:                                               ; preds = %2
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %15, i32 noundef 2) #13
  %19 = getelementptr inbounds %struct.rtl2830_dev, ptr %13, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef 849, ptr noundef nonnull %3, i32 noundef 1) #13
  %22 = load ptr, ptr %14, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.i2c_lock_operations, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  call void %26(ptr noundef %22, i32 noundef 2) #13
  %27 = icmp eq i32 %21, 0
  br i1 %27, label %28, label %175

28:                                               ; preds = %12
  %29 = load i8, ptr %3, align 1
  %30 = lshr i8 %29, 3
  %31 = and i8 %30, 15
  store i8 %31, ptr %3, align 1
  %32 = trunc i8 %30 to i4
  switch i4 %32, label %33 [
    i4 -5, label %35
    i4 -6, label %38
  ]

33:                                               ; preds = %28
  %34 = load i32, ptr %1, align 4
  br label %41

35:                                               ; preds = %28
  %36 = load i32, ptr %1, align 4
  %37 = or i32 %36, 31
  store i32 %37, ptr %1, align 4
  br label %41

38:                                               ; preds = %28
  %39 = load i32, ptr %1, align 4
  %40 = or i32 %39, 7
  store i32 %40, ptr %1, align 4
  br label %41

41:                                               ; preds = %38, %35, %33
  %42 = phi i32 [ %34, %33 ], [ %40, %38 ], [ %37, %35 ]
  %43 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 7
  store i32 %42, ptr %43, align 8
  %44 = and i32 %42, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %7, align 8
  %48 = load ptr, ptr %14, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %48, i32 noundef 2) #13
  %52 = getelementptr inbounds %struct.rtl2830_dev, ptr %47, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = call i32 @regmap_bulk_read(ptr noundef %53, i32 noundef 857, ptr noundef nonnull %4, i32 noundef 2) #13
  %55 = load ptr, ptr %14, align 8
  %56 = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 4
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.i2c_lock_operations, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  call void %59(ptr noundef %55, i32 noundef 2) #13
  %60 = icmp eq i32 %54, 0
  br i1 %60, label %61, label %175

61:                                               ; preds = %46
  %62 = load i8, ptr %4, align 2
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %63, 26
  %68 = shl nuw nsw i32 %66, 18
  %69 = or i32 %68, %67
  %70 = ashr exact i32 %69, 18
  %71 = mul nsw i32 %70, -4
  %72 = add nsw i32 %71, 32767
  %73 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 42, i32 1
  store i8 2, ptr %73, align 1
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %74, ptr %75, align 1
  %76 = load i32, ptr %43, align 8
  br label %79

77:                                               ; preds = %41
  %78 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 42, i32 1
  store i8 0, ptr %78, align 1
  br label %79

79:                                               ; preds = %77, %61
  %80 = phi i32 [ %42, %77 ], [ %76, %61 ]
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %132, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %7, align 8
  %85 = load ptr, ptr %14, align 8
  %86 = getelementptr inbounds %struct.i2c_adapter, ptr %85, i32 0, i32 4
  %87 = load ptr, ptr %86, align 8
  %88 = load ptr, ptr %87, align 4
  call void %88(ptr noundef %85, i32 noundef 2) #13
  %89 = getelementptr inbounds %struct.rtl2830_dev, ptr %84, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = call i32 @regmap_bulk_read(ptr noundef %90, i32 noundef 828, ptr noundef nonnull %3, i32 noundef 1) #13
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds %struct.i2c_adapter, ptr %92, i32 0, i32 4
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.i2c_lock_operations, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  call void %96(ptr noundef %92, i32 noundef 2) #13
  %97 = icmp eq i32 %91, 0
  br i1 %97, label %98, label %175

98:                                               ; preds = %83
  %99 = load i8, ptr %3, align 1
  %100 = zext i8 %99 to i32
  %101 = lshr i32 %100, 2
  %102 = and i32 %101, 3
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %175, label %104

104:                                              ; preds = %98
  %105 = lshr i32 %100, 4
  %106 = and i32 %105, 7
  %107 = icmp ugt i32 %106, 3
  br i1 %107, label %175, label %108

108:                                              ; preds = %104
  %109 = call fastcc i32 @rtl2830_bulk_read(ptr noundef %6, i32 noundef 1036, ptr noundef nonnull %4, i32 noundef 2)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %175

111:                                              ; preds = %108
  %112 = load i8, ptr %4, align 2
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 8
  %115 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = or i32 %114, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %111
  %121 = getelementptr [3 x [4 x i32]], ptr @rtl2830_read_status.constant, i32 0, i32 %102, i32 %106
  %122 = load i32, ptr %121, align 4
  %123 = call i32 @intlog10(i32 noundef %118) #13
  %124 = sub i32 %122, %123
  %125 = udiv i32 %124, 1677
  br label %126

126:                                              ; preds = %120, %111
  %127 = phi i32 [ %125, %120 ], [ 0, %111 ]
  %128 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 43, i32 1
  store i8 1, ptr %128, align 1
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %129, ptr %130, align 1
  %131 = load i32, ptr %43, align 8
  br label %134

132:                                              ; preds = %79
  %133 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 43, i32 1
  store i8 0, ptr %133, align 1
  br label %134

134:                                              ; preds = %132, %126
  %135 = phi i32 [ %131, %126 ], [ %80, %132 ]
  %136 = and i32 %135, 16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %172, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %7, align 8
  %140 = load ptr, ptr %14, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, ptr %140, i32 0, i32 4
  %142 = load ptr, ptr %141, align 8
  %143 = load ptr, ptr %142, align 4
  call void %143(ptr noundef %140, i32 noundef 2) #13
  %144 = getelementptr inbounds %struct.rtl2830_dev, ptr %139, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8
  %146 = call i32 @regmap_bulk_read(ptr noundef %145, i32 noundef 846, ptr noundef nonnull %4, i32 noundef 2) #13
  %147 = load ptr, ptr %14, align 8
  %148 = getelementptr inbounds %struct.i2c_adapter, ptr %147, i32 0, i32 4
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.i2c_lock_operations, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  call void %151(ptr noundef %147, i32 noundef 2) #13
  %152 = icmp eq i32 %146, 0
  br i1 %152, label %153, label %175

153:                                              ; preds = %138
  %154 = load i8, ptr %4, align 2
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 8
  %157 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %156, %159
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 9
  %163 = load i64, ptr %162, align 8
  %164 = add i64 %163, %161
  store i64 %164, ptr %162, align 8
  %165 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 10
  %166 = load i64, ptr %165, align 8
  %167 = add i64 %166, 1000000
  store i64 %167, ptr %165, align 8
  %168 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 46, i32 1
  store i8 3, ptr %168, align 1
  %169 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %164, ptr %169, align 1
  %170 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 47, i32 1
  store i8 3, ptr %170, align 1
  %171 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 %167, ptr %171, align 1
  br label %175

172:                                              ; preds = %134
  %173 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 46, i32 1
  store i8 0, ptr %173, align 1
  %174 = getelementptr inbounds %struct.rtl2830_dev, ptr %8, i32 0, i32 4, i32 8, i32 47, i32 1
  store i8 0, ptr %174, align 1
  br label %175

175:                                              ; preds = %172, %153, %138, %108, %104, %98, %83, %46, %12, %2
  %176 = phi i32 [ 0, %2 ], [ 0, %153 ], [ 0, %172 ], [ %21, %12 ], [ %54, %46 ], [ %146, %138 ], [ %109, %108 ], [ 0, %104 ], [ 0, %98 ], [ %91, %83 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 %176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rtl2830_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 9
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 8
  %10 = load i64, ptr %9, align 8
  %11 = sub i64 %8, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %1, align 4
  %13 = load i64, ptr %7, align 8
  store i64 %13, ptr %9, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rtl2830_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %8 = load i64, ptr %7, align 1
  %9 = trunc i64 %8 to i16
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i16 [ %9, %6 ], [ 0, %2 ]
  store i16 %11, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2830_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rtl2830_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #12 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtl2830_bulk_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %8, i32 noundef 2) #13
  %12 = getelementptr inbounds %struct.rtl2830_dev, ptr %6, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef %1, ptr noundef %2, i32 noundef %3) #13
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.i2c_lock_operations, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %15, i32 noundef 2) #13
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

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
!11 = !{i64 2148623590, i64 2148623870, i64 2148624204, i64 2148624538}
