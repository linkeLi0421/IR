; ModuleID = '/llk/IR/drivers/media/dvb-frontends/mn88472.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mn88472.c"
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
%struct.mn88472_config = type { i32, i32, i32, i16, ptr, ptr }
%struct.mn88472_dev = type { [3 x ptr], [3 x ptr], %struct.dvb_frontend, i16, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.firmware = type { i32, ptr, ptr }

@mn88472_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mn88472\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author251 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [60 x i8] c"description=Panasonic MN88472 DVB-T/T2/C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [33 x i8] c"firmware=dvb-demod-mn88472-02.fw\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@mn88472_driver = internal global %struct.i2c_driver { i32 0, ptr @mn88472_probe, ptr @mn88472_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mn88472_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"mn88472\00", align 1
@mn88472_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"I2C registration failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"2nd I2C registration failed\0A\00", align 1
@mn88472_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Panasonic MN88472\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 1000000, i32 7200000, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @mn88472_init, ptr @mn88472_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mn88472_set_frontend, ptr @mn88472_get_tune_settings, ptr null, ptr @mn88472_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Panasonic MN88472 successfully identified\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"dvb-demod-mn88472-02.fw\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\E5\99\9A\1B\A9\1B\A9\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\BFUU\15k\15k\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\A4\00\00\0F,\0F,\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"\8F\80\00\08\EE\08\EE\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_license253], section "llvm.metadata"

@__mod_i2c__mn88472_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @mn88472_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @mn88472_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @mn88472_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88472_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1076) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %110, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mn88472_config, ptr %6, i32 0, i32 3
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  %14 = select i1 %13, i16 -1, i16 %12
  %15 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 3
  store i16 %14, ptr %15, align 8
  %16 = load i32, ptr %6, align 4
  %17 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mn88472_config, ptr %6, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 5
  %21 = trunc i32 %19 to i8
  %22 = load i8, ptr %20, align 8
  %23 = shl i8 %21, 1
  %24 = and i8 %23, 2
  %25 = and i8 %22, -3
  %26 = or i8 %24, %25
  store i8 %26, ptr %20, align 8
  %27 = getelementptr inbounds %struct.mn88472_config, ptr %6, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i8
  %30 = shl i8 %29, 2
  %31 = and i8 %30, 4
  %32 = and i8 %26, -5
  %33 = or i8 %31, %32
  store i8 %33, ptr %20, align 8
  store ptr %0, ptr %8, align 8
  %34 = tail call ptr @__regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @mn88472_probe.regmap_config, ptr noundef null, ptr noundef null) #11
  %35 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %10
  %38 = ptrtoint ptr %34 to i32
  br label %108

39:                                               ; preds = %10
  %40 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = tail call ptr @i2c_new_dummy_device(ptr noundef %41, i16 noundef zeroext 26) #11
  %43 = getelementptr [3 x ptr], ptr %8, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = ptrtoint ptr %42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #13
  br label %105

47:                                               ; preds = %39
  %48 = tail call ptr @__regmap_init_i2c(ptr noundef %42, ptr noundef nonnull @mn88472_probe.regmap_config, ptr noundef null, ptr noundef null) #11
  %49 = getelementptr %struct.mn88472_dev, ptr %8, i32 0, i32 1, i32 1
  store ptr %48, ptr %49, align 8
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = ptrtoint ptr %48 to i32
  br label %102

53:                                               ; preds = %47
  %54 = load ptr, ptr %43, align 4
  %55 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4, i32 8
  store ptr %8, ptr %55, align 8
  %56 = load ptr, ptr %40, align 8
  %57 = tail call ptr @i2c_new_dummy_device(ptr noundef %56, i16 noundef zeroext 28) #11
  %58 = getelementptr [3 x ptr], ptr %8, i32 0, i32 2
  store ptr %57, ptr %58, align 8
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = ptrtoint ptr %57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #13
  br label %99

