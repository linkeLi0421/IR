; ModuleID = '/llk/IR/drivers/media/tuners/m88rs6000t.c_pt.bc'
source_filename = "../drivers/media/tuners/m88rs6000t.c"
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
%struct.m88rs6000t_reg_val = type { i8, i8 }
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
%struct.m88rs6000t_dev = type { %struct.m88rs6000t_config, ptr, ptr, i32 }
%struct.m88rs6000t_config = type { ptr }
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

@m88rs6000t_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"m88rs6000t\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author257 = internal constant [41 x i8] c"author=Max nibble <nibble.max@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [52 x i8] c"description=Montage M88RS6000 internal tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@m88rs6000t_driver = internal global %struct.i2c_driver { i32 0, ptr @m88rs6000t_probe, ptr @m88rs6000t_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @m88rs6000t_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"m88rs6000t\00", align 1
@m88rs6000t_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@m88rs6000t_probe.reg_vals = internal unnamed_addr constant [25 x %struct.m88rs6000t_reg_val] [%struct.m88rs6000t_reg_val { i8 16, i8 -5 }, %struct.m88rs6000t_reg_val { i8 36, i8 56 }, %struct.m88rs6000t_reg_val { i8 17, i8 10 }, %struct.m88rs6000t_reg_val { i8 18, i8 0 }, %struct.m88rs6000t_reg_val { i8 43, i8 28 }, %struct.m88rs6000t_reg_val { i8 68, i8 72 }, %struct.m88rs6000t_reg_val { i8 84, i8 36 }, %struct.m88rs6000t_reg_val { i8 85, i8 6 }, %struct.m88rs6000t_reg_val { i8 89, i8 0 }, %struct.m88rs6000t_reg_val { i8 91, i8 76 }, %struct.m88rs6000t_reg_val { i8 96, i8 -117 }, %struct.m88rs6000t_reg_val { i8 97, i8 -12 }, %struct.m88rs6000t_reg_val { i8 101, i8 7 }, %struct.m88rs6000t_reg_val { i8 109, i8 111 }, %struct.m88rs6000t_reg_val { i8 110, i8 49 }, %struct.m88rs6000t_reg_val { i8 60, i8 -13 }, %struct.m88rs6000t_reg_val { i8 55, i8 15 }, %struct.m88rs6000t_reg_val { i8 72, i8 40 }, %struct.m88rs6000t_reg_val { i8 73, i8 -40 }, %struct.m88rs6000t_reg_val { i8 112, i8 102 }, %struct.m88rs6000t_reg_val { i8 113, i8 -49 }, %struct.m88rs6000t_reg_val { i8 114, i8 -127 }, %struct.m88rs6000t_reg_val { i8 115, i8 -89 }, %struct.m88rs6000t_reg_val { i8 116, i8 79 }, %struct.m88rs6000t_reg_val { i8 117, i8 -4 }], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"kzalloc() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"chip_id=%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Montage M88RS6000 internal tuner successfully identified\0A\00", align 1
@m88rs6000t_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Montage M88RS6000 Internal Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @m88rs6000t_init, ptr @m88rs6000t_sleep, ptr null, ptr null, ptr @m88rs6000t_set_params, ptr null, ptr null, ptr @m88rs6000t_get_frequency, ptr null, ptr @m88rs6000t_get_if_frequency, ptr null, ptr @m88rs6000t_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.m88rs6000t_get_rf_strength.RFGS = private unnamed_addr constant [13 x i32] [i32 0, i32 245, i32 266, i32 268, i32 270, i32 285, i32 298, i32 295, i32 283, i32 285, i32 285, i32 300, i32 300], align 4
@__const.m88rs6000t_get_rf_strength.IFGS = private unnamed_addr constant [12 x i32] [i32 0, i32 300, i32 230, i32 270, i32 270, i32 285, i32 295, i32 285, i32 290, i32 295, i32 295, i32 310], align 4
@__const.m88rs6000t_get_rf_strength.BBGS = private unnamed_addr constant [14 x i32] [i32 0, i32 286, i32 275, i32 290, i32 294, i32 300, i32 290, i32 290, i32 285, i32 283, i32 260, i32 295, i32 290, i32 260], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_license259], section "llvm.metadata"

