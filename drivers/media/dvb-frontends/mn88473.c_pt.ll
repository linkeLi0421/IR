; ModuleID = '/llk/IR/drivers/media/dvb-frontends/mn88473.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mn88473.c"
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
%struct.mn88473_config = type { i16, i32, ptr }
%struct.mn88473_dev = type { [3 x ptr], [3 x ptr], %struct.dvb_frontend, i16, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.firmware = type { i32, ptr, ptr }

@mn88473_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mn88473\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author251 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [60 x i8] c"description=Panasonic MN88473 DVB-T/T2/C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [33 x i8] c"firmware=dvb-demod-mn88473-01.fw\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@mn88473_driver = internal global %struct.i2c_driver { i32 0, ptr @mn88473_probe, ptr @mn88473_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mn88473_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"mn88473\00", align 1
@mn88473_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"frontend pointer not defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"I2C registration failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"2nd I2C registration failed\0A\00", align 1
@mn88473_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Panasonic MN88473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 1000000, i32 7200000, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @mn88473_init, ptr @mn88473_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mn88473_set_frontend, ptr @mn88473_get_tune_settings, ptr null, ptr @mn88473_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Panasonic MN88473 successfully identified\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"dvb-demod-mn88473-01.fw\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"firmware parity check failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\E9UU\1C)\1C)\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\C8\00\00\17\0A\17\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"\AF\00\00\11\EC\11\EC\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\10\AB\0D\AE\1D\9D\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\BA\13\80\BA\91\DD\E7(\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\F4\08\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_license253], section "llvm.metadata"

@__mod_i2c__mn88473_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @mn88473_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @mn88473_driver) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @mn88473_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88473_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.mn88473_config, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #11
  br label %96

11:                                               ; preds = %2
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 1072) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %11
  %16 = load i16, ptr %6, align 4
  %17 = icmp eq i16 %16, 0
  %18 = select i1 %17, i16 -1, i16 %16
  %19 = getelementptr inbounds %struct.mn88473_dev, ptr %13, i32 0, i32 3
  store i16 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.mn88473_config, ptr %6, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 25000000, i32 %21
  %24 = getelementptr inbounds %struct.mn88473_dev, ptr %13, i32 0, i32 5
  store i32 %23, ptr %24, align 4
  store ptr %0, ptr %13, align 8
  %25 = tail call ptr @__regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @mn88473_probe.regmap_config, ptr noundef null, ptr noundef null) #10
  %26 = getelementptr inbounds %struct.mn88473_dev, ptr %13, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = ptrtoint ptr %25 to i32
  br label %94

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = tail call ptr @i2c_new_dummy_device(ptr noundef %32, i16 noundef zeroext 26) #10
  %34 = getelementptr [3 x ptr], ptr %13, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = ptrtoint ptr %33 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #11
  br label %91

38:                                               ; preds = %30
  %39 = tail call ptr @__regmap_init_i2c(ptr noundef %33, ptr noundef nonnull @mn88473_probe.regmap_config, ptr noundef null, ptr noundef null) #10
  %40 = getelementptr %struct.mn88473_dev, ptr %13, i32 0, i32 1, i32 1
  store ptr %39, ptr %40, align 8
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = ptrtoint ptr %39 to i32
  br label %87

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4, i32 8
  store ptr %13, ptr %45, align 8
  %46 = load ptr, ptr %31, align 8
  %47 = tail call ptr @i2c_new_dummy_device(ptr noundef %46, i16 noundef zeroext 28) #10
  %48 = getelementptr [3 x ptr], ptr %13, i32 0, i32 2
  store ptr %47, ptr %48, align 8
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = ptrtoint ptr %47 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #11
  br label %83

52:                                               ; preds = %44
  %53 = tail call ptr @__regmap_init_i2c(ptr noundef %47, ptr noundef nonnull @mn88473_probe.regmap_config, ptr noundef null, ptr noundef null) #10
  %54 = getelementptr %struct.mn88473_dev, ptr %13, i32 0, i32 1, i32 2
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = ptrtoint ptr %53 to i32
  br label %80