62:                                               ; preds = %53
  %63 = tail call ptr @__regmap_init_i2c(ptr noundef %57, ptr noundef nonnull @mn88472_probe.regmap_config, ptr noundef null, ptr noundef null) #11
  %64 = getelementptr %struct.mn88472_dev, ptr %8, i32 0, i32 1, i32 2
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = ptrtoint ptr %63 to i32
  br label %96

68:                                               ; preds = %62
  %69 = load ptr, ptr %58, align 8
  %70 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4, i32 8
  store ptr %8, ptr %70, align 8
  %71 = load ptr, ptr %64, align 4
  %72 = call i32 @regmap_read(ptr noundef %71, i32 noundef 255, ptr noundef nonnull %3) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %68
  %75 = load i32, ptr %3, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = load ptr, ptr %64, align 4
  %79 = call i32 @regmap_write(ptr noundef %78, i32 noundef 5, i32 noundef 62) #11
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 2
  %83 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %83, ptr noundef nonnull align 4 dereferenceable(544) @mn88472_ops, i32 544, i1 false)
  %84 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 2, i32 3
  store ptr %0, ptr %84, align 8
  %85 = getelementptr inbounds %struct.mn88472_config, ptr %6, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  store ptr %82, ptr %86, align 4
  %87 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %87, align 8
  %88 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 2, i32 8, i32 42
  store i8 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 2, i32 8, i32 43
  store i8 1, ptr %89, align 1
  %90 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 2, i32 8, i32 48
  store i8 1, ptr %90, align 2
  %91 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 2, i32 8, i32 49
  store i8 1, ptr %91, align 1
  %92 = getelementptr inbounds %struct.mn88472_config, ptr %6, i32 0, i32 5
  store ptr @mn88472_get_dvb_frontend, ptr %92, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.3) #13
  br label %110

93:                                               ; preds = %77, %74, %68
  %94 = phi i32 [ %72, %68 ], [ %79, %77 ], [ -19, %74 ]
  %95 = load ptr, ptr %64, align 4
  call void @regmap_exit(ptr noundef %95) #11
  br label %96

96:                                               ; preds = %93, %66
  %97 = phi i32 [ %67, %66 ], [ %94, %93 ]
  %98 = load ptr, ptr %58, align 8
  call void @i2c_unregister_device(ptr noundef %98) #11
  br label %99

99:                                               ; preds = %96, %60
  %100 = phi i32 [ %61, %60 ], [ %97, %96 ]
  %101 = load ptr, ptr %49, align 8
  call void @regmap_exit(ptr noundef %101) #11
  br label %102

102:                                              ; preds = %99, %51
  %103 = phi i32 [ %52, %51 ], [ %100, %99 ]
  %104 = load ptr, ptr %43, align 4
  call void @i2c_unregister_device(ptr noundef %104) #11
  br label %105

105:                                              ; preds = %102, %45
  %106 = phi i32 [ %46, %45 ], [ %103, %102 ]
  %107 = load ptr, ptr %35, align 4
  call void @regmap_exit(ptr noundef %107) #11
  br label %108

108:                                              ; preds = %105, %37
  %109 = phi i32 [ %38, %37 ], [ %106, %105 ]
  call void @kfree(ptr noundef nonnull %8) #11
  br label %110

110:                                              ; preds = %108, %81, %2
  %111 = phi i32 [ 0, %81 ], [ %109, %108 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88472_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 1
  %5 = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @regmap_exit(ptr noundef %6) #11
  %7 = getelementptr [3 x ptr], ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @i2c_unregister_device(ptr noundef %8) #11
  %9 = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @regmap_exit(ptr noundef %10) #11
  %11 = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @i2c_unregister_device(ptr noundef %12) #11
  %13 = load ptr, ptr %4, align 4
  tail call void @regmap_exit(ptr noundef %13) #11
  tail call void @kfree(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @mn88472_get_dvb_frontend(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 2
  ret ptr %4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88472_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.mn88472_dev, ptr %7, i32 0, i32 1
  %9 = getelementptr %struct.mn88472_dev, ptr %7, i32 0, i32 1, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 5, i32 noundef 0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %113

13:                                               ; preds = %1
  %14 = load ptr, ptr %9, align 4
  %15 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 11, i32 noundef 0) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %113

17:                                               ; preds = %13
  %18 = load ptr, ptr %9, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 12, i32 noundef 0) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %113

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 245, ptr noundef nonnull %2) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %113