@__mod_i2c__m88rs6000t_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @m88rs6000t_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @m88rs6000t_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @m88rs6000t_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs6000t_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1) #13
  br label %78

12:                                               ; preds = %2
  %13 = load i32, ptr %5, align 4
  store i32 %13, ptr %8, align 8
  %14 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %8, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  %15 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @m88rs6000t_probe.regmap_config, ptr noundef null, ptr noundef null) #11
  %16 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %8, i32 0, i32 2
  store ptr %15, ptr %16, align 8
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = ptrtoint ptr %15 to i32
  br label %78

20:                                               ; preds = %12
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 17, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %20
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #11
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %23
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #11
  %27 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 7, i32 noundef 125) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %26
  %30 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 4, i32 noundef 1) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %29
  %33 = call i32 @regmap_read(ptr noundef %15, i32 noundef 1, ptr noundef nonnull %3) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.2, i32 noundef %37) #13
  %38 = load i32, ptr %3, align 4
  %39 = icmp eq i32 %38, 100
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = call i32 @regmap_write(ptr noundef %15, i32 noundef 5, i32 noundef 64) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %40
  %44 = call i32 @regmap_write(ptr noundef %15, i32 noundef 17, i32 noundef 8) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %43
  %47 = call i32 @regmap_write(ptr noundef %15, i32 noundef 21, i32 noundef 108) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  %50 = call i32 @regmap_write(ptr noundef %15, i32 noundef 23, i32 noundef 193) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = call i32 @regmap_write(ptr noundef %15, i32 noundef 23, i32 noundef 129) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #11
  %56 = call i32 @regmap_write(ptr noundef %15, i32 noundef 5, i32 noundef 0) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = call i32 @regmap_write(ptr noundef %15, i32 noundef 17, i32 noundef 10) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %78

61:                                               ; preds = %64
  %62 = add nuw nsw i32 %65, 1
  %63 = icmp eq i32 %62, 25
  br i1 %63, label %74, label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ %62, %61 ], [ 0, %58 ]
  %66 = getelementptr [25 x %struct.m88rs6000t_reg_val], ptr @m88rs6000t_probe.reg_vals, i32 0, i32 %65
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr [25 x %struct.m88rs6000t_reg_val], ptr @m88rs6000t_probe.reg_vals, i32 0, i32 %65, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 @regmap_write(ptr noundef %15, i32 noundef %68, i32 noundef %71) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %61, label %78

74:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.3) #13
  %75 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 4
  store ptr %8, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %76, ptr noundef nonnull align 4 dereferenceable(220) @m88rs6000t_tuner_ops, i32 220, i1 false)
  %77 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %77, align 8
  br label %80

78:                                               ; preds = %64, %58, %55, %52, %49, %46, %43, %40, %35, %32, %29, %26, %23, %20, %18, %10
  %79 = phi i32 [ %19, %18 ], [ %21, %20 ], [ %24, %23 ], [ %27, %26 ], [ %30, %29 ], [ %33, %32 ], [ %41, %40 ], [ %44, %43 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %56, %55 ], [ %59, %58 ], [ -12, %10 ], [ -19, %35 ], [ %72, %64 ]
  call void @kfree(ptr noundef %8) #11
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i32 [ %79, %78 ], [ 0, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs6000t_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 1, i32 32
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(220) %5, i8 0, i32 220, i1 false)
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 4
  store ptr null, ptr %6, align 4
  tail call void @kfree(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs6000t_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 17, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #11
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #11
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 7, i32 noundef 125) #11
  br label %15

15:                                               ; preds = %12, %8, %1
  %16 = phi i32 [ %6, %1 ], [ %10, %8 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs6000t_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 7, i32 noundef 109) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  br label %9

9:                                                ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs6000t_set_params(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 5000000
  %10 = select i1 %9, i32 3000, i32 0
  %11 = load i32, ptr %6, align 4
  %12 = add i32 %11, 500
  %13 = add i32 %12, %10
  %14 = udiv i32 %13, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 54, i32 noundef 19) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %240

19:                                               ; preds = %1
  %20 = load ptr, ptr %15, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 49, i32 noundef 0) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %240

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 44, i32 noundef 2) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %240