58:                                               ; preds = %52
  %59 = load ptr, ptr %48, align 8
  %60 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4, i32 8
  store ptr %13, ptr %60, align 8
  %61 = load ptr, ptr %54, align 4
  %62 = call i32 @regmap_read(ptr noundef %61, i32 noundef 255, ptr noundef nonnull %3) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load i32, ptr %3, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load ptr, ptr %54, align 4
  %69 = call i32 @regmap_write(ptr noundef %68, i32 noundef 5, i32 noundef 62) #10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.mn88473_dev, ptr %13, i32 0, i32 2
  %73 = getelementptr inbounds %struct.mn88473_dev, ptr %13, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %73, ptr noundef nonnull align 4 dereferenceable(544) @mn88473_ops, i32 544, i1 false)
  %74 = getelementptr inbounds %struct.mn88473_dev, ptr %13, i32 0, i32 2, i32 3
  store ptr %0, ptr %74, align 8
  %75 = load ptr, ptr %7, align 4
  store ptr %72, ptr %75, align 4
  %76 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %13, ptr %76, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.4) #11
  br label %96

77:                                               ; preds = %67, %64, %58
  %78 = phi i32 [ %62, %58 ], [ %69, %67 ], [ -19, %64 ]
  %79 = load ptr, ptr %54, align 4
  call void @regmap_exit(ptr noundef %79) #10
  br label %80

80:                                               ; preds = %77, %56
  %81 = phi i32 [ %57, %56 ], [ %78, %77 ]
  %82 = load ptr, ptr %48, align 8
  call void @i2c_unregister_device(ptr noundef %82) #10
  br label %83

83:                                               ; preds = %80, %50
  %84 = phi i32 [ %51, %50 ], [ %81, %80 ]
  %85 = load ptr, ptr %40, align 8
  call void @regmap_exit(ptr noundef %85) #10
  %86 = load ptr, ptr %34, align 4
  br label %87

87:                                               ; preds = %83, %42
  %88 = phi ptr [ %33, %42 ], [ %86, %83 ]
  %89 = phi i32 [ %43, %42 ], [ %84, %83 ]
  call void @i2c_unregister_device(ptr noundef %88) #10
  %90 = load ptr, ptr %26, align 4
  br label %91

91:                                               ; preds = %87, %36
  %92 = phi ptr [ %25, %36 ], [ %90, %87 ]
  %93 = phi i32 [ %37, %36 ], [ %89, %87 ]
  call void @regmap_exit(ptr noundef %92) #10
  br label %94

94:                                               ; preds = %91, %28
  %95 = phi i32 [ %29, %28 ], [ %93, %91 ]
  call void @kfree(ptr noundef nonnull %13) #10
  br label %96

96:                                               ; preds = %94, %71, %11, %10
  %97 = phi i32 [ 0, %71 ], [ -22, %10 ], [ %95, %94 ], [ -12, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88473_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 1
  %5 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @regmap_exit(ptr noundef %6) #10
  %7 = getelementptr [3 x ptr], ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @i2c_unregister_device(ptr noundef %8) #10
  %9 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @regmap_exit(ptr noundef %10) #10
  %11 = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @i2c_unregister_device(ptr noundef %12) #10
  %13 = load ptr, ptr %4, align 4
  tail call void @regmap_exit(ptr noundef %13) #10
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88473_init(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.mn88473_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 245, ptr noundef nonnull %2) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %102

12:                                               ; preds = %1
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %18 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef nonnull @.str.5, ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #11
  br label %102

21:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #11
  %22 = load ptr, ptr %8, align 4
  %23 = call i32 @regmap_write(ptr noundef %22, i32 noundef 245, i32 noundef 3) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %99

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mn88473_dev, ptr %7, i32 0, i32 3
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = add nsw i32 %32, -1
  %34 = call i32 @llvm.smin.i32(i32 %33, i32 %27)
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 246, ptr noundef %37, i32 noundef %34) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %50, %29
  %41 = phi i32 [ %38, %29 ], [ %60, %50 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %41) #11
  br label %99

42:                                               ; preds = %50, %29
  %43 = phi i32 [ %47, %50 ], [ %27, %29 ]
  %44 = load i16, ptr %30, align 4
  %45 = zext i16 %44 to i32
  %46 = add i32 %43, 1
  %47 = sub i32 %46, %45
  %48 = icmp sgt i32 %47, 0
  %49 = load ptr, ptr %3, align 4
  br i1 %48, label %50, label %62

50:                                               ; preds = %42
  %51 = load i32, ptr %49, align 4
  %52 = zext i16 %44 to i32
  %53 = add nsw i32 %52, -1
  %54 = call i32 @llvm.smin.i32(i32 %53, i32 %47)
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr inbounds %struct.firmware, ptr %49, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = sub i32 %51, %47
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = call i32 @regmap_bulk_write(ptr noundef %55, i32 noundef 246, ptr noundef %59, i32 noundef %54) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %42, label %40