25:                                               ; preds = %21
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %90, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %31 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, ptr noundef %30) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #13
  br label %113

34:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #13
  %35 = load ptr, ptr %8, align 4
  %36 = call i32 @regmap_write(ptr noundef %35, i32 noundef 245, i32 noundef 3) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %110

38:                                               ; preds = %34
  %39 = load ptr, ptr %3, align 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mn88472_dev, ptr %7, i32 0, i32 3
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = add nsw i32 %45, -1
  %47 = call i32 @llvm.smin.i32(i32 %46, i32 %40)
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr inbounds %struct.firmware, ptr %39, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @regmap_bulk_write(ptr noundef %48, i32 noundef 246, ptr noundef %50, i32 noundef %47) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %62, %42
  %54 = phi i32 [ %51, %42 ], [ %73, %62 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.7, i32 noundef %54) #13
  br label %110

55:                                               ; preds = %62, %42
  %56 = phi i32 [ %60, %62 ], [ %40, %42 ]
  %57 = load i16, ptr %43, align 4
  %58 = zext i16 %57 to i32
  %59 = add i32 %56, 1
  %60 = sub i32 %59, %58
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load ptr, ptr %3, align 4
  %64 = load i32, ptr %63, align 4
  %65 = zext i16 %57 to i32
  %66 = add nsw i32 %65, -1
  %67 = call i32 @llvm.smin.i32(i32 %66, i32 %60)
  %68 = load ptr, ptr %8, align 4
  %69 = getelementptr inbounds %struct.firmware, ptr %63, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = sub i32 %64, %60
  %72 = getelementptr i8, ptr %70, i32 %71
  %73 = call i32 @regmap_bulk_write(ptr noundef %68, i32 noundef 246, ptr noundef %72, i32 noundef %67) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %55, label %53

75:                                               ; preds = %55, %38
  %76 = load ptr, ptr %8, align 4
  %77 = call i32 @regmap_read(ptr noundef %76, i32 noundef 248, ptr noundef nonnull %2) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load i32, ptr %2, align 4
  %81 = and i32 %80, 16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.8) #13
  br label %110

84:                                               ; preds = %79
  %85 = load ptr, ptr %8, align 4
  %86 = call i32 @regmap_write(ptr noundef %85, i32 noundef 245, i32 noundef 0) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %84
  %89 = load ptr, ptr %3, align 4
  call void @release_firmware(ptr noundef %89) #11
  br label %90

90:                                               ; preds = %88, %25
  %91 = getelementptr inbounds %struct.mn88472_dev, ptr %7, i32 0, i32 5
  %92 = load i8, ptr %91, align 4
  %93 = and i8 %92, 2
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 29, i32 0
  store i32 %95, ptr %2, align 4
  %96 = load ptr, ptr %9, align 4
  %97 = call i32 @regmap_write(ptr noundef %96, i32 noundef 8, i32 noundef %95) #11
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %90
  %100 = load i8, ptr %91, align 4
  %101 = and i8 %100, 4
  %102 = icmp eq i8 %101, 0
  %103 = select i1 %102, i32 225, i32 227
  store i32 %103, ptr %2, align 4
  %104 = load ptr, ptr %8, align 4
  %105 = call i32 @regmap_write(ptr noundef %104, i32 noundef 217, i32 noundef %103) #11
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i8, ptr %91, align 4
  %109 = or i8 %108, 1
  store i8 %109, ptr %91, align 4
  br label %113

110:                                              ; preds = %84, %83, %75, %53, %34
  %111 = phi i32 [ %36, %34 ], [ %54, %53 ], [ %77, %75 ], [ -22, %83 ], [ %86, %84 ]
  %112 = load ptr, ptr %3, align 4
  call void @release_firmware(ptr noundef %112) #11
  br label %113

