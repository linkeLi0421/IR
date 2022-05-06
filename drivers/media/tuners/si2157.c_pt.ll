; ModuleID = '/llk/IR/drivers/media/tuners/si2157.c_pt.bc'
source_filename = "../drivers/media/tuners/si2157.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.si2157_tuner_info = type { i32, i8, i8, ptr, ptr }
%struct.si2157_cmd = type { [30 x i8], i32, i32 }
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
%struct.si2157_dev = type { %struct.mutex, ptr, i8, i8, i8, i32, i32, i32, %struct.delayed_work, ptr, %struct.media_entity, [3 x %struct.media_pad] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.78 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.si2157_config = type { ptr, ptr, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_tuner_lock_debug = internal constant [17 x i8] c"tuner_lock_debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tuner_lock_debug = internal global i32 0, align 4
@__param_tuner_lock_debug = internal constant %struct.kernel_param { ptr @__param_str_tuner_lock_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @tuner_lock_debug } }, section "__param", align 4
@__UNIQUE_ID_tuner_lock_debugtype251 = internal constant [30 x i8] c"parmtype=tuner_lock_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tuner_lock_debug252 = internal constant [84 x i8] c"parm=tuner_lock_debug:if set, signal lock is briefly waited on after setting params\00", section ".modinfo", align 1
@si2157_id_table = internal constant [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si2157\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 57 }, %struct.i2c_device_id { [20 x i8] c"si2146\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 46 }, %struct.i2c_device_id { [20 x i8] c"si2141\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41 }, %struct.i2c_device_id { [20 x i8] c"si2177\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 77 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description257 = internal constant [80 x i8] c"description=Silicon Labs Si2141/Si2146/2147/2148/2157/2158 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [36 x i8] c"firmware=dvb-tuner-si2158-a20-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [36 x i8] c"firmware=dvb-tuner-si2141-a10-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [36 x i8] c"firmware=dvb-tuner-si2157-a30-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [36 x i8] c"firmware=dvb_driver_si2141_rom60.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware264 = internal constant [36 x i8] c"firmware=dvb_driver_si2141_rom61.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware265 = internal constant [36 x i8] c"firmware=dvb_driver_si2146_rom11.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware266 = internal constant [36 x i8] c"firmware=dvb_driver_si2147_rom50.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware267 = internal constant [36 x i8] c"firmware=dvb_driver_si2148_rom32.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware268 = internal constant [36 x i8] c"firmware=dvb_driver_si2148_rom33.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware269 = internal constant [36 x i8] c"firmware=dvb_driver_si2157_rom50.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware270 = internal constant [36 x i8] c"firmware=dvb_driver_si2178_rom50.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware271 = internal constant [36 x i8] c"firmware=dvb_driver_si2158_rom51.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware272 = internal constant [36 x i8] c"firmware=dvb_driver_si2177_rom50.fw\00", section ".modinfo", align 1
@si2157_driver = internal global %struct.i2c_driver { i32 0, ptr @si2157_probe, ptr @si2157_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si2157_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"kzalloc() failed\0A\00", align 1
@si2157_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"&dev->i2c_mutex\00", align 1
@si2157_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Silicon Labs Si2141/Si2146/2147/2148/2157/2158\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 42000000, i32 870000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @si2157_init, ptr @si2157_sleep, ptr null, ptr null, ptr @si2157_set_params, ptr @si2157_set_analog_params, ptr null, ptr @si2157_get_frequency, ptr @si2157_get_bandwidth, ptr @si2157_get_if_frequency, ptr null, ptr @si2157_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Silicon Labs Si21%d successfully attached\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.6 = private unnamed_addr constant [10 x i8] c"\C0\05\01\00\00\0B\00\00\01\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\C0\00\0D\0E\00\01\01\01\01\03\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\C0\00\0C\00\00\01\01\01\01\01\01\02\00\00\01\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\C0\08\01\02\00\00\01\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"firmware version: %c.%c.%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\14\00\01\05\01\00\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\14\00\01\06\01\00\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\14\00\01\07\01\00\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"device is buggy, skipping firmware download\0A\00", align 1
@si2157_tuners = internal unnamed_addr constant [10 x %struct.si2157_tuner_info] [%struct.si2157_tuner_info { i32 41, i8 0, i8 1, ptr @.str.23, ptr @.str.24 }, %struct.si2157_tuner_info { i32 41, i8 0, i8 1, ptr @.str.25, ptr @.str.24 }, %struct.si2157_tuner_info { i32 46, i8 0, i8 1, ptr @.str.26, ptr null }, %struct.si2157_tuner_info { i32 47, i8 0, i8 1, ptr @.str.27, ptr null }, %struct.si2157_tuner_info { i32 48, i8 1, i8 1, ptr @.str.28, ptr @.str.29 }, %struct.si2157_tuner_info { i32 48, i8 1, i8 1, ptr @.str.30, ptr @.str.29 }, %struct.si2157_tuner_info { i32 57, i8 0, i8 1, ptr @.str.31, ptr @.str.32 }, %struct.si2157_tuner_info { i32 58, i8 0, i8 1, ptr @.str.33, ptr @.str.29 }, %struct.si2157_tuner_info { i32 58, i8 0, i8 1, ptr @.str.34, ptr @.str.29 }, %struct.si2157_tuner_info { i32 77, i8 0, i8 1, ptr @.str.35, ptr @.str.32 }], align 4
@.str.18 = private unnamed_addr constant [47 x i8] c"unknown chip version Si21%d-%c%c%c ROM 0x%02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"found a 'Silicon Labs Si21%d-%c%c%c ROM 0x%02x'\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Can't continue without a firmware.\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"error %d when loading firmware\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2141_rom60.fw\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"dvb-tuner-si2141-a10-01.fw\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2141_rom61.fw\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2146_rom11.fw\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2147_rom50.fw\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2148_rom32.fw\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"dvb-tuner-si2158-a20-01.fw\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2148_rom33.fw\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2157_rom50.fw\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"dvb-tuner-si2157-a30-01.fw\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2178_rom50.fw\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2158_rom51.fw\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"dvb_driver_si2177_rom50.fw\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"firmware file '%s' is invalid\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Bad firmware length\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\14\00\03\07\00\00\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"\14\00\02\07\00\01\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\14\00\02\07\00\00\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"Analog tuning not supported yet for Si21%d\0A\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"si2157 does not currently support FM radio\0A\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"\14\00\03\06\08\02\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"\14\00\0D\06\94d\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"\14\00\07\062\C8\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"\14\00\04\06\00\00\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263, ptr @__UNIQUE_ID_firmware264, ptr @__UNIQUE_ID_firmware265, ptr @__UNIQUE_ID_firmware266, ptr @__UNIQUE_ID_firmware267, ptr @__UNIQUE_ID_firmware268, ptr @__UNIQUE_ID_firmware269, ptr @__UNIQUE_ID_firmware270, ptr @__UNIQUE_ID_firmware271, ptr @__UNIQUE_ID_firmware272, ptr @__UNIQUE_ID_license259, ptr @__UNIQUE_ID_tuner_lock_debug252, ptr @__UNIQUE_ID_tuner_lock_debugtype251, ptr @__param_tuner_lock_debug], section "llvm.metadata"
@switch.table.si2157_set_params = private unnamed_addr constant [18 x i8] c"0\10 \00\00\00\00@\00\00\00\00`\00\00 \000", align 1
@switch.table.si2157_set_params.66 = private unnamed_addr constant [18 x i32] [i32 5000000, i32 4000000, i32 5000000, i32 3250000, i32 3250000, i32 3250000, i32 3250000, i32 5000000, i32 3250000, i32 3250000, i32 3250000, i32 3250000, i32 5000000, i32 3250000, i32 3250000, i32 5000000, i32 3250000, i32 5000000], align 4

@__mod_i2c__si2157_id_table_device_table = dso_local alias [5 x %struct.i2c_device_id], ptr @si2157_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @si2157_driver) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @si2157_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2157_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.si2157_cmd, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 32, i1 false), !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 264) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #12
  br label %74

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %9, ptr %13, align 8
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.si2157_config, ptr %6, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 2
  %19 = load i8, ptr %18, align 8
  %20 = shl i8 %17, 1
  %21 = and i8 %20, 2
  %22 = and i8 %19, -3
  %23 = or i8 %22, %21
  store i8 %23, ptr %18, align 8
  %24 = load i8, ptr %16, align 4
  %25 = shl i8 %24, 1
  %26 = and i8 %25, 4
  %27 = and i8 %23, -5
  %28 = or i8 %26, %27
  store i8 %28, ptr %18, align 8
  %29 = getelementptr inbounds %struct.si2157_config, ptr %6, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 4
  store i8 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 3
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 5
  store i32 5000000, ptr %36, align 4
  tail call void @__mutex_init(ptr noundef nonnull %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @si2157_probe.__key) #10
  %37 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 8
  store i32 -32, ptr %37, align 8
  %38 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 8, i32 0, i32 1
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 8, i32 0, i32 1, i32 1
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 8, i32 0, i32 2
  store ptr @si2157_stat_work, ptr %40, align 4
  %41 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %41, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %42 = getelementptr inbounds %struct.si2157_cmd, ptr %3, i32 0, i32 1
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.si2157_cmd, ptr %3, i32 0, i32 2
  store i32 1, ptr %43, align 4
  %44 = call fastcc i32 @si2157_cmd_execute(ptr noundef %0, ptr noundef nonnull %3)
  switch i32 %44, label %72 [
    i32 -11, label %45
    i32 0, label %45
  ]