62:                                               ; preds = %42, %25
  %63 = phi ptr [ %26, %25 ], [ %49, %42 ]
  call void @release_firmware(ptr noundef %63) #10
  %64 = load ptr, ptr %8, align 4
  %65 = call i32 @regmap_read(ptr noundef %64, i32 noundef 248, ptr noundef nonnull %2) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = load i32, ptr %2, align 4
  %69 = and i32 %68, 16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9) #11
  br label %102

72:                                               ; preds = %67
  %73 = load ptr, ptr %8, align 4
  %74 = call i32 @regmap_write(ptr noundef %73, i32 noundef 245, i32 noundef 0) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %72, %12
  %77 = getelementptr %struct.mn88473_dev, ptr %7, i32 0, i32 1, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 @regmap_write(ptr noundef %78, i32 noundef 9, i32 noundef 8) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load ptr, ptr %77, align 4
  %83 = call i32 @regmap_write(ptr noundef %82, i32 noundef 8, i32 noundef 29) #10
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.mn88473_dev, ptr %7, i32 0, i32 4
  store i8 1, ptr %86, align 2
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %88, align 1
  %89 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %89, align 1
  %90 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %90, align 1
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %91, align 4
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %92, align 1
  %93 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %93, align 1
  %94 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %94, align 1
  %95 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %95, align 2
  %96 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %96, align 1
  %97 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %97, align 1
  %98 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %98, align 1
  br label %102

99:                                               ; preds = %40, %21
  %100 = phi i32 [ %23, %21 ], [ %41, %40 ]
  %101 = load ptr, ptr %3, align 4
  call void @release_firmware(ptr noundef %101) #10
  br label %102

102:                                              ; preds = %99, %85, %81, %76, %72, %71, %62, %20, %1
  %103 = phi i32 [ 0, %85 ], [ %10, %1 ], [ %18, %20 ], [ %100, %99 ], [ %65, %62 ], [ -22, %71 ], [ %74, %72 ], [ %79, %76 ], [ %83, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88473_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mn88473_dev, ptr %5, i32 0, i32 4
  store i8 0, ptr %6, align 2
  %7 = getelementptr %struct.mn88473_dev, ptr %5, i32 0, i32 1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 5, i32 noundef 62) #10
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88473_set_frontend(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.mn88473_dev, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %262, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %262 [
    i32 3, label %14
    i32 16, label %13
    i32 1, label %22
  ]

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i32 [ 2, %10 ], [ 3, %13 ]
  %16 = phi i32 [ 35, %10 ], [ 59, %13 ]
  %17 = phi i32 [ 42, %10 ], [ 41, %13 ]
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %262 [
    i32 6000000, label %22
    i32 7000000, label %20
    i32 8000000, label %21
  ]

20:                                               ; preds = %14
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %20, %14, %10
  %23 = phi i32 [ %17, %21 ], [ %17, %20 ], [ %17, %14 ], [ 41, %10 ]
  %24 = phi i32 [ %16, %21 ], [ %16, %20 ], [ %16, %14 ], [ 59, %10 ]
  %25 = phi i32 [ %15, %21 ], [ %15, %20 ], [ %15, %14 ], [ 4, %10 ]
  %26 = phi ptr [ @.str.12, %21 ], [ @.str.11, %20 ], [ @.str.10, %14 ], [ @.str.13, %10 ]
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = tail call i32 %28(ptr noundef %0) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %262

33:                                               ; preds = %30, %22
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %262, label %37

37:                                               ; preds = %33
  %38 = call i32 %35(ptr noundef %0, ptr noundef nonnull %2) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %262

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.mn88473_dev, ptr %6, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %2, align 4
  %44 = zext i32 %43 to i64
  %45 = shl nuw nsw i64 %44, 24
  %46 = lshr i32 %42, 1
  %47 = zext i32 %46 to i64
  %48 = add nuw nsw i64 %45, %47
  %49 = icmp ult i64 %48, 4294967296
  br i1 %49, label %50, label %55, !prof !10

50:                                               ; preds = %40
  %51 = trunc i64 %48 to i32
  %52 = udiv i32 %51, %42
  %53 = lshr i32 %52, 8
  %54 = lshr i32 %52, 16
  br label %63

55:                                               ; preds = %40
  %56 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %42, i64 %48) #13, !srcloc !11
  %57 = extractvalue { i64, i64 } %56, 1
  %58 = trunc i64 %57 to i32
  %59 = lshr i64 %57, 8
  %60 = trunc i64 %59 to i32
  %61 = lshr i64 %57, 16
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %55, %50
  %64 = phi i32 [ %52, %50 ], [ %58, %55 ]
  %65 = phi i32 [ %53, %50 ], [ %60, %55 ]
  %66 = phi i32 [ %54, %50 ], [ %62, %55 ]
  %67 = getelementptr inbounds %struct.mn88473_dev, ptr %6, i32 0, i32 1
  %68 = getelementptr %struct.mn88473_dev, ptr %6, i32 0, i32 1, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 @regmap_write(ptr noundef %69, i32 noundef 5, i32 noundef 0) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %262