113:                                              ; preds = %110, %107, %99, %90, %33, %21, %17, %13, %1
  %114 = phi i32 [ 0, %107 ], [ %11, %1 ], [ %15, %13 ], [ %19, %17 ], [ %23, %21 ], [ %31, %33 ], [ %111, %110 ], [ %97, %90 ], [ %105, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88472_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.mn88472_dev, ptr %5, i32 0, i32 1, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 12, i32 noundef 48) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 11, i32 noundef 48) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 5, i32 noundef 62) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10, %1
  %19 = phi i32 [ %8, %1 ], [ %12, %10 ], [ %16, %14 ]
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %19, %18 ], [ 0, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88472_set_frontend(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.mn88472_dev, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %215, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %215 [
    i32 3, label %15
    i32 16, label %14
    i32 1, label %26
  ]

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 2, %11 ], [ 3, %14 ]
  %17 = phi i32 [ 0, %11 ], [ 246, %14 ]
  %18 = phi i32 [ 31, %11 ], [ 1, %14 ]
  %19 = phi i32 [ 10, %11 ], [ 9, %14 ]
  %20 = phi i32 [ 72, %11 ], [ 70, %14 ]
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %215 [
    i32 5000000, label %26
    i32 6000000, label %23
    i32 7000000, label %24
    i32 8000000, label %25
  ]

23:                                               ; preds = %15
  br label %26

24:                                               ; preds = %15
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %24, %23, %15, %11
  %27 = phi i32 [ %20, %25 ], [ %20, %24 ], [ %20, %23 ], [ %20, %15 ], [ 72, %11 ]
  %28 = phi i32 [ %19, %25 ], [ %19, %24 ], [ %19, %23 ], [ %19, %15 ], [ 9, %11 ]
  %29 = phi i32 [ %18, %25 ], [ %18, %24 ], [ %18, %23 ], [ %18, %15 ], [ 23, %11 ]
  %30 = phi i32 [ %17, %25 ], [ %17, %24 ], [ %17, %23 ], [ %17, %15 ], [ 0, %11 ]
  %31 = phi i32 [ %16, %25 ], [ %16, %24 ], [ %16, %23 ], [ %16, %15 ], [ 4, %11 ]
  %32 = phi i32 [ 0, %25 ], [ 1, %24 ], [ 2, %23 ], [ 3, %15 ], [ 0, %11 ]
  %33 = phi i1 [ false, %25 ], [ false, %24 ], [ false, %23 ], [ false, %15 ], [ true, %11 ]
  %34 = phi ptr [ @.str.12, %25 ], [ @.str.11, %24 ], [ @.str.10, %23 ], [ @.str.9, %15 ], [ null, %11 ]
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = tail call i32 %36(ptr noundef %0) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %215

41:                                               ; preds = %38, %26
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %215, label %45

45:                                               ; preds = %41
  %46 = call i32 %43(ptr noundef %0, ptr noundef nonnull %2) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %215

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.mn88472_dev, ptr %6, i32 0, i32 1
  %50 = getelementptr %struct.mn88472_dev, ptr %6, i32 0, i32 1, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @regmap_write(ptr noundef %51, i32 noundef 0, i32 noundef 102) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %215

54:                                               ; preds = %48
  %55 = load ptr, ptr %50, align 4
  %56 = call i32 @regmap_write(ptr noundef %55, i32 noundef 1, i32 noundef 0) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %215

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 4
  %60 = call i32 @regmap_write(ptr noundef %59, i32 noundef 2, i32 noundef 1) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %215

62:                                               ; preds = %58
  %63 = load ptr, ptr %50, align 4
  %64 = call i32 @regmap_write(ptr noundef %63, i32 noundef 3, i32 noundef %31) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %215

66:                                               ; preds = %62
  %67 = load ptr, ptr %50, align 4
  %68 = call i32 @regmap_write(ptr noundef %67, i32 noundef 4, i32 noundef %32) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %215

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.mn88472_dev, ptr %6, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %2, align 4
  %74 = zext i32 %73 to i64
  %75 = shl nuw nsw i64 %74, 24
  %76 = lshr i32 %72, 1
  %77 = zext i32 %76 to i64
  %78 = add nuw nsw i64 %75, %77
  %79 = icmp ult i64 %78, 4294967296
  br i1 %79, label %80, label %85, !prof !9

80:                                               ; preds = %70
  %81 = trunc i64 %78 to i32
  %82 = udiv i32 %81, %72
  %83 = lshr i32 %82, 8
  %84 = lshr i32 %82, 16
  br label %93

85:                                               ; preds = %70
  %86 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %72, i64 %78) #14, !srcloc !10
  %87 = extractvalue { i64, i64 } %86, 1
  %88 = trunc i64 %87 to i32
  %89 = lshr i64 %87, 8
  %90 = trunc i64 %89 to i32
  %91 = lshr i64 %87, 16
  %92 = trunc i64 %91 to i32
  br label %93