27:                                               ; preds = %23
  %28 = icmp ugt i32 %13, 1549999
  br i1 %28, label %43, label %29

29:                                               ; preds = %27
  %30 = icmp ugt i32 %13, 1379999
  br i1 %30, label %43, label %31

31:                                               ; preds = %29
  %32 = icmp ugt i32 %13, 1069999
  br i1 %32, label %43, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %13, 999999
  br i1 %34, label %43, label %35

35:                                               ; preds = %33
  %36 = icmp ugt i32 %13, 774999
  br i1 %36, label %43, label %37

37:                                               ; preds = %35
  %38 = icmp ugt i32 %13, 699999
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = icmp ugt i32 %13, 519999
  %41 = select i1 %40, i8 6, i8 8
  %42 = select i1 %40, i32 48, i32 96
  br label %43

43:                                               ; preds = %39, %37, %35, %33, %31, %29, %27
  %44 = phi i8 [ 2, %27 ], [ 3, %29 ], [ 3, %31 ], [ 3, %33 ], [ 4, %35 ], [ 6, %37 ], [ %41, %39 ]
  %45 = phi i32 [ 0, %27 ], [ 16, %29 ], [ 16, %31 ], [ 16, %33 ], [ 64, %35 ], [ 48, %37 ], [ %42, %39 ]
  %46 = phi i8 [ 2, %27 ], [ 2, %29 ], [ 3, %31 ], [ 4, %33 ], [ 4, %35 ], [ 4, %37 ], [ %41, %39 ]
  %47 = phi i32 [ 0, %27 ], [ 0, %29 ], [ 16, %31 ], [ 64, %33 ], [ 64, %35 ], [ 64, %37 ], [ %42, %39 ]
  %48 = zext i8 %44 to i32
  %49 = mul i32 %14, 27000
  %50 = mul i32 %49, %48
  %51 = udiv i32 %50, 27000
  %52 = add nsw i32 %51, -1024
  %53 = lshr i32 %52, 1
  %54 = zext i8 %46 to i32
  %55 = mul i32 %49, %54
  %56 = udiv i32 %55, 27000
  %57 = add nsw i32 %56, -1024
  %58 = lshr i32 %57, 1
  %59 = lshr i32 %52, 9
  %60 = and i32 %59, 15
  %61 = or i32 %60, %45
  %62 = load ptr, ptr %15, align 4
  %63 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 39, i32 noundef %61) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %240

65:                                               ; preds = %43
  %66 = load ptr, ptr %15, align 4
  %67 = and i32 %53, 255
  %68 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 40, i32 noundef %67) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %240

70:                                               ; preds = %65
  %71 = lshr i32 %57, 9
  %72 = and i32 %71, 15
  %73 = or i32 %72, %47
  %74 = load ptr, ptr %15, align 4
  %75 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 41, i32 noundef %73) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %240

77:                                               ; preds = %70
  %78 = load ptr, ptr %15, align 4
  %79 = and i32 %58, 255
  %80 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 42, i32 noundef %79) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %240

82:                                               ; preds = %77
  %83 = load ptr, ptr %15, align 4
  %84 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 47, i32 noundef 245) #11
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %240

86:                                               ; preds = %82
  %87 = load ptr, ptr %15, align 4
  %88 = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 48, i32 noundef 5) #11
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %240

90:                                               ; preds = %86
  %91 = load ptr, ptr %15, align 4
  %92 = tail call i32 @regmap_write(ptr noundef %91, i32 noundef 8, i32 noundef 31) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %240

94:                                               ; preds = %90
  %95 = load ptr, ptr %15, align 4
  %96 = tail call i32 @regmap_write(ptr noundef %95, i32 noundef 8, i32 noundef 63) #11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %240

98:                                               ; preds = %94
  %99 = load ptr, ptr %15, align 4
  %100 = tail call i32 @regmap_write(ptr noundef %99, i32 noundef 9, i32 noundef 32) #11
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %240

102:                                              ; preds = %98
  %103 = load ptr, ptr %15, align 4
  %104 = tail call i32 @regmap_write(ptr noundef %103, i32 noundef 9, i32 noundef 0) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %240

