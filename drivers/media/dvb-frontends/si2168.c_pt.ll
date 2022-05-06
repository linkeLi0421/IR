; ModuleID = '/llk/IR/drivers/media/dvb-frontends/si2168.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/si2168.c"
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
%struct.lock_class_key = type {}
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.si2168_cmd = type { [30 x i8], i32, i32 }
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
%struct.si2168_dev = type { %struct.mutex, ptr, %struct.dvb_frontend, i32, i32, i32, i32, ptr, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }

@si2168_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si2168\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author253 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [62 x i8] c"description=Silicon Labs Si2168 DVB-T/T2/C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [36 x i8] c"firmware=dvb-demod-si2168-a20-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [36 x i8] c"firmware=dvb-demod-si2168-a30-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [36 x i8] c"firmware=dvb-demod-si2168-b40-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [36 x i8] c"firmware=dvb-demod-si2168-d60-01.fw\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@si2168_driver = internal global %struct.i2c_driver { i32 0, ptr @si2168_probe, ptr @si2168_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si2168_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@si2168_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"&dev->i2c_mutex\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\C0\12\00\0C\00\0D\16\00\00\00\00\00\00\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"dvb-demod-si2168-a20-01.fw\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"dvb-demod-si2168-a30-01.fw\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"dvb-demod-si2168-b40-01.fw\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"dvb-demod-si2168-d60-01.fw\00", align 1
@si2168_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Silicon Labs Si2168\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 870000000, i32 62500, i32 0, i32 1000000, i32 7200000, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @si2168_init, ptr @si2168_sleep, ptr null, ptr @si2168_resume, ptr null, ptr null, ptr null, ptr @si2168_set_frontend, ptr @si2168_get_tune_settings, ptr null, ptr @si2168_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.9 = private unnamed_addr constant [52 x i8] c"Silicon Labs Si2168-%c%d%d successfully identified\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"firmware version: %c %d.%d.%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"probe failed = %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.12 = private unnamed_addr constant [4 x i8] c"\C0\0D\01\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\C0\0D\00\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\14\00\0D\10\E8\03\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\14\00\01\10\10\00\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"\88\02\02\02\02\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\89!\06\11\FF\98\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\89!\06\11\89\F0\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"\89!\06\11\89 \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"\12\08\04\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\14\00\0C\10\12\00\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\14\00\06\10$\00\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"\14\00\07\10\00$\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\14\00\0A\10\00\00\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"\14\00\0F\10\10\00\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\14\00\09\10\E3\08\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\14\00\08\10\D7\05\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\14\00\01\12\00\00\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\14\00\01\03\0C\00\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_license255], section "llvm.metadata"

@__mod_i2c__si2168_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @si2168_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @si2168_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @si2168_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2168_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.si2168_cmd, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1088) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %112, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %11, align 8
  tail call void @__mutex_init(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @si2168_probe.__key) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i32 13, i1 false) #9
  %12 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 13, ptr %12, align 8
  %13 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = call fastcc i32 @si2168_cmd_execute(ptr noundef %0, ptr noundef nonnull %3)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %110

16:                                               ; preds = %10
  store i64 81099977916483264, ptr %3, align 8
  store i32 8, ptr %12, align 8
  store i32 1, ptr %13, align 4
  %17 = call fastcc i32 @si2168_cmd_execute(ptr noundef %0, ptr noundef nonnull %3)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %110

19:                                               ; preds = %16
  store i8 2, ptr %3, align 8
  store i32 1, ptr %12, align 8
  store i32 13, ptr %13, align 4
  %20 = call fastcc i32 @si2168_cmd_execute(ptr noundef %0, ptr noundef nonnull %3)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %110

22:                                               ; preds = %19
  %23 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %26
  %32 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %31, %35
  %37 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 4
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = getelementptr inbounds %struct.si2168_dev, ptr %8, i32 0, i32 5
  store i32 %40, ptr %41, align 8
  switch i32 %40, label %110 [
    i32 1094988336, label %45
    i32 1094988592, label %42
    i32 1111766064, label %43
    i32 1145321008, label %44
  ]