93:                                               ; preds = %85, %80
  %94 = phi i32 [ %82, %80 ], [ %88, %85 ]
  %95 = phi i32 [ %83, %80 ], [ %90, %85 ]
  %96 = phi i32 [ %84, %80 ], [ %92, %85 ]
  %97 = load ptr, ptr %50, align 4
  %98 = and i32 %96, 255
  %99 = call i32 @regmap_write(ptr noundef %97, i32 noundef 16, i32 noundef %98) #11
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %215

101:                                              ; preds = %93
  %102 = load ptr, ptr %50, align 4
  %103 = and i32 %95, 255
  %104 = call i32 @regmap_write(ptr noundef %102, i32 noundef 17, i32 noundef %103) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %215

106:                                              ; preds = %101
  %107 = load ptr, ptr %50, align 4
  %108 = and i32 %94, 255
  %109 = call i32 @regmap_write(ptr noundef %107, i32 noundef 18, i32 noundef %108) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %215

111:                                              ; preds = %106
  br i1 %33, label %160, label %112

112:                                              ; preds = %111
  %113 = load ptr, ptr %50, align 4
  %114 = load i8, ptr %34, align 1
  %115 = zext i8 %114 to i32
  %116 = call i32 @regmap_write(ptr noundef %113, i32 noundef 19, i32 noundef %115) #11
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %215

118:                                              ; preds = %112
  %119 = load ptr, ptr %50, align 4
  %120 = getelementptr i8, ptr %34, i32 1
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = call i32 @regmap_write(ptr noundef %119, i32 noundef 20, i32 noundef %122) #11
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %215

125:                                              ; preds = %118
  %126 = load ptr, ptr %50, align 4
  %127 = getelementptr i8, ptr %34, i32 2
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = call i32 @regmap_write(ptr noundef %126, i32 noundef 21, i32 noundef %129) #11
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %215

132:                                              ; preds = %125
  %133 = load ptr, ptr %50, align 4
  %134 = getelementptr i8, ptr %34, i32 3
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = call i32 @regmap_write(ptr noundef %133, i32 noundef 22, i32 noundef %136) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %215

139:                                              ; preds = %132
  %140 = load ptr, ptr %50, align 4
  %141 = getelementptr i8, ptr %34, i32 4
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = call i32 @regmap_write(ptr noundef %140, i32 noundef 23, i32 noundef %143) #11
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %215

146:                                              ; preds = %139
  %147 = load ptr, ptr %50, align 4
  %148 = getelementptr i8, ptr %34, i32 5
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = call i32 @regmap_write(ptr noundef %147, i32 noundef 24, i32 noundef %150) #11
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %215

153:                                              ; preds = %146
  %154 = load ptr, ptr %50, align 4
  %155 = getelementptr i8, ptr %34, i32 6
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = call i32 @regmap_write(ptr noundef %154, i32 noundef 25, i32 noundef %157) #11
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %215

160:                                              ; preds = %153, %111
  %161 = load ptr, ptr %49, align 4
  %162 = call i32 @regmap_write(ptr noundef %161, i32 noundef 180, i32 noundef %30) #11
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %215

164:                                              ; preds = %160
  %165 = load ptr, ptr %49, align 4
  %166 = call i32 @regmap_write(ptr noundef %165, i32 noundef 205, i32 noundef %29) #11
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %215