45:                                               ; preds = %12, %12
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %46, ptr noundef nonnull align 4 dereferenceable(220) @si2157_ops, i32 220, i1 false)
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 4
  store ptr %0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.si2157_config, ptr %6, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %69, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 9
  store ptr %49, ptr %52, align 4
  %53 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 10
  %54 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 10, i32 1
  store ptr @.str, ptr %54, align 8
  %55 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 10, i32 3
  store i32 131077, ptr %55, align 8
  %56 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 11
  %57 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 11, i32 0, i32 4
  store i32 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.si2157_dev, ptr %9, i32 0, i32 11, i32 0, i32 3
  store i32 1, ptr %58, align 8
  %59 = getelementptr %struct.si2157_dev, ptr %9, i32 0, i32 11, i32 1, i32 4
  store i32 2, ptr %59, align 4
  %60 = getelementptr %struct.si2157_dev, ptr %9, i32 0, i32 11, i32 1, i32 3
  store i32 1, ptr %60, align 8
  %61 = getelementptr %struct.si2157_dev, ptr %9, i32 0, i32 11, i32 2, i32 4
  store i32 2, ptr %61, align 4
  %62 = getelementptr %struct.si2157_dev, ptr %9, i32 0, i32 11, i32 2, i32 3
  store i32 3, ptr %62, align 8
  %63 = call i32 @media_entity_pads_init(ptr noundef %53, i16 noundef zeroext 3, ptr noundef %56) #10
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %51
  %66 = load ptr, ptr %48, align 4
  %67 = call i32 @media_device_register_entity(ptr noundef %66, ptr noundef %53) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %45
  %70 = load i8, ptr %35, align 1
  %71 = zext i8 %70 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %71) #12
  br label %74