42:                                               ; preds = %22
  br label %45

43:                                               ; preds = %22
  br label %45

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44, %43, %42, %22
  %46 = phi ptr [ @.str.8, %44 ], [ @.str.7, %43 ], [ @.str.6, %42 ], [ @.str.5, %22 ]
  %47 = getelementptr inbounds %struct.si2168_dev, ptr %8, i32 0, i32 7
  store ptr %46, ptr %47, align 8
  %48 = shl nuw nsw i32 %34, 16
  %49 = add nsw i32 %48, -3145728
  %50 = or i32 %49, %26
  %51 = shl nuw nsw i32 %39, 8
  %52 = add nsw i32 %51, -12288
  %53 = or i32 %50, %52
  %54 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 5
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %53, %56
  %58 = getelementptr inbounds %struct.si2168_dev, ptr %8, i32 0, i32 6
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = call ptr @i2c_mux_alloc(ptr noundef %60, ptr noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @si2168_select, ptr noundef nonnull @si2168_deselect) #9
  %62 = getelementptr inbounds %struct.si2168_dev, ptr %8, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = icmp eq ptr %61, null
  br i1 %63, label %110, label %64

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.i2c_mux_core, ptr %61, i32 0, i32 3
  store ptr %0, ptr %65, align 4
  %66 = load ptr, ptr %62, align 4
  %67 = call i32 @i2c_mux_add_adapter(ptr noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.si2168_dev, ptr %8, i32 0, i32 2
  %71 = getelementptr inbounds %struct.si2168_dev, ptr %8, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %71, ptr noundef nonnull align 4 dereferenceable(544) @si2168_ops, i32 544, i1 false)
  %72 = getelementptr inbounds %struct.si2168_dev, ptr %8, i32 0, i32 2, i32 3
  store ptr %0, ptr %72, align 8
  %73 = load ptr, ptr %62, align 4
  %74 = getelementptr inbounds %struct.i2c_mux_core, ptr %73, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.si2168_config, ptr %6, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  store ptr %75, ptr %77, align 4
  %78 = load ptr, ptr %6, align 4
  store ptr %70, ptr %78, align 4
  %79 = getelementptr inbounds %struct.si2168_config, ptr %6, i32 0, i32 2
  %80 = load i8, ptr %79, align 4
  %81 = getelementptr inbounds %struct.si2168_dev, ptr %8, i32 0, i32 8
  store i8 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.si2168_config, ptr %6, i32 0, i32 3
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr inbounds %struct.si2168_dev, ptr %8, i32 0, i32 9
  %85 = load i8, ptr %84, align 1
  %86 = shl i8 %83, 3
  %87 = and i8 %86, 8
  %88 = and i8 %85, -57
  %89 = or i8 %88, %87
  %90 = load i8, ptr %82, align 1
  %91 = shl i8 %90, 3
  %92 = and i8 %91, 16
  %93 = or i8 %92, %89
  %94 = shl i8 %90, 3
  %95 = and i8 %94, 32
  %96 = or i8 %93, %95
  store i8 %96, ptr %84, align 1
  %97 = load i32, ptr %58, align 4
  %98 = lshr i32 %97, 24
  %99 = lshr i32 %97, 16
  %100 = and i32 %99, 255
  %101 = lshr i32 %97, 8
  %102 = and i32 %101, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %98, i32 noundef %100, i32 noundef %102) #11
  %103 = load i32, ptr %58, align 4
  %104 = lshr i32 %103, 24
  %105 = lshr i32 %103, 16
  %106 = and i32 %105, 255
  %107 = lshr i32 %103, 8
  %108 = and i32 %107, 255
  %109 = and i32 %103, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %104, i32 noundef %106, i32 noundef %108, i32 noundef %109) #11
  br label %114