72:                                               ; preds = %63
  %73 = load ptr, ptr %68, align 4
  %74 = call i32 @regmap_write(ptr noundef %73, i32 noundef 251, i32 noundef 19) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %262

76:                                               ; preds = %72
  %77 = load ptr, ptr %68, align 4
  %78 = call i32 @regmap_write(ptr noundef %77, i32 noundef 239, i32 noundef 19) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %262

80:                                               ; preds = %76
  %81 = load ptr, ptr %68, align 4
  %82 = call i32 @regmap_write(ptr noundef %81, i32 noundef 249, i32 noundef 19) #10
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %262

84:                                               ; preds = %80
  %85 = load ptr, ptr %68, align 4
  %86 = call i32 @regmap_write(ptr noundef %85, i32 noundef 0, i32 noundef 24) #10
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %262

88:                                               ; preds = %84
  %89 = load ptr, ptr %68, align 4
  %90 = call i32 @regmap_write(ptr noundef %89, i32 noundef 1, i32 noundef 1) #10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %262

92:                                               ; preds = %88
  %93 = load ptr, ptr %68, align 4
  %94 = call i32 @regmap_write(ptr noundef %93, i32 noundef 2, i32 noundef 33) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %262

96:                                               ; preds = %92
  %97 = load ptr, ptr %68, align 4
  %98 = call i32 @regmap_write(ptr noundef %97, i32 noundef 3, i32 noundef %25) #10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %262

100:                                              ; preds = %96
  %101 = load ptr, ptr %68, align 4
  %102 = call i32 @regmap_write(ptr noundef %101, i32 noundef 11, i32 noundef 0) #10
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %262

104:                                              ; preds = %100
  %105 = load ptr, ptr %68, align 4
  %106 = and i32 %66, 255
  %107 = call i32 @regmap_write(ptr noundef %105, i32 noundef 16, i32 noundef %106) #10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %262

109:                                              ; preds = %104
  %110 = load ptr, ptr %68, align 4
  %111 = and i32 %65, 255
  %112 = call i32 @regmap_write(ptr noundef %110, i32 noundef 17, i32 noundef %111) #10
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %262

114:                                              ; preds = %109
  %115 = load ptr, ptr %68, align 4
  %116 = and i32 %64, 255
  %117 = call i32 @regmap_write(ptr noundef %115, i32 noundef 18, i32 noundef %116) #10
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %262

119:                                              ; preds = %114
  %120 = load i32, ptr %11, align 4
  switch i32 %120, label %174 [
    i32 3, label %121
    i32 16, label %121
    i32 1, label %169
  ]

121:                                              ; preds = %119, %119
  %122 = load ptr, ptr %68, align 4
  %123 = load i8, ptr %26, align 1
  %124 = zext i8 %123 to i32
  %125 = call i32 @regmap_write(ptr noundef %122, i32 noundef 19, i32 noundef %124) #10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %262

127:                                              ; preds = %121
  %128 = load ptr, ptr %68, align 4
  %129 = getelementptr i8, ptr %26, i32 1
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = call i32 @regmap_write(ptr noundef %128, i32 noundef 20, i32 noundef %131) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %262

134:                                              ; preds = %127
  %135 = load ptr, ptr %68, align 4
  %136 = getelementptr i8, ptr %26, i32 2
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = call i32 @regmap_write(ptr noundef %135, i32 noundef 21, i32 noundef %138) #10
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %262

141:                                              ; preds = %134
  %142 = load ptr, ptr %68, align 4
  %143 = getelementptr i8, ptr %26, i32 3
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = call i32 @regmap_write(ptr noundef %142, i32 noundef 22, i32 noundef %145) #10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %262

148:                                              ; preds = %141
  %149 = load ptr, ptr %68, align 4
  %150 = getelementptr i8, ptr %26, i32 4
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = call i32 @regmap_write(ptr noundef %149, i32 noundef 23, i32 noundef %152) #10
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %262

155:                                              ; preds = %148
  %156 = load ptr, ptr %68, align 4
  %157 = getelementptr i8, ptr %26, i32 5
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = call i32 @regmap_write(ptr noundef %156, i32 noundef 24, i32 noundef %159) #10
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %262