72:                                               ; preds = %65, %51, %12
  %73 = phi i32 [ %44, %12 ], [ %63, %51 ], [ %67, %65 ]
  call void @kfree(ptr noundef nonnull %9) #10
  br label %74

74:                                               ; preds = %72, %69, %11
  %75 = phi i32 [ 0, %69 ], [ %73, %72 ], [ -12, %11 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2157_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 8
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 32
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(220) %8, i8 0, i32 220, i1 false)
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 4
  store ptr null, ptr %9, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @si2157_stat_work(ptr noundef %0) #2 {
  %2 = alloca %struct.si2157_cmd, align 4
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 32, i1 false), !annotation !8
  store i16 66, ptr %2, align 4
  %7 = getelementptr inbounds %struct.si2157_cmd, ptr %2, i32 0, i32 1
  store i32 2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.si2157_cmd, ptr %2, i32 0, i32 2
  store i32 12, ptr %8, align 4
  %9 = call fastcc i32 @si2157_cmd_execute(ptr noundef %6, ptr noundef nonnull %2)
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 8, i32 42, i32 1
  br i1 %10, label %12, label %21

12:                                               ; preds = %1
  store i8 1, ptr %11, align 1
  %13 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = sext i8 %14 to i32
  %16 = mul nsw i32 %15, 1000
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %17, ptr %18, align 1
  %19 = load ptr, ptr @system_wq, align 4
  %20 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %0, i32 noundef 200) #10
  br label %22

21:                                               ; preds = %1
  store i8 0, ptr %11, align 1
  br label %22

22:                                               ; preds = %21, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2157_cmd_execute(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.si2157_cmd, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef %1, i32 noundef %6, i16 noundef zeroext 0) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct.si2157_cmd, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %19, 8
  br label %21

21:                                               ; preds = %32, %18
  %22 = phi i32 [ %27, %32 ], [ %16, %18 ]
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = sub i32 %20, %23
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef %1, i32 noundef %22, i16 noundef zeroext 1) #10
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %15, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i8, ptr %1, align 4
  %34 = icmp sgt i8 %33, -1
  br i1 %34, label %21, label %38

35:                                               ; preds = %21
  %36 = load i8, ptr %1, align 4
  %37 = icmp sgt i8 %36, -1
  br i1 %37, label %42, label %38

38:                                               ; preds = %35, %32
  %39 = phi i8 [ %36, %35 ], [ %33, %32 ]
  %40 = and i8 %39, 64
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %35, %29, %26, %11, %8
  %43 = phi i32 [ %9, %8 ], [ -121, %11 ], [ -110, %35 ], [ -11, %38 ], [ -121, %29 ], [ %27, %26 ]
  br label %44

44:                                               ; preds = %42, %38, %14
  %45 = phi i32 [ %43, %42 ], [ 0, %38 ], [ 0, %14 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2157_init(ptr nocapture noundef %0) #2 {
  %2 = alloca %struct.si2157_cmd, align 4
  %3 = alloca %struct.si2157_cmd, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %8 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %8, i8 0, i32 28, i1 false), !annotation !8
  store i32 67239957, ptr %3, align 4
  %9 = getelementptr inbounds %struct.si2157_cmd, ptr %3, i32 0, i32 1
  store i32 4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.si2157_cmd, ptr %3, i32 0, i32 2
  store i32 4, ptr %10, align 4
  %11 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %12 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %18, %14
  %20 = icmp eq i32 %11, 0
  %21 = icmp ult i32 %19, 16
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %164, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 5
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 3
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %29 [
    i8 46, label %27
    i8 41, label %28
  ]

27:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(9) %3, ptr noundef nonnull align 1 dereferenceable(9) @.str.6, i32 9, i1 false)
  br label %30

28:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @.str.7, i32 10, i1 false)
  br label %30

29:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) @.str.8, i32 15, i1 false)
  br label %30

