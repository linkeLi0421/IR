; ModuleID = '/llk/IR/drivers/media/tuners/tda18250.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18250.c"
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
%struct.regmap_range = type { i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.tda18250_config = type { i16, i16, i16, i16, i16, i16, i8, i8, ptr, ptr }
%struct.tda18250_dev = type { %struct.mutex, ptr, ptr, ptr, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, [93 x i8] }
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

@tda18250_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda18250\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description249 = internal constant [46 x i8] c"description=NXP TDA18250 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [42 x i8] c"author=Olli Salonen <olli.salonen@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@tda18250_driver = internal global %struct.i2c_driver { i32 0, ptr @tda18250_probe, ptr @tda18250_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda18250_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"tda18250\00", align 1
@tda18250_probe.tda18250_yes_ranges = internal constant [4 x %struct.regmap_range] [%struct.regmap_range { i32 5, i32 11 }, %struct.regmap_range { i32 33, i32 33 }, %struct.regmap_range { i32 42, i32 43 }, %struct.regmap_range { i32 47, i32 49 }], align 4
@tda18250_probe.tda18250_volatile_table = internal constant %struct.regmap_access_table { ptr @tda18250_probe.tda18250_yes_ranges, i32 4, ptr null, i32 0 }, align 4
@tda18250_probe.tda18250_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 92, ptr null, ptr null, ptr @tda18250_probe.tda18250_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"xtal_freq invalid=%d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"NXP TDA18250AHN/%s successfully identified\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"NXP TDA18250BHN/%s successfully identified\00", align 1
@tda18250_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18250\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 42000000, i32 870000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @tda18250_init, ptr @tda18250_sleep, ptr null, ptr null, ptr @tda18250_set_params, ptr null, ptr null, ptr null, ptr null, ptr @tda18250_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tda18250_init.init_regs = internal unnamed_addr constant [34 x [2 x i8]] [[2 x i8] c"\0C\C7", [2 x i8] c"\0D]", [2 x i8] c"\0E@", [2 x i8] c"\0F\0E", [2 x i8] c"\10G", [2 x i8] c"\11N", [2 x i8] c"\12&", [2 x i8] c"\13`", [2 x i8] c"\187", [2 x i8] c"\19\09", [2 x i8] c"\1A\00", [2 x i8] c"\1E)", [2 x i8] c"\1F\06", [2 x i8] c" \C6", [2 x i8] c"!\00", [2 x i8] c",u", [2 x i8] c"-\06", [2 x i8] c".\07", [2 x i8] c"0\0E", [2 x i8] c"1\00", [2 x i8] c"9\00", [2 x i8] c";U", [2 x i8] c"<\A7", [2 x i8] c"?\85", [2 x i8] c"@\87", [2 x i8] c"A\C0", [2 x i8] c"C@", [2 x i8] c"D\C0", [2 x i8] c"F\0C", [2 x i8] c"Gd", [2 x i8] c"K0", [2 x i8] c"Y\05", [2 x i8] c"[\07", [2 x i8] c"\\\00"], align 1
@tda18250_init.xtal_regs = internal constant [5 x [5 x i8]] [[5 x i8] c">\80P\00 ", [5 x i8] c"]\C0\EC\00\18", [5 x i8] c"a\A8\EC\80\19", [5 x i8] c"ix\8D\80\1B", [5 x i8] c"u0\8F\00\1E"], align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@tda18250_set_params.delsys_params = internal unnamed_addr constant [8 x [16 x i8]] [[16 x i8] c"\22#$!\0D\0C\0F\14\0E\12XY\1A\19\1E0", [16 x i8] c"w\FF\FF\87\F0x\07\E0`\0F`\0F30\80\06", [16 x i8] c"Q\03\83\82@H\01\E0`\0F`\05\03\10\00\04", [16 x i8] c"R\03\85\82@H\01\E0`\0F`\05\03\10\00\04", [16 x i8] c"S\03\87\82@H\06\E0`\07`\05\03\10\00\04", [16 x i8] c"2\05\86\82P\00\06`@\0E`\053\10\00\04", [16 x i8] c"S\03\88\82P\00\06`@\0E`\053\10\00\04", [16 x i8] c"Q\03\83\82@H\01\E0@\0E`\05\03\00\80\04"], align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"unsupported delivery system=%d\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_i2c__tda18250_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @tda18250_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @tda18250_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tda18250_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18250_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tda18250_config, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 144) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %72, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %10, ptr %13, align 8
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tda18250_config, ptr %6, i32 0, i32 7
  %17 = load i8, ptr %16, align 1, !range !9
  %18 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 13
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.tda18250_config, ptr %6, i32 0, i32 6
  %20 = load i8, ptr %19, align 4
  %21 = icmp ult i8 %20, 5
  br i1 %21, label %22, label %46

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 4
  store i8 %20, ptr %23, align 8
  %24 = load i16, ptr %6, align 4
  %25 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 5
  store i16 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.tda18250_config, ptr %6, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 6
  store i16 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tda18250_config, ptr %6, i32 0, i32 2
  %30 = load i16, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 7
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.tda18250_config, ptr %6, i32 0, i32 3
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 8
  store i16 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.tda18250_config, ptr %6, i32 0, i32 4
  %36 = load i16, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 9
  store i16 %36, ptr %37, align 2
  %38 = getelementptr inbounds %struct.tda18250_config, ptr %6, i32 0, i32 5
  %39 = load i16, ptr %38, align 2
  %40 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 10
  store i16 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 11
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 14
  store i8 0, ptr %42, align 2
  %43 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tda18250_probe.tda18250_regmap_config, ptr noundef null, ptr noundef null) #9
  %44 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 3
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %48, label %50

46:                                               ; preds = %12
  %47 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %47) #11
  br label %70