106:                                              ; preds = %102
  %107 = load ptr, ptr %15, align 4
  %108 = tail call i32 @regmap_write(ptr noundef %107, i32 noundef 62, i32 noundef 17) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %240

110:                                              ; preds = %106
  %111 = load ptr, ptr %15, align 4
  %112 = tail call i32 @regmap_write(ptr noundef %111, i32 noundef 8, i32 noundef 47) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %240

114:                                              ; preds = %110
  %115 = load ptr, ptr %15, align 4
  %116 = tail call i32 @regmap_write(ptr noundef %115, i32 noundef 8, i32 noundef 63) #11
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %240

118:                                              ; preds = %114
  %119 = load ptr, ptr %15, align 4
  %120 = tail call i32 @regmap_write(ptr noundef %119, i32 noundef 9, i32 noundef 16) #11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %240

122:                                              ; preds = %118
  %123 = load ptr, ptr %15, align 4
  %124 = tail call i32 @regmap_write(ptr noundef %123, i32 noundef 9, i32 noundef 0) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %240

126:                                              ; preds = %122
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 50000, i32 noundef 2) #11
  %127 = load ptr, ptr %15, align 4
  %128 = call i32 @regmap_read(ptr noundef %127, i32 noundef 66, ptr noundef nonnull %3) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %240

130:                                              ; preds = %126
  %131 = load i32, ptr %3, align 4
  %132 = load ptr, ptr %15, align 4
  %133 = call i32 @regmap_write(ptr noundef %132, i32 noundef 62, i32 noundef 16) #11
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %240

135:                                              ; preds = %130
  %136 = load ptr, ptr %15, align 4
  %137 = call i32 @regmap_write(ptr noundef %136, i32 noundef 8, i32 noundef 47) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %240

139:                                              ; preds = %135
  %140 = load ptr, ptr %15, align 4
  %141 = call i32 @regmap_write(ptr noundef %140, i32 noundef 8, i32 noundef 63) #11
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %240

143:                                              ; preds = %139
  %144 = load ptr, ptr %15, align 4
  %145 = call i32 @regmap_write(ptr noundef %144, i32 noundef 9, i32 noundef 16) #11
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %240

147:                                              ; preds = %143
  %148 = load ptr, ptr %15, align 4
  %149 = call i32 @regmap_write(ptr noundef %148, i32 noundef 9, i32 noundef 0) #11
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %240

151:                                              ; preds = %147
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 50000, i32 noundef 2) #11
  %152 = load ptr, ptr %15, align 4
  %153 = call i32 @regmap_read(ptr noundef %152, i32 noundef 66, ptr noundef nonnull %3) #11
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %240

155:                                              ; preds = %151
  %156 = load i32, ptr %3, align 4
  %157 = and i32 %156, 255
  %158 = and i32 %131, 255
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load ptr, ptr %15, align 4
  %162 = call i32 @regmap_write(ptr noundef %161, i32 noundef 62, i32 noundef 17) #11
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %240

164:                                              ; preds = %160, %155
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #11
  %165 = load ptr, ptr %15, align 4
  %166 = call i32 @regmap_read(ptr noundef %165, i32 noundef 45, ptr noundef nonnull %3) #11
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %240

168:                                              ; preds = %164
  %169 = load ptr, ptr %15, align 4
  %170 = load i32, ptr %3, align 4
  %171 = call i32 @regmap_write(ptr noundef %169, i32 noundef 45, i32 noundef %170) #11
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %240

173:                                              ; preds = %168
  %174 = load ptr, ptr %15, align 4
  %175 = call i32 @regmap_read(ptr noundef %174, i32 noundef 46, ptr noundef nonnull %3) #11
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %240

177:                                              ; preds = %173
  %178 = load ptr, ptr %15, align 4
  %179 = load i32, ptr %3, align 4
  %180 = call i32 @regmap_write(ptr noundef %178, i32 noundef 46, i32 noundef %179) #11
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %240

182:                                              ; preds = %177
  %183 = load ptr, ptr %15, align 4
  %184 = call i32 @regmap_read(ptr noundef %183, i32 noundef 39, ptr noundef nonnull %3) #11
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %240