30:                                               ; preds = %29, %28, %27
  %31 = phi i32 [ 10, %28 ], [ 15, %29 ], [ 9, %27 ]
  store i32 %31, ptr %9, align 4
  store i32 1, ptr %10, align 4
  %32 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %33 = icmp eq i32 %32, 0
  %34 = load i8, ptr %25, align 1
  br i1 %33, label %39, label %35

35:                                               ; preds = %30
  %36 = icmp ne i8 %34, 41
  %37 = icmp ne i32 %32, -11
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %173, label %41

39:                                               ; preds = %30
  %40 = icmp eq i8 %34, 41
  br i1 %40, label %41, label %44

41:                                               ; preds = %39, %35
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(7) %3, ptr noundef nonnull align 1 dereferenceable(7) @.str.9, i32 7, i1 false)
  store i32 7, ptr %9, align 4
  %42 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %173

44:                                               ; preds = %41, %39
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4, i32 8
  %47 = load ptr, ptr %46, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 32, i1 false) #10, !annotation !8
  %48 = getelementptr inbounds %struct.si2157_dev, ptr %47, i32 0, i32 2
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.16) #12
  br label %136

54:                                               ; preds = %44
  store i8 2, ptr %2, align 4
  %55 = getelementptr inbounds %struct.si2157_cmd, ptr %2, i32 0, i32 1
  store i32 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.si2157_cmd, ptr %2, i32 0, i32 2
  store i32 13, ptr %56, align 4
  %57 = call fastcc i32 @si2157_cmd_execute(ptr noundef %45, ptr noundef nonnull %2) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %137

59:                                               ; preds = %54
  %60 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 2
  %61 = load i8, ptr %60, align 2
  %62 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 12
  %63 = load i8, ptr %62, align 4
  %64 = zext i8 %61 to i32
  switch i8 %61, label %84 [
    i8 41, label %65
    i8 46, label %72
    i8 47, label %74
    i8 48, label %76
    i8 57, label %78
    i8 58, label %80
    i8 77, label %82
  ]

65:                                               ; preds = %59
  %66 = icmp eq i8 %63, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %82, %80, %78, %76, %74, %72, %65
  %68 = phi i32 [ 0, %65 ], [ 2, %72 ], [ 3, %74 ], [ 4, %76 ], [ 6, %78 ], [ 7, %80 ], [ 9, %82 ]
  %69 = phi ptr [ @.str.24, %65 ], [ null, %72 ], [ null, %74 ], [ @.str.29, %76 ], [ @.str.32, %78 ], [ @.str.29, %80 ], [ @.str.32, %82 ]
  %70 = getelementptr [10 x %struct.si2157_tuner_info], ptr @si2157_tuners, i32 0, i32 %68, i32 3
  %71 = load ptr, ptr %70, align 4
  br label %84

72:                                               ; preds = %59
  %73 = icmp eq i8 %63, 0
  br i1 %73, label %67, label %84

74:                                               ; preds = %59
  %75 = icmp eq i8 %63, 0
  br i1 %75, label %67, label %84

76:                                               ; preds = %59
  %77 = icmp eq i8 %63, 1
  br i1 %77, label %67, label %102

78:                                               ; preds = %59
  %79 = icmp eq i8 %63, 0
  br i1 %79, label %67, label %102

80:                                               ; preds = %59
  %81 = icmp eq i8 %63, 0
  br i1 %81, label %67, label %102

82:                                               ; preds = %59
  %83 = icmp eq i8 %63, 0
  br i1 %83, label %67, label %102

84:                                               ; preds = %74, %72, %67, %59
  %85 = phi ptr [ %69, %67 ], [ null, %74 ], [ null, %72 ], [ null, %59 ]
  %86 = phi ptr [ %71, %67 ], [ null, %74 ], [ null, %72 ], [ null, %59 ]
  %87 = icmp ne ptr %86, null
  %88 = icmp ne ptr %85, null
  %89 = or i1 %88, %87
  br i1 %89, label %102, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  %92 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 3
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 4
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i32
  %101 = zext i8 %63 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.18, i32 noundef %64, i32 noundef %94, i32 noundef %97, i32 noundef %100, i32 noundef %101) #12
  br label %134

102:                                              ; preds = %84, %82, %80, %78, %76, %65
  %103 = phi i1 [ %88, %84 ], [ true, %82 ], [ true, %80 ], [ true, %78 ], [ true, %76 ], [ true, %65 ]
  %104 = phi i1 [ %87, %84 ], [ false, %82 ], [ false, %80 ], [ false, %78 ], [ false, %76 ], [ false, %65 ]
  %105 = phi ptr [ %86, %84 ], [ null, %82 ], [ null, %80 ], [ null, %78 ], [ null, %76 ], [ null, %65 ]
  %106 = phi ptr [ %85, %84 ], [ @.str.32, %82 ], [ @.str.29, %80 ], [ @.str.32, %78 ], [ @.str.29, %76 ], [ @.str.24, %65 ]
  %107 = getelementptr inbounds %struct.si2157_dev, ptr %47, i32 0, i32 3
  store i8 %61, ptr %107, align 1
  %108 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  %109 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 1
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 3
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 4
  %116 = load i8, ptr %115, align 4
  %117 = zext i8 %116 to i32
  %118 = zext i8 %63 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.19, i32 noundef %64, i32 noundef %111, i32 noundef %114, i32 noundef %117, i32 noundef %118) #12
  br i1 %104, label %119, label %121