168:                                              ; preds = %164
  %169 = load ptr, ptr %49, align 4
  %170 = call i32 @regmap_write(ptr noundef %169, i32 noundef 212, i32 noundef %28) #11
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %215

172:                                              ; preds = %168
  %173 = load ptr, ptr %49, align 4
  %174 = call i32 @regmap_write(ptr noundef %173, i32 noundef 214, i32 noundef %27) #11
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %215

176:                                              ; preds = %172
  %177 = load i32, ptr %12, align 4
  switch i32 %177, label %211 [
    i32 3, label %178
    i32 16, label %190
  ]

178:                                              ; preds = %176
  %179 = load ptr, ptr %49, align 4
  %180 = call i32 @regmap_write(ptr noundef %179, i32 noundef 7, i32 noundef 38) #11
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %215

182:                                              ; preds = %178
  %183 = load ptr, ptr %49, align 4
  %184 = call i32 @regmap_write(ptr noundef %183, i32 noundef 0, i32 noundef 186) #11
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %215

186:                                              ; preds = %182
  %187 = load ptr, ptr %49, align 4
  %188 = call i32 @regmap_write(ptr noundef %187, i32 noundef 1, i32 noundef 19) #11
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %211, label %215

190:                                              ; preds = %176
  %191 = load ptr, ptr %50, align 4
  %192 = call i32 @regmap_write(ptr noundef %191, i32 noundef 43, i32 noundef 19) #11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %190
  %195 = load ptr, ptr %50, align 4
  %196 = call i32 @regmap_write(ptr noundef %195, i32 noundef 79, i32 noundef 5) #11
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %194
  %199 = getelementptr %struct.mn88472_dev, ptr %6, i32 0, i32 1, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = call i32 @regmap_write(ptr noundef %200, i32 noundef 246, i32 noundef 5) #11
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %198
  %204 = load ptr, ptr %50, align 4
  %205 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, -1
  %208 = select i1 %207, i32 0, i32 %206
  %209 = call i32 @regmap_write(ptr noundef %204, i32 noundef 50, i32 noundef %208) #11
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %203, %186, %176
  %212 = load ptr, ptr %50, align 4
  %213 = call i32 @regmap_write(ptr noundef %212, i32 noundef 248, i32 noundef 159) #11
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211, %203, %198, %194, %190, %186, %182, %178, %172, %168, %164, %160, %153, %146, %139, %132, %125, %118, %112, %106, %101, %93, %66, %62, %58, %54, %48, %45, %41, %38, %15, %11, %1
  %216 = phi i32 [ %39, %38 ], [ %46, %45 ], [ %52, %48 ], [ %56, %54 ], [ %60, %58 ], [ %64, %62 ], [ %68, %66 ], [ %162, %160 ], [ %166, %164 ], [ %170, %168 ], [ %174, %172 ], [ %213, %211 ], [ %192, %190 ], [ %196, %194 ], [ %201, %198 ], [ %209, %203 ], [ %180, %178 ], [ %184, %182 ], [ %188, %186 ], [ -11, %1 ], [ -22, %11 ], [ -22, %15 ], [ -22, %41 ], [ %116, %112 ], [ %123, %118 ], [ %130, %125 ], [ %137, %132 ], [ %144, %139 ], [ %151, %146 ], [ %158, %153 ], [ %99, %93 ], [ %104, %101 ], [ %109, %106 ]
  br label %217

217:                                              ; preds = %215, %211
  %218 = phi i32 [ %216, %215 ], [ 0, %211 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %218
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mn88472_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88472_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [5 x i8], align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %227, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %227 [
    i32 3, label %16
    i32 16, label %25
    i32 1, label %38
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 127, ptr noundef nonnull %3) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %227

21:                                               ; preds = %16
  %22 = load i32, ptr %3, align 4
  %23 = and i32 %22, 15
  %24 = icmp ugt i32 %23, 8
  br i1 %24, label %47, label %70

25:                                               ; preds = %13
  %26 = getelementptr %struct.mn88472_dev, ptr %8, i32 0, i32 1, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 146, ptr noundef nonnull %3) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %227