48:                                               ; preds = %22
  %49 = ptrtoint ptr %43 to i32
  br label %70

50:                                               ; preds = %22
  %51 = call i32 @regmap_bulk_read(ptr noundef %43, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 3) #9
  %52 = load i8, ptr %3, align 1
  switch i8 %52, label %70 [
    i8 -57, label %54
    i8 71, label %53
  ]

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i8 [ 1, %53 ], [ 0, %50 ]
  %56 = phi ptr [ @.str.3, %53 ], [ @.str.4, %50 ]
  %57 = getelementptr inbounds %struct.tda18250_dev, ptr %10, i32 0, i32 12
  store i8 %55, ptr %57, align 8
  %58 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 74
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %63 = load i8, ptr %62, align 1
  switch i8 %63, label %70 [
    i8 32, label %65
    i8 33, label %64
  ]

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi ptr [ @.str.5, %64 ], [ @.str.2, %61 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull %66, ptr noundef nonnull %56) #11
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 4
  store ptr %0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %68, ptr noundef nonnull align 4 dereferenceable(220) @tda18250_ops, i32 220, i1 false)
  %69 = call fastcc i32 @tda18250_power_control(ptr noundef %8, i32 noundef 0)
  br label %72

70:                                               ; preds = %61, %54, %50, %48, %46
  %71 = phi i32 [ %49, %48 ], [ -22, %46 ], [ -19, %50 ], [ -19, %54 ], [ -19, %61 ]
  call void @kfree(ptr noundef nonnull %10) #9
  br label %72