110:                                              ; preds = %64, %45, %22, %19, %16, %10
  %111 = phi i32 [ %14, %10 ], [ %17, %16 ], [ %20, %19 ], [ %67, %64 ], [ -19, %22 ], [ -12, %45 ]
  call void @kfree(ptr noundef nonnull %8) #9
  br label %112

112:                                              ; preds = %110, %2
  %113 = phi i32 [ %111, %110 ], [ -12, %2 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %113) #11
  br label %114

114:                                              ; preds = %112, %69
  %115 = phi i32 [ %113, %112 ], [ 0, %69 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2168_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 2, i32 1, i32 3
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 2, i32 3
  store ptr null, ptr %7, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2168_cmd_execute(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.si2168_cmd, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef %1, i32 noundef %6, i16 noundef zeroext 0) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct.si2168_cmd, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %14
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %19, 7
  br label %21

21:                                               ; preds = %32, %18
  %22 = phi i32 [ %27, %32 ], [ %16, %18 ]
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = sub i32 %20, %23
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef %1, i32 noundef %22, i16 noundef zeroext 1) #9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %15, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i8, ptr %1, align 4
  %34 = icmp sgt i8 %33, -1
  br i1 %34, label %21, label %37

35:                                               ; preds = %21
  %36 = load i8, ptr %1, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i8 [ %36, %35 ], [ %33, %32 ]
  %39 = and i8 %38, 64
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = icmp sgt i8 %38, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %41, %37, %29, %26, %11, %8
  %44 = phi i32 [ %9, %8 ], [ -121, %11 ], [ -121, %37 ], [ -110, %41 ], [ -121, %29 ], [ %27, %26 ]
  br label %45

45:                                               ; preds = %43, %41, %14
  %46 = phi i32 [ %44, %43 ], [ 0, %41 ], [ 0, %14 ]
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2168_select(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.si2168_cmd, align 4
  %4 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  %6 = getelementptr inbounds i8, ptr %3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(29) %6, i8 0, i32 29, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.12, i32 3, i1 false) #9
  %7 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2168_deselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.si2168_cmd, align 4
  %4 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  %6 = getelementptr inbounds i8, ptr %3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(29) %6, i8 0, i32 29, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i32 3, i1 false) #9
  %7 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2168_init(ptr nocapture noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.si2168_cmd, align 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  %8 = getelementptr inbounds i8, ptr %3, i32 13
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(19) %8, i8 0, i32 19, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i32 13, i1 false) #9
  %9 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 13, ptr %9, align 8
  %10 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %154

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.si2168_dev, ptr %7, i32 0, i32 9
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  store i64 81381452893652672, ptr %3, align 8
  store i32 8, ptr %9, align 8
  store i32 1, ptr %10, align 4
  %19 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %154

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 21474800) #9
  store i8 -123, ptr %3, align 8
  store i32 1, ptr %9, align 8
  store i32 1, ptr %10, align 4
  %23 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %140, label %154

25:                                               ; preds = %13
  store i64 81099977916483264, ptr %3, align 8
  store i32 8, ptr %9, align 8
  store i32 1, ptr %10, align 4
  %26 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %154

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.si2168_dev, ptr %7, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %32 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef %30, ptr noundef %31) #9
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %29, align 4
  br i1 %33, label %36, label %35

35:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.16, ptr noundef %34) #11
  br label %151

36:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.17, ptr noundef %34) #11
  %37 = load ptr, ptr %2, align 4
  %38 = load i32, ptr %37, align 4
  %39 = urem i32 %38, 17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.firmware, ptr %37, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp ugt i8 %44, 5
  br i1 %45, label %46, label %73

46:                                               ; preds = %41
  %47 = icmp sgt i32 %38, 0
  br i1 %47, label %48, label %100

48:                                               ; preds = %46
  %49 = load i8, ptr %43, align 1
  %50 = icmp ugt i8 %49, 30
  br i1 %50, label %98, label %63

51:                                               ; preds = %63
  %52 = icmp sgt i32 %66, 17
  br i1 %52, label %53, label %100