186:                                              ; preds = %182
  %187 = load i32, ptr %3, align 4
  %188 = load ptr, ptr %15, align 4
  %189 = call i32 @regmap_read(ptr noundef %188, i32 noundef 131, ptr noundef nonnull %3) #11
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %240

191:                                              ; preds = %186
  %192 = load i32, ptr %3, align 4
  %193 = xor i32 %192, %187
  %194 = and i32 %193, 112
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %195, i32 %53, i32 %58
  %197 = select i1 %195, i8 %44, i8 %46
  %198 = select i1 %195, i32 %45, i32 %47
  %199 = zext i8 %197 to i32
  %200 = icmp eq i8 %197, 3
  %201 = trunc i8 %197 to i4
  switch i4 %201, label %212 [
    i4 6, label %202
    i4 3, label %202
  ]

202:                                              ; preds = %191, %191
  %203 = load ptr, ptr %15, align 4
  %204 = call i32 @regmap_write(ptr noundef %203, i32 noundef 54, i32 noundef 10) #11
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %240

206:                                              ; preds = %202
  %207 = mul i32 %14, 18000
  %208 = mul i32 %207, %199
  %209 = udiv i32 %208, 27000
  %210 = add nsw i32 %209, -1024
  %211 = lshr i32 %210, 1
  br label %212

212:                                              ; preds = %206, %191
  %213 = phi i32 [ %211, %206 ], [ %196, %191 ]
  %214 = phi i32 [ 18, %206 ], [ 27, %191 ]
  %215 = lshr i32 %213, 8
  %216 = and i32 %215, 15
  %217 = load ptr, ptr %15, align 4
  %218 = or i32 %198, %216
  %219 = or i32 %218, 128
  %220 = call i32 @regmap_write(ptr noundef %217, i32 noundef 39, i32 noundef %219) #11
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %240