72:                                               ; preds = %70, %65, %2
  %73 = phi i32 [ 0, %65 ], [ %71, %70 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18250_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 32
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(220) %6, i8 0, i32 220, i1 false)
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 4
  store ptr null, ptr %7, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda18250_power_control(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  switch i32 %1, label %57 [
    i32 1, label %8
    i32 0, label %17
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tda18250_dev, ptr %7, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 6, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 37, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %59, label %57

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.tda18250_dev, ptr %7, i32 0, i32 13
  %19 = load i8, ptr %18, align 1, !range !9
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.tda18250_dev, ptr %7, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 37, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %24 = icmp eq i32 %23, 0
  br i1 %20, label %34, label %25

25:                                               ; preds = %17
  br i1 %24, label %26, label %57

26:                                               ; preds = %25
  %27 = load ptr, ptr %21, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 6, i32 noundef 7, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load ptr, ptr %21, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 16, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %59, label %57

34:                                               ; preds = %17
  br i1 %24, label %35, label %57

35:                                               ; preds = %34
  %36 = load ptr, ptr %21, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 6, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 4
  %41 = call i32 @regmap_read(ptr noundef %40, i32 noundef 13, ptr noundef nonnull %3) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load ptr, ptr %21, align 4
  %45 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 13, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load ptr, ptr %21, align 4
  %49 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 16, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load ptr, ptr %21, align 4
  %53 = load i32, ptr %3, align 4
  %54 = and i32 %53, 3
  %55 = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 13, i32 noundef 3, i32 noundef %54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51, %47, %43, %39, %35, %34, %30, %26, %25, %13, %8, %2
  %58 = phi i32 [ %23, %25 ], [ %28, %26 ], [ %32, %30 ], [ %23, %34 ], [ %37, %35 ], [ %41, %39 ], [ %45, %43 ], [ %49, %47 ], [ %55, %51 ], [ %11, %8 ], [ %15, %13 ], [ -22, %2 ]
  br label %59

59:                                               ; preds = %57, %51, %30, %13
  %60 = phi i32 [ %58, %57 ], [ 0, %30 ], [ 0, %51 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18250_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tda18250_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 6, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %79

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 37, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %10
  tail call void @msleep(i32 noundef 20) #9
  %15 = getelementptr inbounds %struct.tda18250_dev, ptr %5, i32 0, i32 14
  %16 = load i8, ptr %15, align 2, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %75

18:                                               ; preds = %21
  %19 = add nuw nsw i32 %22, 1
  %20 = icmp eq i32 %19, 34
  br i1 %20, label %32, label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %19, %18 ], [ 0, %14 ]
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr [34 x [2 x i8]], ptr @tda18250_init.init_regs, i32 0, i32 %22
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr [34 x [2 x i8]], ptr @tda18250_init.init_regs, i32 0, i32 %22, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %26, i32 noundef %29) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %18, label %79

32:                                               ; preds = %18
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.tda18250_dev, ptr %5, i32 0, i32 4
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = getelementptr [5 x [5 x i8]], ptr @tda18250_init.xtal_regs, i32 0, i32 %36
  %38 = tail call i32 @regmap_bulk_write(ptr noundef %33, i32 noundef 77, ptr noundef %37, i32 noundef 5) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %32
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.tda18250_dev, ptr %5, i32 0, i32 13
  %43 = load i8, ptr %42, align 1, !range !9
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 128, i32 0
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 16, i32 noundef 128, i32 noundef %45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %40
  %49 = load ptr, ptr %6, align 4
  %50 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 10, i32 noundef 130) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load ptr, ptr %6, align 4
  %54 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 42, i32 noundef 112) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load ptr, ptr %6, align 4
  %58 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 43, i32 noundef 1) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = tail call fastcc i32 @tda18250_wait_for_irq(ptr noundef %0, i8 noundef zeroext -126)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load ptr, ptr %6, align 4
  %65 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 42, i32 noundef 2) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load ptr, ptr %6, align 4
  %69 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 43, i32 noundef 1) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = tail call fastcc i32 @tda18250_wait_for_irq(ptr noundef %0, i8 noundef zeroext -127)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  store i8 1, ptr %15, align 2
  br label %75