119:                                              ; preds = %102
  %120 = call fastcc i32 @si2157_load_firmware(ptr noundef %0, ptr noundef nonnull %105) #10
  br label %121

121:                                              ; preds = %119, %102
  %122 = phi i32 [ %120, %119 ], [ -2, %102 ]
  %123 = icmp eq i32 %122, -2
  %124 = and i1 %103, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call fastcc i32 @si2157_load_firmware(ptr noundef %0, ptr noundef nonnull %106) #10
  br label %127

127:                                              ; preds = %125, %121
  %128 = phi i32 [ %126, %125 ], [ %122, %121 ]
  %129 = icmp eq i32 %128, -2
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.21) #12
  br label %134

131:                                              ; preds = %127
  %132 = icmp slt i32 %128, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.22, i32 noundef %128) #12
  br label %134

134:                                              ; preds = %133, %130, %90
  %135 = phi i32 [ -2, %130 ], [ %128, %133 ], [ -22, %90 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  br label %173

136:                                              ; preds = %131, %52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  br label %139

137:                                              ; preds = %54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  %138 = icmp slt i32 %57, 0
  br i1 %138, label %173, label %139

139:                                              ; preds = %137, %136
  store i16 257, ptr %3, align 4
  store i32 2, ptr %9, align 4
  store i32 1, ptr %10, align 4
  %140 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %173

142:                                              ; preds = %139
  store i8 17, ptr %3, align 4
  store i32 1, ptr %9, align 4
  store i32 10, ptr %10, align 4
  %143 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %173

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %147 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 6
  %148 = load i8, ptr %147, align 2
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 7
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 8
  %154 = load i8, ptr %153, align 4
  %155 = zext i8 %154 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %146, ptr noundef nonnull @.str.12, i32 noundef %149, i32 noundef %152, i32 noundef %155) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i32 6, i1 false)
  store i32 6, ptr %9, align 4
  store i32 1, ptr %10, align 4
  %156 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %145
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.14, i32 6, i1 false)
  store i32 6, ptr %9, align 4
  store i32 1, ptr %10, align 4
  %159 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.15, i32 6, i1 false)
  store i32 6, ptr %9, align 4
  store i32 1, ptr %10, align 4
  %162 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161, %1
  %165 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %165, align 4
  %166 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %166, align 1
  %167 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 8
  %168 = load ptr, ptr @system_wq, align 4
  %169 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %168, ptr noundef %167, i32 noundef 100) #10
  %170 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 2
  %171 = load i8, ptr %170, align 4
  %172 = or i8 %171, 1
  store i8 %172, ptr %170, align 4
  br label %173

173:                                              ; preds = %164, %161, %158, %145, %142, %139, %137, %134, %41, %35
  %174 = phi i32 [ 0, %164 ], [ %32, %35 ], [ %42, %41 ], [ %57, %137 ], [ %140, %139 ], [ %143, %142 ], [ %156, %145 ], [ %159, %158 ], [ %162, %161 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2157_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.si2157_cmd, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 32, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -2
  store i8 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 8
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #10
  store i16 22, ptr %2, align 4
  %12 = getelementptr inbounds %struct.si2157_cmd, ptr %2, i32 0, i32 1
  store i32 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.si2157_cmd, ptr %2, i32 0, i32 2
  store i32 1, ptr %13, align 4
  %14 = call fastcc i32 @si2157_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2157_set_params(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.si2157_cmd, align 8
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 32, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %100, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  switch i8 %14, label %15 [
    i8 41, label %18
    i8 47, label %18
    i8 57, label %18
    i8 77, label %18
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %17 = load i32, ptr %16, align 4
  br label %22

18:                                               ; preds = %12, %12, %12, %12
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 1700001
  br i1 %21, label %32, label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %17, %15 ], [ %20, %18 ]
  %24 = icmp ult i32 %23, 6000001
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  switch i8 %14, label %28 [
    i8 41, label %26
    i8 47, label %26
    i8 57, label %26
    i8 77, label %26
  ]

26:                                               ; preds = %25, %25, %25, %25
  %27 = icmp ult i32 %23, 6100001
  br i1 %27, label %32, label %28

28:                                               ; preds = %26, %25
  %29 = icmp ult i32 %23, 7000001
  %30 = select i1 %29, i8 7, i8 8
  %31 = select i1 %29, i32 7000000, i32 8000000
  br label %32

32:                                               ; preds = %28, %26, %22, %18
  %33 = phi i8 [ 9, %18 ], [ 6, %22 ], [ 10, %26 ], [ %30, %28 ]
  %34 = phi i32 [ 1700000, %18 ], [ 6000000, %22 ], [ 6100000, %26 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  %38 = icmp ult i32 %37, 18
  br i1 %38, label %39, label %100

39:                                               ; preds = %32
  %40 = lshr i32 169095, %37
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %100, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds [18 x i8], ptr @switch.table.si2157_set_params, i32 0, i32 %37
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds [18 x i32], ptr @switch.table.si2157_set_params.66, i32 0, i32 %37
  %47 = load i32, ptr %46, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.41, i32 6, i1 false)
  %48 = or i8 %45, %33
  %49 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 4
  store i8 %48, ptr %49, align 4
  %50 = and i8 %9, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 5
  store i8 1, ptr %53, align 1
  br label %54

54:                                               ; preds = %52, %43
  %55 = getelementptr inbounds %struct.si2157_cmd, ptr %2, i32 0, i32 1
  store i32 6, ptr %55, align 8
  %56 = getelementptr inbounds %struct.si2157_cmd, ptr %2, i32 0, i32 2
  store i32 4, ptr %56, align 4
  %57 = call fastcc i32 @si2157_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %54
  %60 = load i8, ptr %13, align 1
  %61 = icmp eq i8 %60, 46
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.42, i32 6, i1 false)
  br label %64

63:                                               ; preds = %59
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.43, i32 6, i1 false)
  br label %64