30:                                               ; preds = %25
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, 15
  %33 = icmp ugt i32 %32, 12
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = icmp ugt i32 %32, 9
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = icmp ugt i32 %32, 6
  br i1 %37, label %47, label %70

38:                                               ; preds = %13
  %39 = getelementptr %struct.mn88472_dev, ptr %8, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @regmap_read(ptr noundef %40, i32 noundef 132, ptr noundef nonnull %3) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %227

43:                                               ; preds = %38
  %44 = load i32, ptr %3, align 4
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %43, %36, %34, %30, %21
  %48 = phi i32 [ 31, %21 ], [ 31, %30 ], [ 7, %34 ], [ 3, %36 ], [ 31, %43 ]
  store i32 %48, ptr %1, align 4
  %49 = getelementptr %struct.mn88472_dev, ptr %8, i32 0, i32 1, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @regmap_bulk_read(ptr noundef %50, i32 noundef 142, ptr noundef nonnull %4, i32 noundef 1) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %227

53:                                               ; preds = %47
  %54 = load ptr, ptr %49, align 4
  %55 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %56 = call i32 @regmap_bulk_read(ptr noundef %54, i32 noundef 143, ptr noundef %55, i32 noundef 1) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %227

58:                                               ; preds = %53
  %59 = load i8, ptr %4, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = load i8, ptr %55, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %61, %63
  %65 = lshr i32 %60, 2
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %67, align 1
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %68, ptr %69, align 1
  br label %72

70:                                               ; preds = %43, %36, %21
  store i32 0, ptr %1, align 4
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %71, align 1
  br label %72

72:                                               ; preds = %70, %58
  %73 = load i32, ptr %1, align 4
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %187, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %14, align 4
  switch i32 %77, label %187 [
    i32 3, label %78
    i32 16, label %104
    i32 1, label %148
  ]

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 @regmap_bulk_read(ptr noundef %80, i32 noundef 156, ptr noundef nonnull %4, i32 noundef 2) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %227

83:                                               ; preds = %78
  %84 = load i8, ptr %4, align 1
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %86, %89
  store i32 %90, ptr %3, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %83
  %93 = call i32 @intlog10(i32 noundef %90) #11
  %94 = zext i32 %93 to i64
  %95 = sub nsw i64 84162567, %94
  %96 = mul nsw i64 %95, 10000
  %97 = lshr i64 %96, 24
  %98 = trunc i64 %97 to i32
  br label %99

99:                                               ; preds = %92, %83
  %100 = phi i32 [ %98, %92 ], [ 0, %83 ]
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %103 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %101, ptr %103, align 1
  store i8 1, ptr %102, align 1
  br label %189

104:                                              ; preds = %76
  %105 = getelementptr %struct.mn88472_dev, ptr %8, i32 0, i32 1, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 @regmap_bulk_read(ptr noundef %106, i32 noundef 188, ptr noundef nonnull %4, i32 noundef 1) #11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %227

109:                                              ; preds = %104
  %110 = load ptr, ptr %105, align 4
  %111 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %112 = call i32 @regmap_bulk_read(ptr noundef %110, i32 noundef 189, ptr noundef %111, i32 noundef 1) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %227

114:                                              ; preds = %109
  %115 = load ptr, ptr %105, align 4
  %116 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 2
  %117 = call i32 @regmap_bulk_read(ptr noundef %115, i32 noundef 190, ptr noundef %116, i32 noundef 1) #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %227

119:                                              ; preds = %114
  %120 = load i8, ptr %111, align 1
  %121 = zext i8 %120 to i32
  %122 = shl nuw nsw i32 %121, 8
  %123 = load i8, ptr %116, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %122, %124
  store i32 %125, ptr %3, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %119
  %128 = load i8, ptr %4, align 1
  %129 = and i8 %128, 4
  %130 = icmp eq i8 %129, 0
  %131 = call i32 @intlog10(i32 noundef %125) #11
  %132 = zext i32 %131 to i64
  br i1 %130, label %138, label %133