222:                                              ; preds = %212
  %223 = load ptr, ptr %15, align 4
  %224 = and i32 %213, 255
  %225 = call i32 @regmap_write(ptr noundef %223, i32 noundef 40, i32 noundef %224) #11
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %222
  %228 = load ptr, ptr %15, align 4
  %229 = call i32 @regmap_write(ptr noundef %228, i32 noundef 41, i32 noundef 128) #11
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %227
  %232 = load ptr, ptr %15, align 4
  %233 = call i32 @regmap_write(ptr noundef %232, i32 noundef 49, i32 noundef 3) #11
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = select i1 %200, i32 206, i32 138
  store i32 %236, ptr %3, align 4
  %237 = load ptr, ptr %15, align 4
  %238 = call i32 @regmap_write(ptr noundef %237, i32 noundef 59, i32 noundef %236) #11
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %235, %231, %227, %222, %212, %202, %186, %182, %177, %173, %168, %164, %160, %151, %147, %143, %139, %135, %130, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %86, %82, %77, %70, %65, %43, %23, %19, %1
  %241 = phi i32 [ %238, %235 ], [ %233, %231 ], [ %229, %227 ], [ %225, %222 ], [ %220, %212 ], [ %204, %202 ], [ %189, %186 ], [ %184, %182 ], [ %180, %177 ], [ %175, %173 ], [ %171, %168 ], [ %166, %164 ], [ %162, %160 ], [ %153, %151 ], [ %149, %147 ], [ %145, %143 ], [ %141, %139 ], [ %137, %135 ], [ %133, %130 ], [ %128, %126 ], [ %124, %122 ], [ %120, %118 ], [ %116, %114 ], [ %112, %110 ], [ %108, %106 ], [ %104, %102 ], [ %100, %98 ], [ %96, %94 ], [ %92, %90 ], [ %88, %86 ], [ %84, %82 ], [ %80, %77 ], [ %75, %70 ], [ %68, %65 ], [ %63, %43 ], [ %25, %23 ], [ %21, %19 ], [ %17, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %390

242:                                              ; preds = %235
  %243 = mul i32 %213, 54000
  %244 = add i32 %243, 27648000
  %245 = udiv i32 %244, %214
  %246 = udiv i32 %245, %199
  %247 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %5, i32 0, i32 3
  store i32 %246, ptr %247, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %248 = load i32, ptr %7, align 4
  %249 = udiv i32 %248, 1000
  %250 = mul nuw nsw i32 %249, 9
  %251 = udiv i32 %250, 14
  %252 = add nuw nsw i32 %10, 2000
  %253 = add nuw nsw i32 %252, %251
  %254 = call i32 @llvm.umax.i32(i32 %253, i32 6000) #11
  %255 = call i32 @llvm.umin.i32(i32 %254, i32 43000) #11
  %256 = trunc i32 %255 to i16
  %257 = udiv i16 %256, 1000
  %258 = zext i16 %257 to i32
  %259 = load ptr, ptr %15, align 4
  %260 = call i32 @regmap_write(ptr noundef %259, i32 noundef 64, i32 noundef %258) #11
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %390

262:                                              ; preds = %242
  %263 = load ptr, ptr %15, align 4
  %264 = call i32 @regmap_write(ptr noundef %263, i32 noundef 0, i32 noundef 1) #11
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %390

266:                                              ; preds = %262
  %267 = load ptr, ptr %15, align 4
  %268 = call i32 @regmap_write(ptr noundef %267, i32 noundef 0, i32 noundef 0) #11
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %390

270:                                              ; preds = %266
  %271 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %272 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %271, i32 0, i32 2
  %273 = load ptr, ptr %272, align 4
  %274 = call i32 @regmap_read(ptr noundef %273, i32 noundef 21, ptr noundef nonnull %2) #11
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %388

276:                                              ; preds = %270
  %277 = load i32, ptr %2, align 4
  %278 = load i32, ptr %7, align 4
  %279 = icmp ugt i32 %278, 45010000
  %280 = and i32 %277, 253
  %281 = or i32 %280, 2
  %282 = select i1 %279, i32 14, i32 10
  %283 = select i1 %279, i32 %281, i32 %280
  %284 = select i1 %279, i32 115, i32 96
  %285 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %286 = load i32, ptr %285, align 4
  %287 = icmp eq i32 %286, 5
  %288 = select i1 %287, i32 96000, i32 144000
  %289 = shl nuw nsw i32 %283, 8
  %290 = and i32 %289, 256
  %291 = or i32 %290, %284
  %292 = mul nuw nsw i32 %291, 36000
  %293 = add nuw nsw i32 %292, 1152000
  %294 = udiv i32 %293, %288
  %295 = icmp ult i32 %294, 33
  br i1 %295, label %321, label %296

296:                                              ; preds = %276
  %297 = icmp ult i32 %294, 49
  br i1 %297, label %298, label %306

298:                                              ; preds = %296
  %299 = trunc i32 %294 to i8
  %300 = udiv i8 %299, 3
  %301 = zext i8 %300 to i32
  %302 = sub nuw nsw i32 %294, %301
  %303 = lshr i32 %302, 1
  %304 = sub nsw i32 %302, %303
  %305 = trunc i32 %304 to i8
  br label %321

306:                                              ; preds = %296
  %307 = icmp ult i32 %294, 65
  br i1 %307, label %308, label %321

308:                                              ; preds = %306
  %309 = lshr i32 %294, 2
  %310 = trunc i32 %309 to i8
  %311 = sub nuw nsw i32 %294, %309
  %312 = trunc i32 %311 to i8
  %313 = udiv i8 %312, 3
  %314 = zext i8 %313 to i32
  %315 = sub nuw nsw i32 %311, %314
  %316 = lshr i32 %315, 1
  %317 = trunc i32 %316 to i8
  %318 = trunc i32 %315 to i8
  %319 = sub nsw i8 %318, %317
  %320 = shl i8 %319, 4
  br label %321

321:                                              ; preds = %308, %306, %298, %276
  %322 = phi i32 [ 2, %298 ], [ 3, %308 ], [ 1, %276 ], [ 3, %306 ]
  %323 = phi i8 [ %300, %298 ], [ %310, %308 ], [ 0, %276 ], [ 16, %306 ]
  %324 = phi i32 [ %303, %298 ], [ %314, %308 ], [ 16, %276 ], [ 16, %306 ]
  %325 = phi i8 [ %305, %298 ], [ %317, %308 ], [ 16, %276 ], [ 16, %306 ]
  %326 = phi i8 [ 0, %298 ], [ %320, %308 ], [ 0, %276 ], [ 0, %306 ]
  %327 = load ptr, ptr %272, align 4
  %328 = call i32 @regmap_read(ptr noundef %327, i32 noundef 29, ptr noundef nonnull %2) #11
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %388

330:                                              ; preds = %321
  %331 = icmp eq i8 %325, 16
  %332 = select i1 %331, i8 0, i8 %325
  %333 = icmp eq i8 %323, 16
  %334 = select i1 %333, i8 0, i8 %323
  %335 = load i32, ptr %2, align 4
  %336 = and i32 %335, 252
  %337 = or i32 %336, %322
  %338 = add i8 %332, %326
  %339 = trunc i32 %324 to i8
  %340 = shl i8 %339, 4
  %341 = add nuw i8 %340, %334
  %342 = load ptr, ptr %272, align 4
  %343 = call i32 @regmap_write(ptr noundef %342, i32 noundef 5, i32 noundef 64) #11
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %388

345:                                              ; preds = %330
  %346 = load ptr, ptr %272, align 4
  %347 = call i32 @regmap_write(ptr noundef %346, i32 noundef 17, i32 noundef 8) #11
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %388

349:                                              ; preds = %345
  %350 = load ptr, ptr %272, align 4
  %351 = call i32 @regmap_write(ptr noundef %350, i32 noundef 21, i32 noundef %283) #11
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %388

353:                                              ; preds = %349
  %354 = load ptr, ptr %272, align 4
  %355 = call i32 @regmap_write(ptr noundef %354, i32 noundef 22, i32 noundef %284) #11
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %388

357:                                              ; preds = %353
  %358 = load ptr, ptr %272, align 4
  %359 = call i32 @regmap_write(ptr noundef %358, i32 noundef 29, i32 noundef %337) #11
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %388

361:                                              ; preds = %357
  %362 = load ptr, ptr %272, align 4
  %363 = zext i8 %338 to i32
  %364 = call i32 @regmap_write(ptr noundef %362, i32 noundef 30, i32 noundef %363) #11
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %388

366:                                              ; preds = %361
  %367 = load ptr, ptr %272, align 4
  %368 = zext i8 %341 to i32
  %369 = call i32 @regmap_write(ptr noundef %367, i32 noundef 31, i32 noundef %368) #11
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %388

371:                                              ; preds = %366
  %372 = load ptr, ptr %272, align 4
  %373 = call i32 @regmap_write(ptr noundef %372, i32 noundef 23, i32 noundef 193) #11
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %388

375:                                              ; preds = %371
  %376 = load ptr, ptr %272, align 4
  %377 = call i32 @regmap_write(ptr noundef %376, i32 noundef 23, i32 noundef 129) #11
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %375
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #11
  %380 = load ptr, ptr %272, align 4
  %381 = call i32 @regmap_write(ptr noundef %380, i32 noundef 5, i32 noundef 0) #11
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %379
  %384 = load ptr, ptr %272, align 4
  %385 = call i32 @regmap_write(ptr noundef %384, i32 noundef 17, i32 noundef %282) #11
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %383
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #11
  br label %388

388:                                              ; preds = %387, %383, %379, %375, %371, %366, %361, %357, %353, %349, %345, %330, %321, %270
  %389 = phi i32 [ %274, %270 ], [ %328, %321 ], [ %343, %330 ], [ %347, %345 ], [ %351, %349 ], [ %355, %353 ], [ %359, %357 ], [ %364, %361 ], [ %369, %366 ], [ %373, %371 ], [ %377, %375 ], [ %381, %379 ], [ %385, %383 ], [ 0, %387 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %390

390:                                              ; preds = %388, %266, %262, %242, %240
  %391 = phi i32 [ %260, %242 ], [ %264, %262 ], [ %268, %266 ], [ %389, %388 ], [ %241, %240 ]
  ret i32 %391
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @m88rs6000t_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @m88rs6000t_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs6000t_get_rf_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 90, ptr noundef nonnull %3) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %97

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 15
  %13 = load ptr, ptr %6, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 95, ptr noundef nonnull %3) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %97

