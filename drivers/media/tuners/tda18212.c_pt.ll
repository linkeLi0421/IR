; ModuleID = '/llk/IR/drivers/media/tuners/tda18212.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18212.c"
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
%struct.tda18212_config = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.tda18212_dev = type { %struct.tda18212_config, ptr, ptr, i32 }
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

@tda18212_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda18212\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description249 = internal constant [48 x i8] c"description=NXP TDA18212HN silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@tda18212_driver = internal global %struct.i2c_driver { i32 0, ptr @tda18212_probe, ptr @tda18212_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda18212_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"tda18212\00", align 1
@tda18212_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"kzalloc() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"NXP TDA18212HN/%s successfully identified\0A\00", align 1
@tda18212_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18212\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 864000000, i32 1000, i32 0, i32 0, i32 0 }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda18212_set_params, ptr null, ptr null, ptr null, ptr null, ptr @tda18212_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tda18212_set_params.bw_params = internal unnamed_addr constant [10 x [3 x i8]] [[3 x i8] c"\B3 \03", [3 x i8] c"\B31\01", [3 x i8] c"\B3\22\01", [3 x i8] c"\BC \03", [3 x i8] c"\BCr\03", [3 x i8] c"\BC\22\01", [3 x i8] c"\92P\03", [3 x i8] c"\92S\03", [3 x i8] c"} c", [3 x i8] c"} c"], align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_i2c__tda18212_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @tda18212_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @tda18212_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tda18212_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18212_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tda18212_config, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 36) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #11
  br label %43

13:                                               ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef align 4 dereferenceable(24) %5, i32 24, i1 false)
  %14 = getelementptr inbounds %struct.tda18212_dev, ptr %9, i32 0, i32 1
  store ptr %0, ptr %14, align 8
  %15 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tda18212_probe.regmap_config, ptr noundef null, ptr noundef null) #9
  %16 = getelementptr inbounds %struct.tda18212_dev, ptr %9, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i32
  br label %43

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 28
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %7, i32 noundef 1) #9
  br label %26

26:                                               ; preds = %24, %20
  %27 = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %3) #9
  %28 = load ptr, ptr %21, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 %28(ptr noundef %7, i32 noundef 0) #9
  br label %32

32:                                               ; preds = %30, %26
  %33 = icmp eq i32 %27, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %32
  %35 = load i32, ptr %3, align 4
  switch i32 %35, label %43 [
    i32 199, label %37
    i32 71, label %36
  ]

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi ptr [ @.str.3, %36 ], [ @.str.2, %34 ]
  %39 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.4, ptr noundef nonnull %38) #11
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 4
  store ptr %9, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %41, ptr noundef nonnull align 4 dereferenceable(220) @tda18212_tuner_ops, i32 220, i1 false)
  %42 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %9, ptr %42, align 8
  br label %45

43:                                               ; preds = %34, %32, %18, %11
  %44 = phi i32 [ -12, %11 ], [ %19, %18 ], [ %27, %32 ], [ -19, %34 ]
  call void @kfree(ptr noundef %9) #9
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi i32 [ %44, %43 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18212_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tda18212_config, ptr %3, i32 0, i32 10
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18212_set_params(ptr noundef %0) #2 {
  %2 = alloca [9 x i8], align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %2, i8 0, i32 9, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef 1) #9
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %88 [
    i32 11, label %14
    i32 2, label %16
    i32 3, label %18
    i32 16, label %25
    i32 1, label %34
    i32 18, label %34
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tda18212_config, ptr %4, i32 0, i32 8
  br label %36

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tda18212_config, ptr %4, i32 0, i32 9
  br label %36

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %88 [
    i32 6000000, label %36
    i32 7000000, label %21
    i32 8000000, label %23
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tda18212_config, ptr %4, i32 0, i32 1
  br label %36

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tda18212_config, ptr %4, i32 0, i32 2
  br label %36

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %88 [
    i32 6000000, label %28
    i32 7000000, label %30
    i32 8000000, label %32
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tda18212_config, ptr %4, i32 0, i32 4
  br label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tda18212_config, ptr %4, i32 0, i32 5
  br label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tda18212_config, ptr %4, i32 0, i32 6
  br label %36

34:                                               ; preds = %11, %11
  %35 = getelementptr inbounds %struct.tda18212_config, ptr %4, i32 0, i32 7
  br label %36

36:                                               ; preds = %34, %32, %30, %28, %23, %21, %18, %16, %14
  %37 = phi i32 [ 7, %34 ], [ 5, %32 ], [ 4, %30 ], [ 3, %28 ], [ 2, %23 ], [ 1, %21 ], [ 9, %16 ], [ 8, %14 ], [ 0, %18 ]
  %38 = phi ptr [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %24, %23 ], [ %22, %21 ], [ %17, %16 ], [ %15, %14 ], [ %4, %18 ]
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.tda18212_dev, ptr %4, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr [10 x [3 x i8]], ptr @tda18212_set_params.bw_params, i32 0, i32 %37
  %44 = getelementptr [10 x [3 x i8]], ptr @tda18212_set_params.bw_params, i32 0, i32 %37, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 35, i32 noundef %46) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %36
  %50 = load ptr, ptr %41, align 4
  %51 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 6, i32 noundef 0) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = load ptr, ptr %41, align 4
  %55 = load i8, ptr %43, align 1
  %56 = zext i8 %55 to i32
  %57 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 15, i32 noundef %56) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %53
  store i8 2, ptr %2, align 1
  %60 = getelementptr [10 x [3 x i8]], ptr @tda18212_set_params.bw_params, i32 0, i32 %37, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 1
  store i8 %61, ptr %62, align 1
  %63 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 2
  store i8 3, ptr %63, align 1
  %64 = add nuw nsw i32 %40, 25
  %65 = udiv i32 %64, 50
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 3
  store i8 %66, ptr %67, align 1
  %68 = load i32, ptr %5, align 4
  %69 = udiv i32 %68, 1000
  %70 = lshr i32 %69, 16
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 4
  store i8 %71, ptr %72, align 1
  %73 = lshr i32 %69, 8
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 5
  store i8 %74, ptr %75, align 1
  %76 = trunc i32 %69 to i8
  %77 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 6
  store i8 %76, ptr %77, align 1
  %78 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 7
  store i8 -63, ptr %78, align 1
  %79 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 8
  store i8 1, ptr %79, align 1
  %80 = load ptr, ptr %41, align 4
  %81 = call i32 @regmap_bulk_write(ptr noundef %80, i32 noundef 18, ptr noundef nonnull %2, i32 noundef 9) #9
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %59
  %84 = load i8, ptr %67, align 1
  %85 = zext i8 %84 to i32
  %86 = mul nuw nsw i32 %85, 50000
  %87 = getelementptr inbounds %struct.tda18212_dev, ptr %4, i32 0, i32 3
  store i32 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %83, %59, %53, %49, %36, %25, %18, %11
  %89 = phi i32 [ %47, %36 ], [ %51, %49 ], [ %57, %53 ], [ %81, %59 ], [ 0, %83 ], [ -22, %18 ], [ -22, %25 ], [ -22, %11 ]
  %90 = load ptr, ptr %6, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = call i32 %90(ptr noundef %0, i32 noundef 0) #9
  br label %94

94:                                               ; preds = %92, %88
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #9
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda18212_get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda18212_dev, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
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