75:                                               ; preds = %74, %14
  %76 = load ptr, ptr %6, align 4
  %77 = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 12, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75, %71, %67, %63, %60, %56, %52, %48, %40, %32, %21, %10, %1
  %80 = phi i32 [ %77, %75 ], [ %38, %32 ], [ %46, %40 ], [ %50, %48 ], [ %54, %52 ], [ %58, %56 ], [ %61, %60 ], [ %65, %63 ], [ %69, %67 ], [ %72, %71 ], [ %8, %1 ], [ %12, %10 ], [ %30, %21 ]
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i32 [ %80, %79 ], [ 0, %75 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18250_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tda18250_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 12, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tda18250_dev, ptr %5, i32 0, i32 11
  store i16 0, ptr %11, align 2
  %12 = tail call fastcc i32 @tda18250_power_control(ptr noundef %0, i32 noundef 0)
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i32 [ %12, %10 ], [ %8, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18250_set_params(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [3 x i8], align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %40 [
    i32 11, label %10
    i32 3, label %12
    i32 16, label %12
    i32 1, label %28
    i32 18, label %28
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tda18250_dev, ptr %6, i32 0, i32 10
  br label %42

12:                                               ; preds = %1, %1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %322, label %16

16:                                               ; preds = %12
  %17 = icmp ult i32 %14, 6000001
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tda18250_dev, ptr %6, i32 0, i32 5
  br label %42

20:                                               ; preds = %16
  %21 = icmp ult i32 %14, 7000001
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.tda18250_dev, ptr %6, i32 0, i32 6
  br label %42

24:                                               ; preds = %20
  %25 = icmp ult i32 %14, 8000001
  br i1 %25, label %26, label %322

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.tda18250_dev, ptr %6, i32 0, i32 7
  br label %42

28:                                               ; preds = %1, %1
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %322, label %32

32:                                               ; preds = %28
  %33 = icmp ult i32 %30, 6000001
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.tda18250_dev, ptr %6, i32 0, i32 8
  br label %42

36:                                               ; preds = %32
  %37 = icmp ult i32 %30, 8000001
  br i1 %37, label %38, label %322

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.tda18250_dev, ptr %6, i32 0, i32 9
  br label %42

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef %9) #11
  br label %322

42:                                               ; preds = %38, %34, %26, %22, %18, %10
  %43 = phi ptr [ %35, %34 ], [ %39, %38 ], [ %19, %18 ], [ %23, %22 ], [ %27, %26 ], [ %11, %10 ]
  %44 = phi i32 [ 5, %34 ], [ 6, %38 ], [ 2, %18 ], [ 3, %22 ], [ 4, %26 ], [ 7, %10 ]
  %45 = load i16, ptr %43, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.tda18250_dev, ptr %6, i32 0, i32 3
  br label %51

48:                                               ; preds = %51
  %49 = add nuw nsw i32 %52, 1
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %65, label %51

51:                                               ; preds = %48, %42
  %52 = phi i32 [ 0, %42 ], [ %49, %48 ]
  %53 = load ptr, ptr %47, align 4
  %54 = getelementptr [16 x i8], ptr @tda18250_set_params.delsys_params, i32 0, i32 %52
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr [8 x [16 x i8]], ptr @tda18250_set_params.delsys_params, i32 0, i32 1, i32 %52
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr [8 x [16 x i8]], ptr @tda18250_set_params.delsys_params, i32 0, i32 %44, i32 %52
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %56, i32 noundef %59, i32 noundef %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %48, label %322

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.tda18250_dev, ptr %6, i32 0, i32 11
  %67 = load i16, ptr %66, align 2
  %68 = icmp eq i16 %67, %45
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %46, 25
  %71 = udiv i32 %70, 50
  %72 = load ptr, ptr %47, align 4
  %73 = and i32 %71, 255
  %74 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 38, i32 noundef %73) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %322

76:                                               ; preds = %69
  store i16 %45, ptr %66, align 2
  br label %77

77:                                               ; preds = %76, %65
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 4, i32 8
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.tda18250_dev, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 31, i32 noundef 135, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %322

85:                                               ; preds = %77
  %86 = load i32, ptr %7, align 4
  %87 = icmp ult i32 %86, 100000000
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, ptr %8, align 4
  switch i32 %89, label %95 [
    i32 1, label %90
    i32 18, label %90
  ]

90:                                               ; preds = %88, %88
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 6000000
  %94 = select i1 %93, i32 128, i32 0
  br label %95

95:                                               ; preds = %90, %88, %85
  %96 = phi i32 [ %94, %90 ], [ 0, %85 ], [ 0, %88 ]
  %97 = load ptr, ptr %81, align 4
  %98 = tail call i32 @regmap_write(ptr noundef %97, i32 noundef 90, i32 noundef %96) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %322

100:                                              ; preds = %95
  %101 = load i32, ptr %8, align 4
  switch i32 %101, label %102 [
    i32 11, label %113
    i32 3, label %113
    i32 16, label %113
  ]

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 6000000
  %106 = load i32, ptr %7, align 4
  br i1 %105, label %107, label %110

107:                                              ; preds = %102
  %108 = icmp ult i32 %106, 800000000
  %109 = select i1 %108, i32 6, i32 4
  br label %113

110:                                              ; preds = %102
  %111 = icmp ult i32 %106, 100000000
  %112 = select i1 %111, i32 2, i32 3
  br label %113

113:                                              ; preds = %110, %107, %100, %100, %100
  %114 = phi i32 [ %109, %107 ], [ %112, %110 ], [ 4, %100 ], [ 4, %100 ], [ 4, %100 ]
  %115 = load ptr, ptr %81, align 4
  %116 = tail call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 12, i32 noundef 7, i32 noundef %114, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %322

118:                                              ; preds = %113
  %119 = load i32, ptr %8, align 4
  switch i32 %119, label %125 [
    i32 11, label %120
    i32 3, label %120
    i32 16, label %120
  ]

120:                                              ; preds = %118, %118, %118
  %121 = load i32, ptr %7, align 4
  %122 = icmp ult i32 %121, 320000000
  %123 = select i1 %122, i32 20, i32 16
  %124 = select i1 %122, i32 22, i32 18
  br label %140

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 6000000
  %129 = load i32, ptr %7, align 4
  br i1 %128, label %130, label %136

130:                                              ; preds = %125
  %131 = icmp ult i32 %129, 600000000
  br i1 %131, label %140, label %132

132:                                              ; preds = %130
  %133 = icmp ult i32 %129, 800000000
  %134 = select i1 %133, i32 16, i32 14
  %135 = select i1 %133, i32 20, i32 16
  br label %140

136:                                              ; preds = %125
  %137 = icmp ult i32 %129, 320000000
  %138 = select i1 %137, i32 16, i32 18
  %139 = select i1 %137, i32 18, i32 20
  br label %140

140:                                              ; preds = %136, %132, %130, %120
  %141 = phi i32 [ %138, %136 ], [ %123, %120 ], [ 18, %130 ], [ %134, %132 ]
  %142 = phi i32 [ %139, %136 ], [ %124, %120 ], [ 22, %130 ], [ %135, %132 ]
  %143 = load ptr, ptr %81, align 4
  %144 = or i32 %142, 8
  %145 = tail call i32 @regmap_update_bits_base(ptr noundef %143, i32 noundef 88, i32 noundef 31, i32 noundef %144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %322

147:                                              ; preds = %140
  %148 = load ptr, ptr %81, align 4
  %149 = tail call i32 @regmap_update_bits_base(ptr noundef %148, i32 noundef 19, i32 noundef 31, i32 noundef %141, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %322

151:                                              ; preds = %147
  %152 = load ptr, ptr %81, align 4
  %153 = tail call i32 @regmap_update_bits_base(ptr noundef %152, i32 noundef 20, i32 noundef 31, i32 noundef %142, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %322

155:                                              ; preds = %151
  %156 = load i32, ptr %8, align 4
  switch i32 %156, label %157 [
    i32 11, label %158
    i32 3, label %158
    i32 16, label %158
  ]

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157, %155, %155, %155
  %159 = phi i32 [ 90, %157 ], [ 98, %155 ], [ 98, %155 ], [ 98, %155 ]
  %160 = load ptr, ptr %81, align 4
  %161 = tail call i32 @regmap_update_bits_base(ptr noundef %160, i32 noundef 22, i32 noundef 248, i32 noundef %159, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %322

163:                                              ; preds = %158
  %164 = load ptr, ptr %81, align 4
  %165 = load i32, ptr %7, align 4
  %166 = icmp ugt i32 %165, 800000000
  %167 = select i1 %166, i32 64, i32 32
  %168 = tail call i32 @regmap_update_bits_base(ptr noundef %164, i32 noundef 18, i32 noundef 96, i32 noundef %167, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %322

170:                                              ; preds = %163
  %171 = load i32, ptr %8, align 4
  switch i32 %171, label %176 [
    i32 11, label %172
    i32 3, label %172
    i32 16, label %172
  ]

172:                                              ; preds = %170, %170, %170
  %173 = load i32, ptr %7, align 4
  %174 = icmp ult i32 %173, 320000000
  %175 = select i1 %174, i32 90, i32 124
  br label %176

176:                                              ; preds = %172, %170
  %177 = phi i32 [ %175, %172 ], [ 124, %170 ]
  %178 = load ptr, ptr %81, align 4
  %179 = tail call i32 @regmap_write(ptr noundef %178, i32 noundef 23, i32 noundef %177) #9
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %322

181:                                              ; preds = %176
  %182 = load i32, ptr %8, align 4
  switch i32 %182, label %191 [
    i32 11, label %183
    i32 3, label %183
    i32 16, label %183
  ]

183:                                              ; preds = %181, %181, %181
  %184 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 8000000
  br i1 %186, label %204, label %187

187:                                              ; preds = %183
  %188 = load i32, ptr %7, align 4
  %189 = icmp ult i32 %188, 320000000
  %190 = select i1 %189, i32 4, i32 2
  br label %204

191:                                              ; preds = %181
  %192 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 6000000
  %195 = load i32, ptr %7, align 4
  br i1 %194, label %196, label %200

196:                                              ; preds = %191
  %197 = add i32 %195, -172544001
  %198 = icmp ult i32 %197, 147455999
  %199 = select i1 %198, i32 4, i32 2
  br label %204

200:                                              ; preds = %191
  %201 = add i32 %195, -320000001
  %202 = icmp ult i32 %201, 279999999
  %203 = select i1 %202, i32 2, i32 4
  br label %204

204:                                              ; preds = %200, %196, %187, %183
  %205 = phi i32 [ %199, %196 ], [ %203, %200 ], [ %190, %187 ], [ 4, %183 ]
  %206 = load ptr, ptr %81, align 4
  %207 = tail call i32 @regmap_update_bits_base(ptr noundef %206, i32 noundef 32, i32 noundef 6, i32 noundef %205, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %322

209:                                              ; preds = %204
  %210 = load i32, ptr %8, align 4
  switch i32 %210, label %211 [
    i32 11, label %215
    i32 3, label %215
    i32 16, label %215
  ]

211:                                              ; preds = %209
  %212 = load i32, ptr %7, align 4
  %213 = icmp ult i32 %212, 600000000
  %214 = select i1 %213, i32 0, i32 3
  br label %215

215:                                              ; preds = %211, %209, %209, %209
  %216 = phi i32 [ %214, %211 ], [ 0, %209 ], [ 0, %209 ], [ 0, %209 ]
  %217 = load ptr, ptr %81, align 4
  %218 = tail call i32 @regmap_update_bits_base(ptr noundef %217, i32 noundef 22, i32 noundef 3, i32 noundef %216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %322

220:                                              ; preds = %215
  %221 = load i32, ptr %8, align 4
  switch i32 %221, label %227 [
    i32 11, label %222
    i32 3, label %222
    i32 16, label %222
  ]

222:                                              ; preds = %220, %220, %220
  %223 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 8000000
  %226 = select i1 %225, i32 12, i32 9
  br label %227

227:                                              ; preds = %222, %220
  %228 = phi i32 [ %226, %222 ], [ 12, %220 ]
  %229 = load ptr, ptr %81, align 4
  %230 = tail call i32 @regmap_update_bits_base(ptr noundef %229, i32 noundef 15, i32 noundef 63, i32 noundef %228, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %322

232:                                              ; preds = %227
  %233 = load ptr, ptr %47, align 4
  %234 = tail call i32 @regmap_update_bits_base(ptr noundef %233, i32 noundef 26, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %322

236:                                              ; preds = %232
  %237 = load ptr, ptr %47, align 4
  %238 = tail call i32 @regmap_update_bits_base(ptr noundef %237, i32 noundef 20, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %322

240:                                              ; preds = %236
  %241 = load i32, ptr %7, align 4
  %242 = udiv i32 %241, 1000
  %243 = lshr i32 %242, 16
  %244 = trunc i32 %243 to i8
  store i8 %244, ptr %2, align 1
  %245 = lshr i32 %242, 8
  %246 = trunc i32 %245 to i8
  %247 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 %246, ptr %247, align 1
  %248 = trunc i32 %242 to i8
  %249 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 %248, ptr %249, align 1
  %250 = load ptr, ptr %47, align 4
  %251 = call i32 @regmap_bulk_write(ptr noundef %250, i32 noundef 39, ptr noundef nonnull %2, i32 noundef 3) #9
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %322

253:                                              ; preds = %240
  %254 = load ptr, ptr %47, align 4
  %255 = call i32 @regmap_write(ptr noundef %254, i32 noundef 10, i32 noundef 136) #9
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %322

257:                                              ; preds = %253
  %258 = load ptr, ptr %47, align 4
  %259 = call i32 @regmap_write(ptr noundef %258, i32 noundef 42, i32 noundef 1) #9
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %322

261:                                              ; preds = %257
  %262 = load ptr, ptr %47, align 4
  %263 = call i32 @regmap_write(ptr noundef %262, i32 noundef 43, i32 noundef 1) #9
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %322

265:                                              ; preds = %261
  %266 = call fastcc i32 @tda18250_wait_for_irq(ptr noundef %0, i8 noundef zeroext -120)
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %322

268:                                              ; preds = %265
  %269 = call fastcc i32 @tda18250_pll_calc(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %247, ptr noundef %249)
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %322

271:                                              ; preds = %268
  %272 = load ptr, ptr %47, align 4
  %273 = load i8, ptr %2, align 1
  %274 = zext i8 %273 to i32
  %275 = shl nuw nsw i32 %274, 6
  %276 = load i8, ptr %247, align 1
  %277 = zext i8 %276 to i32
  %278 = shl nuw nsw i32 %277, 5
  %279 = or i32 %278, %275
  %280 = call i32 @regmap_update_bits_base(ptr noundef %272, i32 noundef 79, i32 noundef 224, i32 noundef %279, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %322

282:                                              ; preds = %271
  %283 = load ptr, ptr %47, align 4
  %284 = call i32 @regmap_write(ptr noundef %283, i32 noundef 10, i32 noundef 136) #9
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %322

286:                                              ; preds = %282
  %287 = load ptr, ptr %47, align 4
  %288 = call i32 @regmap_update_bits_base(ptr noundef %287, i32 noundef 70, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %322

290:                                              ; preds = %286
  %291 = load ptr, ptr %47, align 4
  %292 = call i32 @regmap_update_bits_base(ptr noundef %291, i32 noundef 57, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %322

294:                                              ; preds = %290
  %295 = load ptr, ptr %47, align 4
  %296 = call i32 @regmap_write(ptr noundef %295, i32 noundef 42, i32 noundef 1) #9
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %322

298:                                              ; preds = %294
  %299 = load ptr, ptr %47, align 4
  %300 = call i32 @regmap_write(ptr noundef %299, i32 noundef 43, i32 noundef 1) #9
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %322

302:                                              ; preds = %298
  %303 = call fastcc i32 @tda18250_wait_for_irq(ptr noundef %0, i8 noundef zeroext -120)
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %322

305:                                              ; preds = %302
  call void @msleep(i32 noundef 20) #9
  %306 = load ptr, ptr %47, align 4
  %307 = call i32 @regmap_update_bits_base(ptr noundef %306, i32 noundef 43, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %305
  call void @msleep(i32 noundef 20) #9
  %310 = load ptr, ptr %47, align 4
  %311 = call i32 @regmap_update_bits_base(ptr noundef %310, i32 noundef 26, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %309
  %314 = load ptr, ptr %47, align 4
  %315 = call i32 @regmap_update_bits_base(ptr noundef %314, i32 noundef 20, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %313
  %318 = load ptr, ptr %47, align 4
  %319 = load i8, ptr %249, align 1
  %320 = zext i8 %319 to i32
  %321 = call i32 @regmap_update_bits_base(ptr noundef %318, i32 noundef 70, i32 noundef 7, i32 noundef %320, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %322

322:                                              ; preds = %317, %313, %309, %305, %302, %298, %294, %290, %286, %282, %271, %268, %265, %261, %257, %253, %240, %236, %232, %227, %215, %204, %176, %163, %158, %151, %147, %140, %113, %95, %77, %69, %51, %40, %36, %28, %24, %12
  %323 = phi i32 [ 0, %317 ], [ -22, %40 ], [ %74, %69 ], [ %234, %232 ], [ %238, %236 ], [ %251, %240 ], [ %255, %253 ], [ %259, %257 ], [ %263, %261 ], [ %266, %265 ], [ %269, %268 ], [ %280, %271 ], [ %284, %282 ], [ %288, %286 ], [ %292, %290 ], [ %296, %294 ], [ %300, %298 ], [ %303, %302 ], [ %307, %305 ], [ %311, %309 ], [ %315, %313 ], [ -22, %12 ], [ -22, %24 ], [ -22, %28 ], [ -22, %36 ], [ %83, %77 ], [ %98, %95 ], [ %116, %113 ], [ %145, %140 ], [ %149, %147 ], [ %153, %151 ], [ %161, %158 ], [ %168, %163 ], [ %179, %176 ], [ %207, %204 ], [ %218, %215 ], [ %230, %227 ], [ %63, %51 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  ret i32 %323
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda18250_get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tda18250_dev, ptr %6, i32 0, i32 11
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = mul nuw nsw i32 %9, 1000
  store i32 %10, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda18250_wait_for_irq(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = add i32 %8, 50
  %10 = getelementptr inbounds %struct.tda18250_dev, ptr %7, i32 0, i32 3
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = sub i32 %9, %11
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = zext i8 %1 to i32
  br label %16

16:                                               ; preds = %24, %14
  %17 = load ptr, ptr %10, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 8, ptr noundef nonnull %3) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, %15
  %23 = icmp eq i32 %22, %15
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  call void @msleep(i32 noundef 10) #9
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %9, %25
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %16, label %28

28:                                               ; preds = %24, %20, %16, %2
  %29 = phi i32 [ -110, %2 ], [ -110, %24 ], [ 0, %20 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda18250_pll_calc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.tda18250_dev, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 52, ptr noundef nonnull %5) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %5, align 4
  %17 = lshr i32 %16, 4
  %18 = and i32 %17, 7
  %19 = add nsw i32 %18, -1
  %20 = and i32 %16, 15
  %21 = shl nuw nsw i32 %20, %19
  %22 = load i32, ptr %15, align 4
  %23 = udiv i32 %22, 1000
  %24 = getelementptr inbounds %struct.tda18250_dev, ptr %9, i32 0, i32 11
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = add nuw nsw i32 %23, %26
  %28 = mul i32 %21, %27
  %29 = getelementptr inbounds %struct.tda18250_dev, ptr %9, i32 0, i32 4
  %30 = load i8, ptr %29, align 4
  switch i8 %30, label %49 [
    i8 0, label %31
    i8 1, label %34
    i8 2, label %34
    i8 3, label %37
    i8 4, label %44
  ]

31:                                               ; preds = %14
  store i8 1, ptr %1, align 1
  store i8 0, ptr %2, align 1
  %32 = icmp ult i32 %28, 6622000
  %33 = select i1 %32, i8 5, i8 2
  br label %47

34:                                               ; preds = %14, %14
  store i8 3, ptr %1, align 1
  store i8 1, ptr %2, align 1
  %35 = icmp ult i32 %28, 6622000
  %36 = select i1 %35, i8 5, i8 2
  br label %47

37:                                               ; preds = %14
  %38 = icmp ult i32 %28, 6643000
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i8 2, ptr %1, align 1
  store i8 0, ptr %2, align 1
  br label %47

40:                                               ; preds = %37
  %41 = icmp ult i32 %28, 6811000
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store i8 2, ptr %1, align 1
  store i8 0, ptr %2, align 1
  br label %47

43:                                               ; preds = %40
  store i8 3, ptr %1, align 1
  store i8 1, ptr %2, align 1
  br label %47

44:                                               ; preds = %14
  store i8 2, ptr %1, align 1
  store i8 0, ptr %2, align 1
  %45 = icmp ult i32 %28, 6811000
  %46 = select i1 %45, i8 5, i8 2
  br label %47

47:                                               ; preds = %44, %43, %42, %39, %34, %31
  %48 = phi i8 [ %33, %31 ], [ %36, %34 ], [ %46, %44 ], [ 6, %42 ], [ 2, %43 ], [ 5, %39 ]
  store i8 %48, ptr %3, align 1
  br label %49

49:                                               ; preds = %47, %14, %4
  %50 = phi i32 [ -22, %14 ], [ %12, %4 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i8 0, i8 2}