64:                                               ; preds = %63, %62
  %65 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 4
  %66 = load i8, ptr %65, align 2
  store i8 %66, ptr %49, align 4
  store i32 6, ptr %55, align 8
  store i32 4, ptr %56, align 4
  %67 = call fastcc i32 @si2157_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %47, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  store i32 117833748, ptr %2, align 8
  %74 = udiv i32 %47, 1000
  %75 = trunc i32 %74 to i8
  store i8 %75, ptr %49, align 4
  %76 = lshr i32 %74, 8
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 5
  store i8 %77, ptr %78, align 1
  store i32 6, ptr %55, align 8
  store i32 4, ptr %56, align 4
  %79 = call fastcc i32 @si2157_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %73
  store i32 %47, ptr %70, align 4
  br label %82

82:                                               ; preds = %81, %69
  store i64 65, ptr %2, align 8
  %83 = load i32, ptr %7, align 4
  %84 = trunc i32 %83 to i8
  store i8 %84, ptr %49, align 4
  %85 = lshr i32 %83, 8
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 5
  store i8 %86, ptr %87, align 1
  %88 = lshr i32 %83, 16
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 6
  store i8 %89, ptr %90, align 2
  %91 = lshr i32 %83, 24
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 7
  store i8 %92, ptr %93, align 1
  store i32 8, ptr %55, align 8
  store i32 1, ptr %56, align 4
  %94 = call fastcc i32 @si2157_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 6
  store i32 %34, ptr %97, align 4
  %98 = load i32, ptr %7, align 4
  %99 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 7
  store i32 %98, ptr %99, align 4
  call fastcc void @si2157_tune_wait(ptr noundef %4, i8 noundef zeroext 1)
  br label %105

100:                                              ; preds = %82, %73, %64, %54, %39, %32, %1
  %101 = phi i32 [ %57, %54 ], [ %67, %64 ], [ %79, %73 ], [ %94, %82 ], [ -11, %1 ], [ -22, %32 ], [ -22, %39 ]
  %102 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 6
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 7
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 5
  store i32 0, ptr %104, align 4
  br label %105

105:                                              ; preds = %100, %96
  %106 = phi i32 [ %101, %100 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2157_set_analog_params(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.si2157_cmd, align 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %9, -57
  %11 = icmp ult i8 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = zext i8 %9 to i32
  %14 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.47, i32 noundef %13) #12
  br label %135

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = tail call i32 @si2157_init(ptr noundef %0)
  %22 = load i8, ptr %16, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %135, label %25

25:                                               ; preds = %20, %15
  %26 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.48) #12
  br label %135

31:                                               ; preds = %25
  %32 = load i32, ptr %1, align 8
  %33 = zext i32 %32 to i64
  %34 = mul nuw nsw i64 %33, 625
  %35 = lshr i64 %34, 1
  %36 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %35, i64 3689348814741910323) #13, !srcloc !9
  %37 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %35, i64 %36) #13, !srcloc !10
  %38 = trunc i64 %37 to i32
  %39 = icmp ult i32 %38, 1000000
  %40 = mul i32 %38, 1000
  %41 = select i1 %39, i32 %40, i32 %38
  %42 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 7
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 851983
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %31
  %48 = icmp ugt i32 %41, 469999999
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = and i64 %44, 786432
  %51 = icmp eq i64 %50, 0
  %52 = select i1 %51, i8 0, i8 16
  br label %81

53:                                               ; preds = %47
  %54 = lshr i64 %44, 12
  %55 = trunc i64 %54 to i8
  %56 = and i8 %55, 16
  br label %81

57:                                               ; preds = %31
  %58 = and i64 %44, 46848
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = and i64 %44, 16
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = and i64 %44, 3277024
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = and i64 %44, 3276800
  %68 = icmp eq i64 %67, 0
  %69 = select i1 %68, i8 0, i8 16
  br label %81