53:                                               ; preds = %51
  %54 = add nsw i32 %66, -17
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr inbounds %struct.firmware, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %55, align 4
  %59 = sub i32 %58, %54
  %60 = getelementptr i8, ptr %57, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = icmp ugt i8 %61, 30
  br i1 %62, label %98, label %63

63:                                               ; preds = %53, %48
  %64 = phi i8 [ %61, %53 ], [ %49, %48 ]
  %65 = phi i32 [ %59, %53 ], [ 0, %48 ]
  %66 = phi i32 [ %54, %53 ], [ %38, %48 ]
  %67 = phi ptr [ %57, %53 ], [ %43, %48 ]
  %68 = zext i8 %64 to i32
  %69 = add i32 %65, 1
  %70 = getelementptr i8, ptr %67, i32 %69
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %3, ptr align 1 %70, i32 %68, i1 false) #9
  store i32 %68, ptr %9, align 8
  store i32 1, ptr %10, align 4
  %71 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %51, label %98

73:                                               ; preds = %41, %36
  %74 = and i32 %38, 7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = icmp sgt i32 %38, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.firmware, ptr %37, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load i64, ptr %80, align 1
  store i64 %81, ptr %3, align 8
  store i32 8, ptr %9, align 8
  store i32 1, ptr %10, align 4
  %82 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %87, %78
  %85 = phi i32 [ %88, %87 ], [ %38, %78 ]
  %86 = icmp sgt i32 %85, 8
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = add nsw i32 %85, -8
  %89 = load ptr, ptr %2, align 4
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.firmware, ptr %89, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = sub i32 %90, %88
  %94 = getelementptr i8, ptr %92, i32 %93
  %95 = load i64, ptr %94, align 1
  store i64 %95, ptr %3, align 8
  store i32 8, ptr %9, align 8
  store i32 1, ptr %10, align 4
  %96 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %84, label %98

98:                                               ; preds = %87, %78, %73, %63, %53, %48
  %99 = phi i32 [ -22, %73 ], [ -22, %48 ], [ %82, %78 ], [ %71, %63 ], [ -22, %53 ], [ %96, %87 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.18, i32 noundef %99) #11
  br label %151

100:                                              ; preds = %84, %76, %51, %46
  %101 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %101) #9
  store i16 257, ptr %3, align 8
  store i32 2, ptr %9, align 8
  store i32 1, ptr %10, align 4
  %102 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %154

104:                                              ; preds = %100
  store i8 17, ptr %3, align 8
  store i32 1, ptr %9, align 8
  store i32 10, ptr %10, align 4
  %105 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %104
  %108 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 9
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl nuw i32 %110, 24
  %112 = add i32 %111, 1073741824
  %113 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 6
  %114 = load i8, ptr %113, align 2
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 16
  %117 = add nsw i32 %116, -3145728
  %118 = or i32 %117, %112
  %119 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 7
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = shl nuw nsw i32 %121, 8
  %123 = add nsw i32 %122, -12288
  %124 = or i32 %118, %123
  %125 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 8
  %126 = load i8, ptr %125, align 8
  %127 = zext i8 %126 to i32
  %128 = or i32 %124, %127
  %129 = getelementptr inbounds %struct.si2168_dev, ptr %7, i32 0, i32 6
  store i32 %128, ptr %129, align 4
  %130 = lshr i32 %124, 24
  %131 = lshr i32 %124, 16
  %132 = and i32 %131, 255
  %133 = lshr exact i32 %123, 8
  %134 = and i32 %133, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.10, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %127) #11
  %135 = call fastcc i32 @si2168_ts_bus_ctrl(ptr noundef %0, i32 noundef 1)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %107
  %138 = load i8, ptr %14, align 1
  %139 = or i8 %138, 6
  store i8 %139, ptr %14, align 1
  br label %140