162:                                              ; preds = %155
  %163 = load ptr, ptr %68, align 4
  %164 = getelementptr i8, ptr %26, i32 6
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = call i32 @regmap_write(ptr noundef %163, i32 noundef 25, i32 noundef %166) #10
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %174, label %262

169:                                              ; preds = %119
  %170 = getelementptr %struct.mn88473_dev, ptr %6, i32 0, i32 1, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = call i32 @regmap_bulk_write(ptr noundef %171, i32 noundef 16, ptr noundef nonnull %26, i32 noundef 6) #10
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %262

174:                                              ; preds = %169, %162, %119
  %175 = load ptr, ptr %68, align 4
  %176 = call i32 @regmap_write(ptr noundef %175, i32 noundef 45, i32 noundef %24) #10
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %262

178:                                              ; preds = %174
  %179 = load ptr, ptr %68, align 4
  %180 = call i32 @regmap_write(ptr noundef %179, i32 noundef 46, i32 noundef 0) #10
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %262

182:                                              ; preds = %178
  %183 = load ptr, ptr %68, align 4
  %184 = call i32 @regmap_write(ptr noundef %183, i32 noundef 86, i32 noundef 13) #10
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %262

186:                                              ; preds = %182
  %187 = load ptr, ptr %67, align 4
  %188 = call i32 @regmap_bulk_write(ptr noundef %187, i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef 8) #10
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %262

190:                                              ; preds = %186
  %191 = load ptr, ptr %67, align 4
  %192 = call i32 @regmap_write(ptr noundef %191, i32 noundef 10, i32 noundef 26) #10
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %262

194:                                              ; preds = %190
  %195 = load ptr, ptr %67, align 4
  %196 = call i32 @regmap_write(ptr noundef %195, i32 noundef 19, i32 noundef 31) #10
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %262

198:                                              ; preds = %194
  %199 = load ptr, ptr %67, align 4
  %200 = call i32 @regmap_write(ptr noundef %199, i32 noundef 25, i32 noundef 3) #10
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %262

202:                                              ; preds = %198
  %203 = load ptr, ptr %67, align 4
  %204 = call i32 @regmap_write(ptr noundef %203, i32 noundef 29, i32 noundef 176) #10
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %262

206:                                              ; preds = %202
  %207 = load ptr, ptr %67, align 4
  %208 = call i32 @regmap_write(ptr noundef %207, i32 noundef 42, i32 noundef 114) #10
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %262

210:                                              ; preds = %206
  %211 = load ptr, ptr %67, align 4
  %212 = call i32 @regmap_write(ptr noundef %211, i32 noundef 45, i32 noundef 0) #10
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %262

214:                                              ; preds = %210
  %215 = load ptr, ptr %67, align 4
  %216 = call i32 @regmap_write(ptr noundef %215, i32 noundef 60, i32 noundef 0) #10
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %262

218:                                              ; preds = %214
  %219 = load ptr, ptr %67, align 4
  %220 = call i32 @regmap_write(ptr noundef %219, i32 noundef 63, i32 noundef 248) #10
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %262

222:                                              ; preds = %218
  %223 = load ptr, ptr %67, align 4
  %224 = call i32 @regmap_bulk_write(ptr noundef %223, i32 noundef 64, ptr noundef nonnull @.str.15, i32 noundef 2) #10
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %262

226:                                              ; preds = %222
  %227 = load ptr, ptr %67, align 4
  %228 = call i32 @regmap_write(ptr noundef %227, i32 noundef 210, i32 noundef %23) #10
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %262

230:                                              ; preds = %226
  %231 = load ptr, ptr %67, align 4
  %232 = call i32 @regmap_write(ptr noundef %231, i32 noundef 212, i32 noundef 85) #10
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %262

234:                                              ; preds = %230
  %235 = getelementptr %struct.mn88473_dev, ptr %6, i32 0, i32 1, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = call i32 @regmap_write(ptr noundef %236, i32 noundef 190, i32 noundef 8) #10
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %262

239:                                              ; preds = %234
  %240 = load ptr, ptr %67, align 4
  %241 = call i32 @regmap_write(ptr noundef %240, i32 noundef 178, i32 noundef 55) #10
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %262

243:                                              ; preds = %239
  %244 = load ptr, ptr %67, align 4
  %245 = call i32 @regmap_write(ptr noundef %244, i32 noundef 215, i32 noundef 4) #10
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %262

247:                                              ; preds = %243
  %248 = load i32, ptr %11, align 4
  %249 = icmp eq i32 %248, 16
  br i1 %249, label %250, label %258