133:                                              ; preds = %127
  %134 = sub nsw i64 60639904, %132
  %135 = mul nsw i64 %134, 10000
  %136 = lshr i64 %135, 24
  %137 = trunc i64 %136 to i32
  br label %143

138:                                              ; preds = %127
  %139 = sub nsw i64 84162567, %132
  %140 = mul nsw i64 %139, 10000
  %141 = lshr i64 %140, 24
  %142 = trunc i64 %141 to i32
  br label %143

143:                                              ; preds = %138, %133, %119
  %144 = phi i32 [ %137, %133 ], [ %142, %138 ], [ 0, %119 ]
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %147 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %145, ptr %147, align 1
  store i8 1, ptr %146, align 1
  br label %189

148:                                              ; preds = %76
  %149 = getelementptr %struct.mn88472_dev, ptr %8, i32 0, i32 1, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = call i32 @regmap_bulk_read(ptr noundef %150, i32 noundef 161, ptr noundef nonnull %4, i32 noundef 4) #11
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %227

153:                                              ; preds = %148
  %154 = load i8, ptr %4, align 1
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 8
  %157 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %156, %159
  %161 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 2
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = shl nuw nsw i32 %163, 8
  %165 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 3
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %164, %167
  %169 = icmp ne i32 %160, 0
  %170 = icmp ne i32 %168, 0
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %172, label %182

172:                                              ; preds = %153
  %173 = call i32 @intlog10(i32 noundef %160) #11
  %174 = zext i32 %173 to i64
  %175 = add nuw nsw i64 %174, 15151336
  %176 = call i32 @intlog10(i32 noundef %168) #11
  %177 = zext i32 %176 to i64
  %178 = sub nsw i64 %175, %177
  %179 = mul nsw i64 %178, 10000
  %180 = lshr i64 %179, 24
  %181 = trunc i64 %180 to i32
  br label %182

182:                                              ; preds = %172, %153
  %183 = phi i32 [ %181, %172 ], [ 0, %153 ]
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %186 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %184, ptr %186, align 1
  store i8 1, ptr %185, align 1
  br label %189

187:                                              ; preds = %76, %72
  %188 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %188, align 1
  br label %189

189:                                              ; preds = %187, %182, %143, %99
  %190 = load i32, ptr %1, align 4
  %191 = and i32 %190, 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %224, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.mn88472_dev, ptr %8, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = call i32 @regmap_bulk_read(ptr noundef %195, i32 noundef 225, ptr noundef nonnull %4, i32 noundef 4) #11
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %227

198:                                              ; preds = %193
  %199 = load i8, ptr %4, align 1
  %200 = zext i8 %199 to i32
  %201 = shl nuw nsw i32 %200, 8
  %202 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %201, %204
  %206 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 2
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = shl nuw nsw i32 %208, 8
  %210 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 3
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i32
  %213 = or i32 %209, %212
  %214 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %214, align 1
  %215 = zext i32 %205 to i64
  %216 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %217 = load i64, ptr %216, align 1
  %218 = add i64 %217, %215
  store i64 %218, ptr %216, align 1
  %219 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %219, align 1
  %220 = zext i32 %213 to i64
  %221 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %222 = load i64, ptr %221, align 1
  %223 = add i64 %222, %220
  store i64 %223, ptr %221, align 1
  br label %227

224:                                              ; preds = %189
  %225 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %225, align 1
  %226 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %226, align 1
  br label %227

227:                                              ; preds = %224, %198, %193, %148, %114, %109, %104, %78, %53, %47, %38, %25, %16, %13, %2
  %228 = phi i32 [ 0, %224 ], [ 0, %198 ], [ %41, %38 ], [ %81, %78 ], [ %196, %193 ], [ %151, %148 ], [ %28, %25 ], [ %19, %16 ], [ -11, %2 ], [ -22, %13 ], [ %107, %104 ], [ %112, %109 ], [ %117, %114 ], [ %51, %47 ], [ %56, %53 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %228
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148620326, i64 2148620606, i64 2148620940, i64 2148621274}