140:                                              ; preds = %137, %21
  %141 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %141, align 1
  %142 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %142, align 1
  %143 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %143, align 4
  %144 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %144, align 1
  %145 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %145, align 1
  %146 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %146, align 1
  %147 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %147, align 2
  %148 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %148, align 1
  %149 = load i8, ptr %14, align 1
  %150 = or i8 %149, 1
  store i8 %150, ptr %14, align 1
  br label %154

151:                                              ; preds = %98, %35
  %152 = phi i32 [ %32, %35 ], [ %99, %98 ]
  %153 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %153) #9
  br label %154

154:                                              ; preds = %151, %140, %107, %104, %100, %25, %21, %18, %1
  %155 = phi i32 [ 0, %140 ], [ %11, %1 ], [ %19, %18 ], [ %23, %21 ], [ %26, %25 ], [ %152, %151 ], [ %102, %100 ], [ %105, %104 ], [ %135, %107 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2168_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.si2168_cmd, align 4
  %3 = alloca %struct.si2168_cmd, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 32, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.si2168_dev, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, -2
  store i8 %10, ptr %8, align 1
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 8
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false) #9, !annotation !8
  %14 = getelementptr inbounds %struct.si2168_dev, ptr %13, i32 0, i32 8
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i32 6, i1 false) #9
  %19 = getelementptr inbounds %struct.si2168_cmd, ptr %2, i32 0, i32 1
  store i32 6, ptr %19, align 4
  %20 = getelementptr inbounds %struct.si2168_cmd, ptr %2, i32 0, i32 2
  store i32 4, ptr %20, align 4
  br label %33

21:                                               ; preds = %1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i32 6, i1 false) #9
  %22 = getelementptr inbounds %struct.si2168_cmd, ptr %2, i32 0, i32 1
  store i32 6, ptr %22, align 4
  %23 = getelementptr inbounds %struct.si2168_cmd, ptr %2, i32 0, i32 2
  store i32 4, ptr %23, align 4
  %24 = call fastcc i32 @si2168_cmd_execute(ptr noundef %11, ptr noundef nonnull %2) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  br label %56

27:                                               ; preds = %21
  %28 = load i8, ptr %14, align 4
  %29 = and i8 %28, 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i32 6, i1 false) #9
  store i32 6, ptr %22, align 4
  store i32 4, ptr %23, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 4
  store i8 32, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %27, %18
  %34 = phi i8 [ 96, %31 ], [ 80, %27 ], [ 80, %18 ]
  %35 = getelementptr inbounds %struct.si2168_dev, ptr %13, i32 0, i32 9
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 4
  store i8 %34, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = call fastcc i32 @si2168_cmd_execute(ptr noundef %11, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.si2168_dev, ptr %7, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 1107558411
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8, ptr %8, align 1
  %50 = and i8 %49, -3
  store i8 %50, ptr %8, align 1
  br label %51

51:                                               ; preds = %48, %44
  store i8 19, ptr %3, align 4
  %52 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 0, ptr %53, align 4
  %54 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51, %41, %26
  %57 = phi i32 [ %42, %41 ], [ %54, %51 ], [ %24, %26 ]
  br label %58

58:                                               ; preds = %56, %51
  %59 = phi i32 [ %57, %56 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2168_resume(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.si2168_dev, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @si2168_init(ptr noundef %0)
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2168_set_frontend(ptr noundef %0) #2 {
  %2 = alloca %struct.si2168_cmd, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  %7 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %7, i8 0, i32 28, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.si2168_dev, ptr %6, i32 0, i32 9
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %143, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %143 [
    i32 3, label %17
    i32 1, label %15
    i32 16, label %16
  ]

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %15, %12
  %18 = phi i8 [ 112, %16 ], [ 48, %15 ], [ 32, %12 ]
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %143, label %22

22:                                               ; preds = %17
  %23 = icmp ult i32 %20, 2000001
  br i1 %23, label %37, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %20, 5000001
  br i1 %25, label %37, label %26

26:                                               ; preds = %24
  %27 = icmp ult i32 %20, 6000001
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = icmp ult i32 %20, 7000001
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = icmp ult i32 %20, 8000001
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = icmp ult i32 %20, 9000001
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = icmp ult i32 %20, 10000001
  %36 = select i1 %35, i8 10, i8 15
  br label %37

37:                                               ; preds = %34, %32, %30, %28, %26, %24, %22
  %38 = phi i8 [ 2, %22 ], [ 5, %24 ], [ 6, %26 ], [ 7, %28 ], [ 8, %30 ], [ 9, %32 ], [ %36, %34 ]
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = tail call i32 %40(ptr noundef %0) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %143

45:                                               ; preds = %42, %37
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.24, i32 5, i1 false) #9
  %46 = getelementptr inbounds %struct.si2168_cmd, ptr %2, i32 0, i32 1
  store i32 5, ptr %46, align 4
  %47 = getelementptr inbounds %struct.si2168_cmd, ptr %2, i32 0, i32 2
  store i32 5, ptr %47, align 4
  %48 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %143

50:                                               ; preds = %45
  %51 = load i32, ptr %13, align 4
  switch i32 %51, label %56 [
    i32 3, label %52
    i32 1, label %53
    i32 16, label %54
  ]

52:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.25, i32 6, i1 false) #9
  br label %55

53:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.26, i32 6, i1 false) #9
  br label %55

54:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.27, i32 6, i1 false) #9
  br label %55

55:                                               ; preds = %54, %53, %52
  store i32 6, ptr %46, align 4
  store i32 3, ptr %47, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %143

59:                                               ; preds = %56
  %60 = load i32, ptr %13, align 4
  %61 = icmp eq i32 %60, 16
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  store i8 82, ptr %2, align 4
  %63 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %64 = load i32, ptr %63, align 4
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 1
  store i8 %65, ptr %66, align 1
  %67 = icmp ne i32 %64, -1
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 2
  store i8 %68, ptr %69, align 2
  store i32 3, ptr %46, align 4
  store i32 1, ptr %47, align 4
  %70 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %143

72:                                               ; preds = %62, %59
  store i16 849, ptr %2, align 4
  store i32 2, ptr %46, align 4
  store i32 12, ptr %47, align 4
  %73 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %143

75:                                               ; preds = %72
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, i32 3, i1 false) #9
  store i32 3, ptr %46, align 4
  store i32 3, ptr %47, align 4
  %76 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %143

78:                                               ; preds = %75
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.30, i32 6, i1 false) #9
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %79 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %143

81:                                               ; preds = %78
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.31, i32 6, i1 false) #9
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %82 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %143

84:                                               ; preds = %81
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.32, i32 6, i1 false) #9
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %85 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %143

87:                                               ; preds = %84
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.33, i32 6, i1 false) #9
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %88 = or i8 %38, %18
  %89 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 4
  store i8 %88, ptr %89, align 4
  %90 = load i8, ptr %8, align 1
  %91 = and i8 %90, 32
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 5
  store i8 1, ptr %94, align 1
  br label %95

95:                                               ; preds = %93, %87
  %96 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %95
  %99 = load i32, ptr %13, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  store i32 285343764, ptr %2, align 4
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %102 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %103 = load i32, ptr %102, align 4
  %104 = udiv i32 %103, 1000
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %89, align 4
  %106 = lshr i32 %104, 8
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 5
  store i8 %107, ptr %108, align 1
  %109 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %101, %98
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.35, i32 6, i1 false) #9
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %112 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %143