250:                                              ; preds = %247
  %251 = load ptr, ptr %68, align 4
  %252 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, -1
  %255 = select i1 %254, i32 0, i32 %253
  %256 = call i32 @regmap_write(ptr noundef %251, i32 noundef 54, i32 noundef %255) #10
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %250, %247
  %259 = load ptr, ptr %68, align 4
  %260 = call i32 @regmap_write(ptr noundef %259, i32 noundef 248, i32 noundef 159) #10
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %258, %250, %243, %239, %234, %230, %226, %222, %218, %214, %210, %206, %202, %198, %194, %190, %186, %182, %178, %174, %169, %162, %155, %148, %141, %134, %127, %121, %114, %109, %104, %100, %96, %92, %88, %84, %80, %76, %72, %63, %37, %33, %30, %14, %10, %1
  %263 = phi i32 [ %31, %30 ], [ %38, %37 ], [ %70, %63 ], [ %74, %72 ], [ %78, %76 ], [ %82, %80 ], [ %86, %84 ], [ %90, %88 ], [ %94, %92 ], [ %98, %96 ], [ %102, %100 ], [ %176, %174 ], [ %180, %178 ], [ %184, %182 ], [ %188, %186 ], [ %192, %190 ], [ %196, %194 ], [ %200, %198 ], [ %204, %202 ], [ %208, %206 ], [ %212, %210 ], [ %216, %214 ], [ %220, %218 ], [ %224, %222 ], [ %228, %226 ], [ %232, %230 ], [ %237, %234 ], [ %241, %239 ], [ %245, %243 ], [ %256, %250 ], [ %260, %258 ], [ %172, %169 ], [ -11, %1 ], [ -22, %10 ], [ -22, %14 ], [ -22, %33 ], [ %125, %121 ], [ %132, %127 ], [ %139, %134 ], [ %146, %141 ], [ %153, %148 ], [ %160, %155 ], [ %167, %162 ], [ %107, %104 ], [ %112, %109 ], [ %117, %114 ]
  br label %264