70:                                               ; preds = %63
  %71 = and i64 %44, 4194304
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = and i64 %44, 8388608
  %75 = icmp eq i64 %74, 0
  %76 = select i1 %75, i32 0, i32 7000000
  %77 = select i1 %75, i32 0, i32 1250000
  %78 = select i1 %75, i8 0, i8 7
  %79 = lshr exact i64 %74, 19
  %80 = trunc i64 %79 to i8
  br label %81

81:                                               ; preds = %73, %70, %66, %60, %57, %53, %49
  %82 = phi i32 [ 8000000, %49 ], [ 7000000, %53 ], [ 6000000, %57 ], [ 8000000, %60 ], [ 8000000, %66 ], [ 8000000, %70 ], [ %76, %73 ]
  %83 = phi i32 [ 6000000, %49 ], [ 6000000, %53 ], [ 5400000, %57 ], [ 7250000, %60 ], [ 6900000, %66 ], [ 6750000, %70 ], [ %77, %73 ]
  %84 = phi i8 [ 1, %49 ], [ 0, %53 ], [ 2, %57 ], [ 4, %60 ], [ 5, %66 ], [ 6, %70 ], [ %78, %73 ]
  %85 = phi i8 [ %52, %49 ], [ %56, %53 ], [ 0, %57 ], [ 0, %60 ], [ %69, %66 ], [ 16, %70 ], [ %80, %73 ]
  %86 = add i32 %41, -1250000
  %87 = lshr exact i32 %82, 1
  %88 = add i32 %86, %87
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.60, i32 6, i1 false)
  %89 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 4
  %90 = load i8, ptr %89, align 2
  %91 = icmp eq i8 %90, 1
  %92 = select i1 %91, i8 8, i8 10
  %93 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 4
  store i8 %92, ptr %93, align 4
  %94 = select i1 %91, i8 2, i8 1
  %95 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 5
  store i8 %94, ptr %95, align 1
  %96 = getelementptr inbounds %struct.si2157_cmd, ptr %3, i32 0, i32 1
  store i32 6, ptr %96, align 8
  %97 = getelementptr inbounds %struct.si2157_cmd, ptr %3, i32 0, i32 2
  store i32 4, ptr %97, align 4
  %98 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %81
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.61, i32 6, i1 false)
  store i32 6, ptr %96, align 8
  store i32 4, ptr %97, align 4
  %101 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %100
  %104 = or i32 %83, 1
  %105 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 5
  store i32 %104, ptr %105, align 4
  %106 = add nuw nsw i32 %83, 1250000
  %107 = sub nsw i32 %106, %87
  store i32 101449748, ptr %3, align 8
  %108 = udiv i32 %107, 1000
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr %93, align 4
  %110 = lshr i32 %108, 8
  %111 = trunc i32 %110 to i8
  store i8 %111, ptr %95, align 1
  store i32 6, ptr %96, align 8
  store i32 4, ptr %97, align 4
  %112 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %103
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.63, i32 6, i1 false)
  store i32 6, ptr %96, align 8
  store i32 4, ptr %97, align 4
  %115 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %114
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.64, i32 6, i1 false)
  %118 = or i8 %85, %84
  store i8 %118, ptr %93, align 4
  store i8 2, ptr %95, align 1
  store i32 6, ptr %96, align 8
  store i32 1, ptr %97, align 4
  %119 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  store i64 321, ptr %3, align 8
  %122 = trunc i32 %88 to i8
  store i8 %122, ptr %93, align 4
  %123 = lshr i32 %88, 8
  %124 = trunc i32 %123 to i8
  store i8 %124, ptr %95, align 1
  %125 = lshr i32 %88, 16
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 6
  store i8 %126, ptr %127, align 2
  %128 = lshr i32 %88, 24
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 7
  store i8 %129, ptr %130, align 1
  store i32 8, ptr %96, align 8
  store i32 1, ptr %97, align 4
  %131 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %121
  %134 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 6
  store i32 %82, ptr %134, align 4
  call fastcc void @si2157_tune_wait(ptr noundef %5, i8 noundef zeroext 0)
  br label %140

135:                                              ; preds = %121, %117, %114, %103, %100, %81, %29, %20, %12
  %136 = phi i32 [ -22, %29 ], [ %98, %81 ], [ %101, %100 ], [ %112, %103 ], [ %115, %114 ], [ %119, %117 ], [ %131, %121 ], [ -22, %12 ], [ -11, %20 ]
  %137 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 6
  store i32 0, ptr %137, align 4
  %138 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 7
  store i32 0, ptr %138, align 4
  %139 = getelementptr inbounds %struct.si2157_dev, ptr %7, i32 0, i32 5
  store i32 0, ptr %139, align 4
  br label %140