114:                                              ; preds = %111
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.36, i32 6, i1 false) #9
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %115 = load i8, ptr %8, align 1
  %116 = shl i8 %115, 1
  %117 = and i8 %116, 16
  %118 = getelementptr inbounds [30 x i8], ptr %2, i32 0, i32 5
  %119 = xor i8 %117, 24
  store i8 %119, ptr %118, align 1
  %120 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %114
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.37, i32 6, i1 false) #9
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %123 = load i8, ptr %8, align 1
  %124 = shl i8 %123, 1
  %125 = and i8 %124, 16
  %126 = xor i8 %125, 21
  store i8 %126, ptr %118, align 1
  %127 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %122
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.38, i32 6, i1 false) #9
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %130 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.39, i32 6, i1 false) #9
  store i32 6, ptr %46, align 4
  store i32 4, ptr %47, align 4
  %133 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  store i8 -123, ptr %2, align 4
  store i32 1, ptr %46, align 4
  store i32 1, ptr %47, align 4
  %136 = call fastcc i32 @si2168_cmd_execute(ptr noundef %4, ptr noundef nonnull %2)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, ptr %13, align 4
  %140 = getelementptr inbounds %struct.si2168_dev, ptr %6, i32 0, i32 3
  store i32 %139, ptr %140, align 4
  %141 = call fastcc i32 @si2168_ts_bus_ctrl(ptr noundef %0, i32 noundef 1)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138, %135, %132, %129, %122, %114, %111, %101, %95, %84, %81, %78, %75, %72, %62, %56, %45, %42, %17, %12, %1
  %144 = phi i32 [ %43, %42 ], [ %48, %45 ], [ %57, %56 ], [ %70, %62 ], [ %73, %72 ], [ %76, %75 ], [ %79, %78 ], [ %82, %81 ], [ %85, %84 ], [ %96, %95 ], [ %109, %101 ], [ %112, %111 ], [ %120, %114 ], [ %127, %122 ], [ %130, %129 ], [ %133, %132 ], [ %136, %135 ], [ %141, %138 ], [ -11, %1 ], [ -22, %12 ], [ -22, %17 ]
  br label %145