264:                                              ; preds = %262, %258
  %265 = phi i32 [ %263, %262 ], [ 0, %258 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %265
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mn88473_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88473_read_status(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [5 x i8], align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.mn88473_dev, ptr %8, i32 0, i32 4
  %10 = load i8, ptr %9, align 2, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %294, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %294 [
    i32 3, label %15
    i32 16, label %29
    i32 1, label %45
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.mn88473_dev, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 98, ptr noundef nonnull %3) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %294

20:                                               ; preds = %15
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 160
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = and i32 %21, 15
  %26 = icmp ugt i32 %25, 8
  br i1 %26, label %62, label %27

27:                                               ; preds = %24
  %28 = icmp ugt i32 %25, 2
  br i1 %28, label %62, label %64

29:                                               ; preds = %12
  %30 = getelementptr %struct.mn88473_dev, ptr %8, i32 0, i32 1, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @regmap_read(ptr noundef %31, i32 noundef 139, ptr noundef nonnull %3) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %294

34:                                               ; preds = %29
  %35 = load i32, ptr %3, align 4
  %36 = and i32 %35, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = and i32 %35, 15
  %40 = icmp ugt i32 %39, 12
  br i1 %40, label %62, label %41

41:                                               ; preds = %38
  %42 = icmp ugt i32 %39, 9
  br i1 %42, label %62, label %43

43:                                               ; preds = %41
  %44 = icmp ugt i32 %39, 6
  br i1 %44, label %62, label %64

45:                                               ; preds = %12
  %46 = getelementptr %struct.mn88473_dev, ptr %8, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 @regmap_read(ptr noundef %47, i32 noundef 133, ptr noundef nonnull %3) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %294

50:                                               ; preds = %45
  %51 = load i32, ptr %3, align 4
  %52 = and i32 %51, 64
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load ptr, ptr %46, align 4
  %56 = call i32 @regmap_read(ptr noundef %55, i32 noundef 137, ptr noundef nonnull %3) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %294

58:                                               ; preds = %54
  %59 = load i32, ptr %3, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %50, %43, %41, %38, %34, %27, %24, %20
  %63 = phi i32 [ 31, %24 ], [ 3, %27 ], [ 0, %20 ], [ 31, %38 ], [ 7, %41 ], [ 3, %43 ], [ 0, %34 ], [ 31, %58 ], [ 0, %50 ]
  store i32 %63, ptr %1, align 4
  br label %64

64:                                               ; preds = %62, %58, %43, %27
  %65 = load i32, ptr %1, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.mn88473_dev, ptr %8, i32 0, i32 1, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 @regmap_bulk_read(ptr noundef %70, i32 noundef 134, ptr noundef nonnull %4, i32 noundef 1) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %294

73:                                               ; preds = %68
  %74 = load ptr, ptr %69, align 4
  %75 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %76 = call i32 @regmap_bulk_read(ptr noundef %74, i32 noundef 135, ptr noundef %75, i32 noundef 1) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %294

78:                                               ; preds = %73
  %79 = load i8, ptr %4, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 8
  %82 = load i8, ptr %75, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %81, %83
  %85 = lshr i32 %80, 2
  %86 = or i32 %84, %85
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %87, align 1
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %88, ptr %89, align 1
  br label %92

90:                                               ; preds = %64
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %91, align 1
  br label %92

92:                                               ; preds = %90, %78
  %93 = load i32, ptr %1, align 4
  %94 = and i32 %93, 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %207, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %13, align 4
  switch i32 %97, label %207 [
    i32 3, label %98
    i32 16, label %124
    i32 1, label %168
  ]

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.mn88473_dev, ptr %8, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 @regmap_bulk_read(ptr noundef %100, i32 noundef 143, ptr noundef nonnull %4, i32 noundef 2) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %294

103:                                              ; preds = %98
  %104 = load i8, ptr %4, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 8
  %107 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %106, %109
  store i32 %110, ptr %3, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %103
  %113 = call i32 @intlog10(i32 noundef %110) #10
  %114 = zext i32 %113 to i64
  %115 = sub nsw i64 84162567, %114
  %116 = mul nsw i64 %115, 10000
  %117 = lshr i64 %116, 24
  %118 = trunc i64 %117 to i32
  br label %119

119:                                              ; preds = %112, %103
  %120 = phi i32 [ %118, %112 ], [ 0, %103 ]
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %123 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %121, ptr %123, align 1
  store i8 1, ptr %122, align 1
  br label %209

124:                                              ; preds = %96
  %125 = getelementptr %struct.mn88473_dev, ptr %8, i32 0, i32 1, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = call i32 @regmap_bulk_read(ptr noundef %126, i32 noundef 183, ptr noundef nonnull %4, i32 noundef 1) #10
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %294

129:                                              ; preds = %124
  %130 = load ptr, ptr %125, align 4
  %131 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %132 = call i32 @regmap_bulk_read(ptr noundef %130, i32 noundef 184, ptr noundef %131, i32 noundef 1) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %294

134:                                              ; preds = %129
  %135 = load ptr, ptr %125, align 4
  %136 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 2
  %137 = call i32 @regmap_bulk_read(ptr noundef %135, i32 noundef 185, ptr noundef %136, i32 noundef 1) #10
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %294

139:                                              ; preds = %134
  %140 = load i8, ptr %131, align 1
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = load i8, ptr %136, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  store i32 %145, ptr %3, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %139
  %148 = load i8, ptr %4, align 1
  %149 = and i8 %148, 4
  %150 = icmp eq i8 %149, 0
  %151 = call i32 @intlog10(i32 noundef %145) #10
  %152 = zext i32 %151 to i64
  br i1 %150, label %158, label %153

153:                                              ; preds = %147
  %154 = sub nsw i64 60639904, %152
  %155 = mul nsw i64 %154, 10000
  %156 = lshr i64 %155, 24
  %157 = trunc i64 %156 to i32
  br label %163

158:                                              ; preds = %147
  %159 = sub nsw i64 84162567, %152
  %160 = mul nsw i64 %159, 10000
  %161 = lshr i64 %160, 24
  %162 = trunc i64 %161 to i32
  br label %163

163:                                              ; preds = %158, %153, %139
  %164 = phi i32 [ %157, %153 ], [ %162, %158 ], [ 0, %139 ]
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %167 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %165, ptr %167, align 1
  store i8 1, ptr %166, align 1
  br label %209

168:                                              ; preds = %96
  %169 = getelementptr %struct.mn88473_dev, ptr %8, i32 0, i32 1, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = call i32 @regmap_bulk_read(ptr noundef %170, i32 noundef 161, ptr noundef nonnull %4, i32 noundef 4) #10
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %294

173:                                              ; preds = %168
  %174 = load i8, ptr %4, align 1
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 8
  %177 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %176, %179
  %181 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 2
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 8
  %185 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 3
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %184, %187
  %189 = icmp ne i32 %180, 0
  %190 = icmp ne i32 %188, 0
  %191 = select i1 %189, i1 %190, i1 false
  br i1 %191, label %192, label %202

192:                                              ; preds = %173
  %193 = call i32 @intlog10(i32 noundef %180) #10
  %194 = zext i32 %193 to i64
  %195 = add nuw nsw i64 %194, 15151336
  %196 = call i32 @intlog10(i32 noundef %188) #10
  %197 = zext i32 %196 to i64
  %198 = sub nsw i64 %195, %197
  %199 = mul nsw i64 %198, 10000
  %200 = lshr i64 %199, 24
  %201 = trunc i64 %200 to i32
  br label %202

202:                                              ; preds = %192, %173
  %203 = phi i32 [ %201, %192 ], [ 0, %173 ]
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %206 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %204, ptr %206, align 1
  store i8 1, ptr %205, align 1
  br label %209

207:                                              ; preds = %96, %92
  %208 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %208, align 1
  br label %209

209:                                              ; preds = %207, %202, %163, %119
  %210 = load i32, ptr %1, align 4
  %211 = and i32 %210, 16
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %253, label %213

213:                                              ; preds = %209
  %214 = load i32, ptr %13, align 4
  switch i32 %214, label %253 [
    i32 3, label %215
    i32 1, label %215
  ]

215:                                              ; preds = %213, %213
  %216 = getelementptr inbounds %struct.mn88473_dev, ptr %8, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = call i32 @regmap_bulk_read(ptr noundef %217, i32 noundef 146, ptr noundef nonnull %4, i32 noundef 5) #10
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %294

220:                                              ; preds = %215
  %221 = load i8, ptr %4, align 1
  %222 = zext i8 %221 to i32
  %223 = shl nuw nsw i32 %222, 16
  %224 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i32
  %227 = shl nuw nsw i32 %226, 8
  %228 = or i32 %227, %223
  %229 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 2
  %230 = load i8, ptr %229, align 1
  %231 = zext i8 %230 to i32
  %232 = or i32 %228, %231
  %233 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 3
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 4
  %237 = load i8, ptr %236, align 1
  %238 = zext i8 %237 to i32
  %239 = shl nuw nsw i32 %235, 11
  %240 = shl nuw nsw i32 %238, 3
  %241 = or i32 %240, %239
  %242 = mul nuw nsw i32 %241, 204
  %243 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %243, align 1
  %244 = zext i32 %232 to i64
  %245 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %246 = load i64, ptr %245, align 1
  %247 = add i64 %246, %244
  store i64 %247, ptr %245, align 1
  %248 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %248, align 1
  %249 = zext i32 %242 to i64
  %250 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %251 = load i64, ptr %250, align 1
  %252 = add i64 %251, %249
  store i64 %252, ptr %250, align 1
  br label %256

253:                                              ; preds = %213, %209
  %254 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %254, align 1
  %255 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %255, align 1
  br label %256

256:                                              ; preds = %253, %220
  %257 = load i32, ptr %1, align 4
  %258 = and i32 %257, 16
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %291, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.mn88473_dev, ptr %8, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = call i32 @regmap_bulk_read(ptr noundef %262, i32 noundef 221, ptr noundef nonnull %4, i32 noundef 4) #10
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %294

265:                                              ; preds = %260
  %266 = load i8, ptr %4, align 1
  %267 = zext i8 %266 to i32
  %268 = shl nuw nsw i32 %267, 8
  %269 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %270 = load i8, ptr %269, align 1
  %271 = zext i8 %270 to i32
  %272 = or i32 %268, %271
  %273 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 2
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i32
  %276 = shl nuw nsw i32 %275, 8
  %277 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 3
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i32
  %280 = or i32 %276, %279
  %281 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %281, align 1
  %282 = zext i32 %272 to i64
  %283 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %284 = load i64, ptr %283, align 1
  %285 = add i64 %284, %282
  store i64 %285, ptr %283, align 1
  %286 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %286, align 1
  %287 = zext i32 %280 to i64
  %288 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %289 = load i64, ptr %288, align 1
  %290 = add i64 %289, %287
  store i64 %290, ptr %288, align 1
  br label %294

291:                                              ; preds = %256
  %292 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %292, align 1
  %293 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %293, align 1
  br label %294

294:                                              ; preds = %291, %265, %260, %215, %168, %134, %129, %124, %98, %73, %68, %54, %45, %29, %15, %12, %2
  %295 = phi i32 [ 0, %291 ], [ 0, %265 ], [ %48, %45 ], [ %101, %98 ], [ %218, %215 ], [ %263, %260 ], [ %171, %168 ], [ %56, %54 ], [ %32, %29 ], [ %18, %15 ], [ -11, %2 ], [ -22, %12 ], [ %127, %124 ], [ %132, %129 ], [ %137, %134 ], [ %71, %68 ], [ %76, %73 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %295
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148621666, i64 2148621946, i64 2148622280, i64 2148622614}