16:                                               ; preds = %10
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, 15
  %19 = load ptr, ptr %6, align 4
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef 63, ptr noundef nonnull %3) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %97

22:                                               ; preds = %16
  %23 = load i32, ptr %3, align 4
  %24 = lshr i32 %23, 4
  %25 = and i32 %24, 7
  %26 = load ptr, ptr %6, align 4
  %27 = call i32 @regmap_read(ptr noundef %26, i32 noundef 119, ptr noundef nonnull %3) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %22
  %30 = load i32, ptr %3, align 4
  %31 = lshr i32 %30, 4
  %32 = and i32 %31, 15
  %33 = load ptr, ptr %6, align 4
  %34 = call i32 @regmap_read(ptr noundef %33, i32 noundef 118, ptr noundef nonnull %3) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %29
  %37 = load i32, ptr %3, align 4
  %38 = lshr i32 %37, 2
  %39 = and i32 %38, 15
  %40 = call i32 @llvm.umin.i32(i32 %12, i32 12)
  br label %41

41:                                               ; preds = %41, %36
  %42 = phi i32 [ 0, %36 ], [ %47, %41 ]
  %43 = phi i32 [ 0, %36 ], [ %46, %41 ]
  %44 = getelementptr [13 x i32], ptr @__const.m88rs6000t_get_rf_strength.RFGS, i32 0, i32 %42
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = add nuw nsw i32 %42, 1
  %48 = icmp eq i32 %42, %40
  br i1 %48, label %49, label %41