145:                                              ; preds = %143, %138
  %146 = phi i32 [ %144, %143 ], [ 0, %138 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  ret i32 %146
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @si2168_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 900, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2168_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca %struct.si2168_cmd, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  store i32 0, ptr %1, align 4
  %8 = getelementptr inbounds %struct.si2168_dev, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %114, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %114 [
    i32 3, label %15
    i32 1, label %16
    i32 16, label %17
  ]

15:                                               ; preds = %12
  store i16 416, ptr %3, align 4
  br label %18

16:                                               ; preds = %12
  store i16 400, ptr %3, align 4
  br label %18

17:                                               ; preds = %12
  store i16 336, ptr %3, align 4
  br label %18

18:                                               ; preds = %17, %16, %15
  %19 = phi i32 [ 14, %17 ], [ 9, %16 ], [ 13, %15 ]
  %20 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 %19, ptr %21, align 4
  %22 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %114

24:                                               ; preds = %18
  %25 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 2
  %26 = load i8, ptr %25, align 2
  %27 = lshr i8 %26, 1
  %28 = and i8 %27, 3
  %29 = zext i8 %28 to i32
  switch i32 %29, label %30 [
    i32 1, label %32
    i32 3, label %33
  ]

30:                                               ; preds = %24
  %31 = load i32, ptr %1, align 4
  br label %34

32:                                               ; preds = %24
  store i32 3, ptr %1, align 4
  br label %34

33:                                               ; preds = %24
  store i32 31, ptr %1, align 4
  br label %34

34:                                               ; preds = %33, %32, %30
  %35 = phi i32 [ %31, %30 ], [ 31, %33 ], [ 3, %32 ]
  %36 = getelementptr inbounds %struct.si2168_dev, ptr %7, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %1, align 4
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = mul nuw nsw i32 %43, 250
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %45, ptr %46, align 1
  br label %47

47:                                               ; preds = %40, %34
  %48 = phi i8 [ 1, %40 ], [ 0, %34 ]
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %49, align 1
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 %48, ptr %50, align 1
  %51 = load i32, ptr %1, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %47
  store i16 130, ptr %3, align 4
  %55 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 3, ptr %56, align 4
  %57 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %114

59:                                               ; preds = %54
  %60 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = icmp ugt i8 %61, 7
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  switch i8 %61, label %64 [
    i8 7, label %71
    i8 6, label %65
    i8 5, label %66
    i8 4, label %67
    i8 3, label %68
    i8 2, label %69
    i8 1, label %70
  ]

64:                                               ; preds = %63
  br label %71

65:                                               ; preds = %63
  br label %71

66:                                               ; preds = %63
  br label %71

67:                                               ; preds = %63
  br label %71

68:                                               ; preds = %63
  br label %71

69:                                               ; preds = %63
  br label %71

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %69, %68, %67, %66, %65, %64, %63, %59
  %72 = phi i32 [ 1, %59 ], [ 10, %63 ], [ 100000000, %64 ], [ 100, %65 ], [ 1000, %66 ], [ 10000, %67 ], [ 100000, %68 ], [ 1000000, %69 ], [ 10000000, %70 ]
  %73 = load i8, ptr %25, align 2
  %74 = zext i8 %73 to i32
  %75 = mul i32 %72, %74
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %76, align 1
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %79 = load i64, ptr %78, align 1
  %80 = add i64 %79, %77
  store i64 %80, ptr %78, align 1
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %81, align 1
  %82 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %83 = load i64, ptr %82, align 1
  %84 = add i64 %83, 100000000
  store i64 %84, ptr %82, align 1
  br label %88

85:                                               ; preds = %47
  %86 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %86, align 1
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %87, align 1
  br label %88

88:                                               ; preds = %85, %71
  %89 = load i32, ptr %1, align 4
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %88
  store i16 388, ptr %3, align 4
  %93 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 2, ptr %93, align 4
  %94 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 3, ptr %94, align 4
  %95 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load i8, ptr %25, align 2
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 8
  %101 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %100, %103
  %105 = icmp eq i32 %104, 65535
  %106 = select i1 %105, i32 0, i32 %104
  %107 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %107, align 1
  %108 = zext i32 %106 to i64
  %109 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %110 = load i64, ptr %109, align 1
  %111 = add i64 %110, %108
  store i64 %111, ptr %109, align 1
  br label %114

112:                                              ; preds = %88
  %113 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %113, align 1
  br label %114

114:                                              ; preds = %112, %97, %92, %54, %18, %12, %2
  %115 = phi i32 [ 0, %112 ], [ 0, %97 ], [ %22, %18 ], [ %57, %54 ], [ %95, %92 ], [ -11, %2 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2168_ts_bus_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.si2168_cmd, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.si2168_dev, ptr %7, i32 0, i32 8
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 32
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i32 6, i1 false) #9
  %13 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 4, ptr %14, align 4
  br label %28

15:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i32 6, i1 false) #9
  %16 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 4, ptr %17, align 4
  %18 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = load i8, ptr %8, align 4
  %22 = and i8 %21, 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i32 6, i1 false) #9
  %23 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 1
  store i32 6, ptr %23, align 4
  %24 = getelementptr inbounds %struct.si2168_cmd, ptr %3, i32 0, i32 2
  store i32 4, ptr %24, align 4
  %25 = icmp eq i8 %22, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 4
  store i8 32, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %20, %12
  %29 = phi i8 [ %21, %26 ], [ %21, %20 ], [ %9, %12 ]
  %30 = phi i8 [ 32, %26 ], [ 16, %20 ], [ 16, %12 ]
  %31 = icmp eq i32 %1, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 4
  %34 = or i8 %30, %29
  store i8 %34, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i8 [ %30, %28 ], [ %34, %32 ]
  %37 = getelementptr inbounds %struct.si2168_dev, ptr %7, i32 0, i32 9
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 16
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds [30 x i8], ptr %3, i32 0, i32 4
  %43 = or i8 %36, 64
  store i8 %43, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = call fastcc i32 @si2168_cmd_execute(ptr noundef %5, ptr noundef nonnull %3)
  br label %46

46:                                               ; preds = %44, %15
  %47 = phi i32 [ %45, %44 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