140:                                              ; preds = %135, %133
  %141 = phi i32 [ %136, %135 ], [ 0, %133 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @si2157_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @si2157_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @si2157_get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.si2157_dev, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -2
  store i32 %9, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2157_get_rf_strength(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca %struct.si2157_cmd, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 32, i1 false), !annotation !8
  store i16 66, ptr %3, align 4
  %6 = getelementptr inbounds %struct.si2157_cmd, ptr %3, i32 0, i32 1
  store i32 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.si2157_cmd, ptr %3, i32 0, i32 2
  store i32 12, ptr %7, align 4
  %8 = call fastcc i32 @si2157_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %11, align 1
  %12 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = mul nsw i32 %14, 1000
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %16, ptr %17, align 1
  %18 = call i8 @llvm.smax.i8(i8 %13, i8 -100)
  %19 = call i8 @llvm.smin.i8(i8 %18, i8 -20)
  %20 = add nsw i8 %19, 100
  %21 = zext i8 %20 to i32
  %22 = mul nuw nsw i32 %21, 65535
  %23 = udiv i32 %22, 80
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr %1, align 2
  br label %25

25:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2157_load_firmware(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.si2157_cmd, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %8 = call i32 @firmware_request_nowarn(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %7) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %11, align 4
  %13 = urem i32 %12, 17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef %1) #12
  br label %51

16:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.37, ptr noundef %1) #12
  %17 = load ptr, ptr %3, align 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.si2157_cmd, ptr %4, i32 0, i32 1
  %22 = getelementptr inbounds %struct.si2157_cmd, ptr %4, i32 0, i32 2
  %23 = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 1
  %26 = icmp ugt i8 %25, 30
  br i1 %26, label %39, label %40

27:                                               ; preds = %40
  %28 = icmp sgt i32 %44, 17
  br i1 %28, label %29, label %51

29:                                               ; preds = %27
  %30 = add nsw i32 %44, -17
  %31 = load ptr, ptr %3, align 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.firmware, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = sub i32 %32, %30
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = icmp ugt i8 %37, 30
  br i1 %38, label %39, label %40

39:                                               ; preds = %29, %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.38) #12
  br label %51

40:                                               ; preds = %29, %20
  %41 = phi i8 [ %37, %29 ], [ %25, %20 ]
  %42 = phi i32 [ %35, %29 ], [ 0, %20 ]
  %43 = phi ptr [ %34, %29 ], [ %24, %20 ]
  %44 = phi i32 [ %30, %29 ], [ %18, %20 ]
  %45 = zext i8 %41 to i32
  %46 = add i32 %42, 1
  %47 = getelementptr i8, ptr %43, i32 %46
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 1 %47, i32 %45, i1 false)
  store i32 %45, ptr %21, align 4
  store i32 1, ptr %22, align 4
  %48 = call fastcc i32 @si2157_cmd_execute(ptr noundef %6, ptr noundef nonnull %4)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %27, label %50

50:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39, i32 noundef %48) #12
  br label %51

51:                                               ; preds = %50, %39, %27, %16, %15
  %52 = phi i32 [ -22, %15 ], [ -22, %39 ], [ %48, %50 ], [ 0, %16 ], [ 0, %27 ]
  %53 = load ptr, ptr %3, align 4
  call void @release_firmware(ptr noundef %53) #10
  br label %54

54:                                               ; preds = %51, %2
  %55 = phi i32 [ %52, %51 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @si2157_tune_wait(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = icmp eq i8 %1, 0
  %7 = select i1 %6, i32 2, i32 4
  tail call void @mutex_lock(ptr noundef %5) #10
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = add i32 %8, 4
  %10 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1, i16 noundef zeroext 1) #10
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %59, label %12

12:                                               ; preds = %23, %2
  %13 = phi i32 [ %24, %23 ], [ %10, %2 ]
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = sub i32 %9, %16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %3, align 1
  %21 = and i8 %20, -127
  %22 = icmp eq i8 %21, -127
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  %24 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1, i16 noundef zeroext 1) #10
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %59, label %12

26:                                               ; preds = %19, %15
  %27 = load i32, ptr @tuner_lock_debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %26
  %30 = load i8, ptr %3, align 1
  %31 = and i8 %30, -127
  %32 = icmp eq i8 %31, -127
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = select i1 %6, i32 15, i32 3
  %36 = add i32 %34, %35
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = sub i32 %36, %37
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %54

40:                                               ; preds = %50, %33
  %41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1, i16 noundef zeroext 1) #10
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  %44 = icmp eq i32 %41, 1
  br i1 %44, label %45, label %59

45:                                               ; preds = %43
  %46 = load i8, ptr %3, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %7, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = sub i32 %36, %51
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %40, label %54

54:                                               ; preds = %50, %45, %33, %29, %26
  %55 = load i8, ptr %3, align 1
  %56 = and i8 %55, -64
  %57 = icmp eq i8 %56, -128
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  call void @mutex_unlock(ptr noundef %5) #10
  br label %62

59:                                               ; preds = %54, %43, %40, %23, %12, %2
  %60 = phi i32 [ -110, %54 ], [ %10, %2 ], [ -121, %43 ], [ %41, %40 ], [ %24, %23 ], [ -121, %12 ]
  call void @mutex_unlock(ptr noundef %5) #10
  %61 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.46, i32 noundef %60) #12
  br label %62

62:                                               ; preds = %59, %58
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

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
!9 = !{i64 625649, i64 625676}
!10 = !{i64 625989, i64 626016, i64 626050, i64 626071}