49:                                               ; preds = %41
  %50 = icmp eq i32 %12, 0
  %51 = add i32 %46, 400
  %52 = select i1 %50, i32 %51, i32 %46
  %53 = icmp eq i32 %12, 1
  %54 = add i32 %52, 300
  %55 = select i1 %53, i32 %54, i32 %52
  %56 = icmp eq i32 %12, 2
  %57 = add i32 %55, 200
  %58 = select i1 %56, i32 %57, i32 %55
  %59 = add i32 %58, 100
  %60 = call i32 @llvm.umin.i32(i32 %18, i32 11)
  br label %61

61:                                               ; preds = %61, %49
  %62 = phi i32 [ 0, %49 ], [ %67, %61 ]
  %63 = phi i32 [ 0, %49 ], [ %66, %61 ]
  %64 = getelementptr [12 x i32], ptr @__const.m88rs6000t_get_rf_strength.IFGS, i32 0, i32 %62
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  %67 = add nuw nsw i32 %62, 1
  %68 = icmp eq i32 %62, %60
  br i1 %68, label %69, label %61

69:                                               ; preds = %61
  %70 = icmp eq i32 %12, 3
  %71 = select i1 %70, i32 %59, i32 %58
  %72 = call i32 @llvm.umin.i32(i32 %32, i32 13)
  br label %73

73:                                               ; preds = %73, %69
  %74 = phi i32 [ 0, %69 ], [ %79, %73 ]
  %75 = phi i32 [ 0, %69 ], [ %78, %73 ]
  %76 = getelementptr [14 x i32], ptr @__const.m88rs6000t_get_rf_strength.BBGS, i32 0, i32 %74
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %75
  %79 = add nuw nsw i32 %74, 1
  %80 = icmp eq i32 %74, %72
  br i1 %80, label %81, label %73

81:                                               ; preds = %73
  %82 = and i32 %37, 3
  %83 = mul nuw nsw i32 %25, 65246
  %84 = mul nuw nsw i32 %39, 46
  %85 = mul nuw nsw i32 %82, 290
  %86 = add nuw nsw i32 %85, %83
  %87 = add nuw nsw i32 %86, %84
  %88 = add i32 %87, %71
  %89 = add i32 %88, %66
  %90 = add i32 %89, %78
  %91 = and i32 %90, 65535
  %92 = call i32 @llvm.umax.i32(i32 %91, i32 1000)
  %93 = call i32 @llvm.usub.sat.i32(i32 10500, i32 %92)
  %94 = mul nuw nsw i32 %93, 65535
  %95 = udiv i32 %94, 9500
  %96 = trunc i32 %95 to i16
  store i16 %96, ptr %1, align 2
  br label %97

97:                                               ; preds = %81, %29, %22, %16, %10, %2
  %98 = phi i32 [ %8, %2 ], [ %14, %10 ], [ %20, %16 ], [ %27, %22 ], [ %34, %29 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %98
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
