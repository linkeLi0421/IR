; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tc90522.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tc90522.c"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_val = type { i8, i8 }
%struct.tc90522_state = type { %struct.tc90522_config, %struct.dvb_frontend, ptr, %struct.i2c_adapter, i8 }
%struct.tc90522_config = type { ptr, ptr, i8 }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@tc90522_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tc90522sat\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tc90522ter\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description249 = internal constant [37 x i8] c"description=Toshiba TC90522 frontend\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [23 x i8] c"author=Akihiro TSUKADA\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@tc90522_driver = internal global %struct.i2c_driver { i32 0, ptr @tc90522_probe, ptr @tc90522_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc90522_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"tc90522\00", align 1
@tc90522_ops_sat = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Toshiba TC90522 ISDB-S module\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1769985 }, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @tc90522_init, ptr @tc90522_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc90522_set_frontend, ptr @tc90522_get_tune_settings, ptr @tc90522s_get_frontend, ptr @tc90522s_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@tc90522_ops_ter = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Toshiba TC90522 ISDB-T module\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 770000000, i32 142857, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @tc90522_init, ptr @tc90522_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc90522_set_frontend, ptr @tc90522_get_tune_settings, ptr @tc90522t_get_frontend, ptr @tc90522t_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@tc90522_tuner_i2c_algo = internal constant %struct.i2c_algorithm { ptr @tc90522_master_xfer, ptr null, ptr null, ptr null, ptr @tc90522_functionality, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"tc90522_sub\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Toshiba TC90522 attached.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@wakeup_sat = internal constant %struct.reg_val { i8 23, i8 0 }, align 1
@wakeup_ter = internal constant %struct.reg_val { i8 3, i8 -128 }, align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"(%s) failed. [adap%d-fe%d]\0A\00", align 1
@__func__.tc90522_init = private unnamed_addr constant [13 x i8] c"tc90522_init\00", align 1
@__const.tc90522_set_if_agc.agc_ter = private unnamed_addr constant [3 x %struct.reg_val] [%struct.reg_val { i8 37, i8 0 }, %struct.reg_val { i8 35, i8 76 }, %struct.reg_val { i8 1, i8 64 }], align 1
@sleep_sat = internal constant %struct.reg_val { i8 23, i8 1 }, align 1
@sleep_ter = internal constant %struct.reg_val { i8 3, i8 -112 }, align 1
@__func__.tc90522_sleep = private unnamed_addr constant [14 x i8] c"tc90522_sleep\00", align 1
@reset_sat = internal constant %struct.reg_val { i8 3, i8 1 }, align 1
@reset_ter = internal constant %struct.reg_val { i8 1, i8 64 }, align 1
@__func__.tc90522_set_frontend = private unnamed_addr constant [21 x i8] c"tc90522_set_frontend\00", align 1
@fec_conv_sat = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 1, i32 2, i32 3, i32 5, i32 7, i32 2], align 4
@tm_conv = internal unnamed_addr constant [4 x i32] [i32 0, i32 3, i32 1, i32 0], align 4
@fec_conv_ter = internal unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7, i32 0, i32 0, i32 0], align 4
@mod_conv = internal unnamed_addr constant [8 x i32] [i32 12, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_i2c__tc90522_id_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @tc90522_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @tc90522_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tc90522_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1720) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 2
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %10 = load ptr, ptr %9, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef align 4 dereferenceable(12) %10, i32 12, i1 false)
  %11 = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 1
  store ptr %11, ptr %4, align 8
  store ptr %11, ptr %10, align 4
  %12 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @tc90522_ops_sat, ptr @tc90522_ops_ter
  %16 = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %16, ptr noundef nonnull align 4 dereferenceable(544) %15, i32 544, i1 false)
  %17 = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 1, i32 3
  store ptr %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 3
  store ptr @__this_module, ptr %18, align 8
  %19 = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 3, i32 2
  store ptr @tc90522_tuner_i2c_algo, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 3, i32 9, i32 1
  store ptr %8, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 3, i32 12
  %22 = tail call i32 @strscpy(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef 48) #12
  %23 = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 3, i32 9, i32 8
  store ptr %4, ptr %23, align 8
  %24 = tail call i32 @i2c_add_adapter(ptr noundef %18) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.tc90522_config, ptr %4, i32 0, i32 1
  store ptr %18, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tc90522_config, ptr %10, i32 0, i32 1
  store ptr %18, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.2) #14
  br label %31

30:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #12
  br label %31

31:                                               ; preds = %30, %26, %2
  %32 = phi i32 [ %24, %30 ], [ 0, %26 ], [ -12, %2 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tc90522_state, ptr %3, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %4) #12
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522_init(ptr noundef %0) #2 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [4 x %struct.reg_val], align 8
  %4 = alloca [3 x %struct.reg_val], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 9
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %13 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %13, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.tc90522_state, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %17 = load i16, ptr %16, align 2
  store i16 %17, ptr %6, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr @wakeup_sat, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 1) #12
  %23 = icmp eq i32 %22, 0
  %24 = call i32 @llvm.smin.i32(i32 %22, i32 0)
  %25 = select i1 %23, i32 -5, i32 %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  br label %50

26:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %27 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %27, align 4, !annotation !8
  %28 = getelementptr inbounds %struct.tc90522_state, ptr %8, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  store i16 %31, ptr %5, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr @wakeup_ter, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %5, i32 noundef 1) #12
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 -5, i32 %36
  %39 = icmp slt i32 %38, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br i1 %39, label %53, label %40

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 30
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %61, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 41
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  store i32 1, ptr %45, align 4
  %49 = call i32 %42(ptr noundef %0) #12
  store i32 -1, ptr %45, align 4
  br label %50

50:                                               ; preds = %48, %12
  %51 = phi i32 [ %25, %12 ], [ %49, %48 ]
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50, %26
  %54 = phi i32 [ %51, %50 ], [ %38, %26 ]
  %55 = getelementptr inbounds %struct.tc90522_state, ptr %8, i32 0, i32 3, i32 9
  %56 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %60 = load i32, ptr %59, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tc90522_init, i32 noundef %58, i32 noundef %60) #14
  br label %134

61:                                               ; preds = %50, %44, %40
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i8 7, ptr %62, align 4
  br label %66

66:                                               ; preds = %65, %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 72902092788858890, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(6) @__const.tc90522_set_if_agc.agc_ter, i32 6, i1 false) #12
  %67 = load ptr, ptr %7, align 4
  %68 = load i8, ptr %9, align 4
  %69 = icmp eq i8 %68, 9
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.reg_val, ptr %3, i32 0, i32 1
  store i8 -1, ptr %71, align 1
  %72 = getelementptr inbounds [4 x %struct.reg_val], ptr %3, i32 0, i32 1, i32 1
  store i8 -79, ptr %72, align 1
  %73 = getelementptr inbounds [4 x %struct.reg_val], ptr %3, i32 0, i32 2, i32 1
  br label %76

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.reg_val, ptr %4, i32 0, i32 1
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi ptr [ %75, %74 ], [ %73, %70 ]
  %78 = phi ptr [ %4, %74 ], [ %3, %70 ]
  store i8 64, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %79 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %79, align 4, !annotation !8
  %80 = getelementptr inbounds %struct.tc90522_state, ptr %67, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 1
  %83 = load i16, ptr %82, align 2
  store i16 %83, ptr %2, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %78, ptr %85, align 4
  %86 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %2, i32 noundef 1) #12
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 -5, i32 %88
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %132, label %92

92:                                               ; preds = %76
  %93 = load ptr, ptr %80, align 4
  %94 = getelementptr %struct.reg_val, ptr %78, i32 1
  store ptr %94, ptr %85, align 4
  %95 = getelementptr inbounds %struct.i2c_client, ptr %93, i32 0, i32 3
  %96 = load ptr, ptr %95, align 8
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %2, i32 noundef 1) #12
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 -5, i32 %97
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %132, label %101

101:                                              ; preds = %92
  %102 = load ptr, ptr %80, align 4
  %103 = getelementptr %struct.reg_val, ptr %78, i32 2
  store ptr %103, ptr %85, align 4
  %104 = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 3
  %105 = load ptr, ptr %104, align 8
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %2, i32 noundef 1) #12
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 -5, i32 %106
  %109 = icmp slt i32 %108, 0
  %110 = xor i1 %69, true
  %111 = select i1 %109, i1 true, i1 %110
  %112 = select i1 %109, i32 %108, i32 0
  br i1 %111, label %132, label %113

113:                                              ; preds = %101
  %114 = load ptr, ptr %80, align 4
  %115 = getelementptr %struct.reg_val, ptr %78, i32 3
  store ptr %115, ptr %85, align 4
  %116 = getelementptr inbounds %struct.i2c_client, ptr %114, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8
  %118 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %2, i32 noundef 1) #12
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 -5, i32 %118
  %121 = icmp slt i32 %120, 0
  %122 = select i1 %121, i1 true, i1 %69
  %123 = select i1 %121, i32 %120, i32 0
  br i1 %122, label %132, label %124

124:                                              ; preds = %113
  %125 = load ptr, ptr %80, align 4
  %126 = getelementptr %struct.reg_val, ptr %78, i32 4
  store ptr %126, ptr %85, align 4
  %127 = getelementptr inbounds %struct.i2c_client, ptr %125, i32 0, i32 3
  %128 = load ptr, ptr %127, align 8
  %129 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %2, i32 noundef 1) #12
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, i32 -5, i32 %129
  br label %132

132:                                              ; preds = %124, %113, %101, %92, %76
  %133 = phi i32 [ %90, %76 ], [ %99, %92 ], [ %112, %101 ], [ %123, %113 ], [ %131, %124 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %134

134:                                              ; preds = %132, %53
  %135 = phi i32 [ %54, %53 ], [ %133, %132 ]
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522_sleep(ptr noundef %0) #2 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 9
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %10 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.tc90522_state, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  store i16 %14, ptr %3, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr @sleep_sat, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %3, i32 noundef 1) #12
  %20 = icmp eq i32 %19, 0
  %21 = call i32 @llvm.smin.i32(i32 %19, i32 0)
  %22 = select i1 %20, i32 -5, i32 %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %47

23:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %24 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %24, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.tc90522_state, ptr %5, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %28 = load i16, ptr %27, align 2
  store i16 %28, ptr %2, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr @sleep_ter, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %2, i32 noundef 1) #12
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 -5, i32 %33
  %36 = icmp slt i32 %35, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  br i1 %36, label %50, label %37

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 30
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 41
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  store i32 0, ptr %42, align 4
  %46 = call i32 %39(ptr noundef %0) #12
  store i32 -1, ptr %42, align 4
  br label %47

47:                                               ; preds = %45, %9
  %48 = phi i32 [ %22, %9 ], [ %46, %45 ]
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47, %23
  %51 = phi i32 [ %48, %47 ], [ %35, %23 ]
  %52 = getelementptr inbounds %struct.tc90522_state, ptr %5, i32 0, i32 3, i32 9
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %57 = load i32, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tc90522_sleep, i32 noundef %55, i32 noundef %57) #14
  br label %58

58:                                               ; preds = %50, %47, %41, %37
  %59 = phi i32 [ %51, %50 ], [ %48, %47 ], [ 0, %41 ], [ 0, %37 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522_set_frontend(ptr noundef %0) #2 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.reg_val, align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x %struct.reg_val], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %112, label %13

13:                                               ; preds = %1
  %14 = tail call i32 %11(ptr noundef %0) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %112, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 9
  br i1 %19, label %20, label %68

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 9437327, ptr %7, align 4
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.reg_val, ptr %7, i32 0, i32 1
  store i8 %24, ptr %25, align 1
  %26 = trunc i32 %22 to i8
  %27 = getelementptr inbounds [2 x %struct.reg_val], ptr %7, i32 0, i32 1, i32 1
  store i8 %26, ptr %27, align 1
  %28 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %29 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %29, align 4, !annotation !8
  %30 = getelementptr inbounds %struct.tc90522_state, ptr %28, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  store i16 %33, ptr %6, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %6, i32 noundef 1) #12
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 -5, i32 %38
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %20
  %43 = load ptr, ptr %30, align 4
  %44 = getelementptr inbounds %struct.reg_val, ptr %7, i32 1
  store ptr %44, ptr %35, align 4
  %45 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %6, i32 noundef 1) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42, %20
  %50 = phi i32 [ %40, %20 ], [ -5, %42 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %112

51:                                               ; preds = %42
  %52 = call i32 @llvm.smin.i32(i32 %47, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %53 = icmp slt i32 %47, 0
  br i1 %53, label %112, label %54

54:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %55 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %55, align 4, !annotation !8
  %56 = getelementptr inbounds %struct.tc90522_state, ptr %9, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  store i16 %59, ptr %5, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr @reset_sat, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  %64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %5, i32 noundef 1) #12
  %65 = icmp eq i32 %64, 0
  %66 = call i32 @llvm.smin.i32(i32 %64, i32 0)
  %67 = select i1 %65, i32 -5, i32 %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br label %109

68:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 113, ptr %4, align 2, !annotation !8
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, 7
  %72 = xor i8 %71, 7
  %73 = trunc i8 %72 to i3
  %74 = tail call i3 @llvm.bitreverse.i3(i3 %73) #12
  %75 = and i3 %74, -2
  %76 = zext i3 %75 to i8
  %77 = lshr i8 %72, 2
  %78 = or i8 %77, %76
  %79 = getelementptr inbounds %struct.reg_val, ptr %4, i32 0, i32 1
  store i8 %78, ptr %79, align 1
  %80 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %81 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %81, align 4, !annotation !8
  %82 = getelementptr inbounds %struct.tc90522_state, ptr %80, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 1
  %85 = load i16, ptr %84, align 2
  store i16 %85, ptr %3, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %86, align 2
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %87, align 4
  %88 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 3
  %89 = load ptr, ptr %88, align 8
  %90 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %3, i32 noundef 1) #12
  %91 = icmp eq i32 %90, 0
  %92 = call i32 @llvm.smin.i32(i32 %90, i32 0) #12
  %93 = select i1 %91, i32 -5, i32 %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %96 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %96, align 4, !annotation !8
  %97 = getelementptr inbounds %struct.tc90522_state, ptr %9, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %100 = load i16, ptr %99, align 2
  store i16 %100, ptr %2, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr @reset_ter, ptr %102, align 4
  %103 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 3
  %104 = load ptr, ptr %103, align 8
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %2, i32 noundef 1) #12
  %106 = icmp eq i32 %105, 0
  %107 = call i32 @llvm.smin.i32(i32 %105, i32 0)
  %108 = select i1 %106, i32 -5, i32 %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  br label %109

109:                                              ; preds = %95, %54
  %110 = phi i32 [ %67, %54 ], [ %108, %95 ]
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109, %68, %51, %49, %13, %1
  %113 = phi i32 [ %14, %13 ], [ %52, %51 ], [ %110, %109 ], [ %93, %68 ], [ %50, %49 ], [ -19, %1 ]
  %114 = getelementptr inbounds %struct.tc90522_state, ptr %9, i32 0, i32 3, i32 9
  %115 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %119 = load i32, ptr %118, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %114, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tc90522_set_frontend, i32 noundef %117, i32 noundef %119) #14
  br label %120

120:                                              ; preds = %112, %109
  %121 = phi i32 [ %113, %112 ], [ 0, %109 ]
  ret i32 %121
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tc90522_get_tune_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 9
  %6 = select i1 %5, i32 250, i32 400
  %7 = select i1 %5, i32 1000, i32 142857
  %8 = select i1 %5, i32 2000, i32 142857
  store i32 %6, ptr %1, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %8, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522s_get_frontend(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [10 x i8], align 1
  %10 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %9, i8 0, i32 10, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 15
  store i32 9, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 28860000, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 -26, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #12, !annotation !8
  %16 = getelementptr inbounds %struct.tc90522_state, ptr %12, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  store i16 %19, ptr %8, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 1, ptr %15, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %23 = load i16, ptr %18, align 2
  store i16 %23, ptr %22, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %9, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %8, i32 noundef 2) #12
  %30 = icmp eq i32 %29, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  br i1 %30, label %31, label %70

31:                                               ; preds = %2
  %32 = load i8, ptr %9, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %34, %37
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 24
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = lshr i8 %41, 4
  %43 = and i8 %42, 7
  %44 = zext i8 %43 to i32
  %45 = icmp eq i8 %43, 7
  %46 = select i1 %45, i32 9, i32 0
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr [8 x i32], ptr @fec_conv_sat, i32 0, i32 %44
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 0, i32 1
  store i32 %49, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 0, i32 2
  store i32 %46, ptr %53, align 4
  %54 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 63
  store i8 %56, ptr %51, align 4
  %57 = and i8 %41, 7
  %58 = zext i8 %57 to i32
  %59 = getelementptr [8 x i32], ptr @fec_conv_sat, i32 0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1
  %62 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1, i32 1
  store i32 %60, ptr %62, align 4
  %63 = icmp eq i8 %57, 0
  %64 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %65, 63
  %67 = select i1 %63, i8 0, i8 %66
  store i8 %67, ptr %61, align 4
  %68 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1, i32 2
  store i32 0, ptr %68, align 4
  %69 = select i1 %63, i32 1, i32 2
  br label %70

70:                                               ; preds = %31, %2
  %71 = phi i32 [ %69, %31 ], [ 0, %2 ]
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 42
  store i8 0, ptr %72, align 1
  %73 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 13
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  store i16 0, ptr %10, align 2, !annotation !8
  %77 = call i32 %74(ptr noundef %0, ptr noundef nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  br label %78

78:                                               ; preds = %76, %70
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43
  store i8 1, ptr %79, align 1
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43, i32 1
  store i8 0, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 -68, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %81 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %81, i8 0, i32 16, i1 false) #12, !annotation !8
  %82 = load ptr, ptr %16, align 4
  %83 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 1
  %84 = load i16, ptr %83, align 2
  store i16 %84, ptr %6, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %85, align 2
  store i16 1, ptr %81, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %86, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %88 = load i16, ptr %83, align 2
  store i16 %88, ptr %87, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %89, align 2
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %90, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %9, ptr %91, align 4
  %92 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 3
  %93 = load ptr, ptr %92, align 8
  %94 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %6, i32 noundef 2) #12
  %95 = icmp eq i32 %94, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %96 = load i8, ptr %9, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %98, %101
  %103 = select i1 %95, i32 %102, i32 0
  %104 = icmp ugt i32 %103, 2999
  br i1 %104, label %105, label %133

105:                                              ; preds = %78
  %106 = add nsw i32 %103, -3000
  %107 = shl i32 %106, 16
  %108 = call i32 @int_sqrt(i32 noundef %107) #12
  %109 = mul i32 %106, %106
  %110 = zext i32 %109 to i64
  %111 = mul nsw i64 %110, -16346
  %112 = zext i32 %108 to i64
  %113 = mul i64 %111, %112
  %114 = call i64 @div64_s64(i64 noundef %113, i64 noundef 10) #12
  %115 = ashr i64 %114, 35
  %116 = mul nuw nsw i64 %110, 14341
  %117 = lshr i64 %116, 21
  %118 = zext i32 %106 to i64
  %119 = mul nuw nsw i64 %118, 50259
  %120 = mul i64 %119, %112
  %121 = ashr i64 %120, 23
  %122 = mul nuw nsw i64 %118, 88977
  %123 = lshr i64 %122, 9
  %124 = mul nuw nsw i64 %112, 89565
  %125 = lshr i64 %124, 11
  %126 = add nuw nsw i64 %123, 470856
  %127 = add nuw nsw i64 %126, %117
  %128 = add nsw i64 %127, %115
  %129 = add nsw i64 %125, %121
  %130 = sub nsw i64 %128, %129
  %131 = ashr i64 %130, 3
  %132 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43, i32 1, i32 0, i32 1
  store i64 %131, ptr %132, align 1
  store i8 1, ptr %80, align 1
  br label %133

133:                                              ; preds = %105, %78
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(37) %135, i8 0, i32 36, i1 false)
  %136 = trunc i32 %71 to i8
  store i8 %136, ptr %134, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -21, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %137 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %137, i8 0, i32 16, i1 false) #12, !annotation !8
  %138 = load ptr, ptr %16, align 4
  %139 = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 1
  %140 = load i16, ptr %139, align 2
  store i16 %140, ptr %4, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %141, align 2
  store i16 1, ptr %137, align 4
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %142, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %144 = load i16, ptr %139, align 2
  store i16 %144, ptr %143, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %145, align 2
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 10, ptr %146, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %9, ptr %147, align 4
  %148 = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 3
  %149 = load ptr, ptr %148, align 8
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %4, i32 noundef 2) #12
  %151 = icmp eq i32 %150, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %152 = icmp eq i32 %71, 0
  br i1 %151, label %154, label %153

153:                                              ; preds = %133
  br i1 %152, label %270, label %155

154:                                              ; preds = %133
  br i1 %152, label %270, label %163

155:                                              ; preds = %153
  %156 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 0
  store i8 0, ptr %156, align 1
  %157 = icmp eq i32 %71, 1
  br i1 %157, label %215, label %158

158:                                              ; preds = %155
  %159 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 1
  store i8 0, ptr %159, align 1
  %160 = icmp eq i32 %71, 2
  br i1 %160, label %215, label %161

161:                                              ; preds = %158
  %162 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 2
  store i8 0, ptr %162, align 1
  br label %215

163:                                              ; preds = %154
  %164 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 0
  store i8 3, ptr %164, align 1
  %165 = load i8, ptr %9, align 1
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 16
  %168 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 1
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = shl nuw nsw i32 %170, 8
  %172 = or i32 %171, %167
  %173 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 2
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = or i32 %172, %175
  %177 = zext i32 %176 to i64
  %178 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 0, i32 1
  store i64 %177, ptr %178, align 1
  %179 = icmp eq i32 %71, 1
  br i1 %179, label %215, label %180

180:                                              ; preds = %163
  %181 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 1
  store i8 3, ptr %181, align 1
  %182 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 5
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = shl nuw nsw i32 %184, 16
  %186 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 6
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl nuw nsw i32 %188, 8
  %190 = or i32 %189, %185
  %191 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 7
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = or i32 %190, %193
  %195 = zext i32 %194 to i64
  %196 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 1, i32 1
  store i64 %195, ptr %196, align 1
  %197 = icmp eq i32 %71, 2
  br i1 %197, label %215, label %198

198:                                              ; preds = %180
  %199 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 2
  store i8 3, ptr %199, align 1
  %200 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 10
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i32
  %203 = shl nuw nsw i32 %202, 16
  %204 = getelementptr [10 x i8], ptr %9, i32 0, i32 11
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = shl nuw nsw i32 %206, 8
  %208 = or i32 %207, %203
  %209 = getelementptr [10 x i8], ptr %9, i32 0, i32 12
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %208, %211
  %213 = zext i32 %212 to i64
  %214 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 2, i32 1
  store i64 %213, ptr %214, align 1
  br label %215

215:                                              ; preds = %198, %180, %163, %161, %158, %155
  %216 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(37) %217, i8 0, i32 36, i1 false)
  store i8 %136, ptr %216, align 1
  %218 = icmp eq i32 %71, 0
  br i1 %151, label %220, label %219

219:                                              ; preds = %215
  br i1 %218, label %273, label %221

220:                                              ; preds = %215
  br i1 %218, label %273, label %229

221:                                              ; preds = %219
  %222 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 0
  store i8 0, ptr %222, align 1
  %223 = icmp eq i32 %71, 1
  br i1 %223, label %273, label %224

224:                                              ; preds = %221
  %225 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 1
  store i8 0, ptr %225, align 1
  %226 = icmp eq i32 %71, 2
  br i1 %226, label %273, label %227

227:                                              ; preds = %224
  %228 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 2
  store i8 0, ptr %228, align 1
  br label %273

229:                                              ; preds = %220
  %230 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 0
  store i8 3, ptr %230, align 1
  %231 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 3
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i32
  %234 = shl nuw nsw i32 %233, 8
  %235 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 4
  %236 = load i8, ptr %235, align 1
  %237 = zext i8 %236 to i32
  %238 = or i32 %234, %237
  %239 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 0, i32 1
  %240 = mul nuw nsw i32 %238, 1632
  %241 = zext i32 %240 to i64
  store i64 %241, ptr %239, align 1
  %242 = icmp eq i32 %71, 1
  br i1 %242, label %273, label %243

243:                                              ; preds = %229
  %244 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 1
  store i8 3, ptr %244, align 1
  %245 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 8
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i32
  %248 = shl nuw nsw i32 %247, 8
  %249 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 9
  %250 = load i8, ptr %249, align 1
  %251 = zext i8 %250 to i32
  %252 = or i32 %248, %251
  %253 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 1, i32 1
  %254 = mul nuw nsw i32 %252, 1632
  %255 = zext i32 %254 to i64
  store i64 %255, ptr %253, align 1
  %256 = icmp eq i32 %71, 2
  br i1 %256, label %273, label %257

257:                                              ; preds = %243
  %258 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 2
  store i8 3, ptr %258, align 1
  %259 = getelementptr [10 x i8], ptr %9, i32 0, i32 13
  %260 = load i8, ptr %259, align 1
  %261 = zext i8 %260 to i32
  %262 = shl nuw nsw i32 %261, 8
  %263 = getelementptr [10 x i8], ptr %9, i32 0, i32 14
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i32
  %266 = or i32 %262, %265
  %267 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 2, i32 1
  %268 = mul nuw nsw i32 %266, 1632
  %269 = zext i32 %268 to i64
  store i64 %269, ptr %267, align 1
  br label %273

270:                                              ; preds = %154, %153
  %271 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47
  %272 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(37) %272, i8 0, i32 36, i1 false)
  store i8 %136, ptr %271, align 1
  br label %273

273:                                              ; preds = %270, %257, %243, %229, %227, %224, %221, %220, %219
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522s_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 -61, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #12, !annotation !8
  %11 = getelementptr inbounds %struct.tc90522_state, ptr %9, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  store i16 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 1, ptr %10, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %18 = load i16, ptr %13, align 2
  store i16 %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %6, i32 noundef 2) #12
  %25 = icmp eq i32 %24, 2
  %26 = icmp sgt i32 %24, -1
  %27 = select i1 %26, i32 -5, i32 %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br i1 %25, label %28, label %60

28:                                               ; preds = %2
  store i32 0, ptr %1, align 4
  %29 = load i8, ptr %7, align 1
  %30 = icmp sgt i8 %29, -1
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  store i32 1, ptr %1, align 4
  %32 = and i8 %29, 96
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  store i32 15, ptr %1, align 4
  %35 = and i8 %29, 16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -59, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %38 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %38, i8 0, i32 16, i1 false) #12, !annotation !8
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %41 = load i16, ptr %40, align 2
  store i16 %41, ptr %4, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %42, align 2
  store i16 1, ptr %38, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %45 = load i16, ptr %40, align 2
  store i16 %45, ptr %44, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %7, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %4, i32 noundef 2) #12
  %52 = icmp eq i32 %51, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load i8, ptr %7, align 1
  %55 = and i8 %54, 3
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %1, align 4
  %59 = or i32 %58, 16
  store i32 %59, ptr %1, align 4
  br label %60

60:                                               ; preds = %57, %53, %37, %34, %31, %28, %2
  %61 = phi i32 [ 0, %57 ], [ %27, %2 ], [ 0, %28 ], [ 0, %31 ], [ 0, %34 ], [ 0, %53 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  ret i32 %61
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522t_get_frontend(ptr noundef %0, ptr noundef writeonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [15 x i8], align 1
  %12 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %11, i8 0, i32 15, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 15
  store i32 8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 6000000, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 -80, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  %17 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #12, !annotation !8
  %18 = getelementptr inbounds %struct.tc90522_state, ptr %14, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  store i16 %21, ptr %10, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %17, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %25 = load i16, ptr %20, align 2
  store i16 %25, ptr %24, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %11, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %10, i32 noundef 2) #12
  %32 = icmp eq i32 %31, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  br i1 %32, label %33, label %44

33:                                               ; preds = %2
  %34 = load i8, ptr %11, align 1
  %35 = lshr i8 %34, 6
  %36 = zext i8 %35 to i32
  %37 = getelementptr [4 x i32], ptr @tm_conv, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %38, ptr %39, align 4
  %40 = lshr i8 %34, 4
  %41 = and i8 %40, 3
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %33, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 -78, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %45 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #12, !annotation !8
  %46 = load ptr, ptr %18, align 4
  %47 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 1
  %48 = load i16, ptr %47, align 2
  store i16 %48, ptr %8, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 1, ptr %45, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %52 = load i16, ptr %47, align 2
  store i16 %52, ptr %51, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %53, align 2
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 6, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %11, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %8, i32 noundef 2) #12
  %59 = icmp eq i32 %58, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  br i1 %59, label %60, label %147

60:                                               ; preds = %44
  %61 = load i8, ptr %11, align 1
  %62 = and i8 %61, 1
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 17
  store i8 %62, ptr %63, align 4
  %64 = and i8 %61, -64
  %65 = icmp eq i8 %64, 64
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 18
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = lshr i8 %69, 3
  %71 = and i8 %70, 15
  %72 = icmp eq i8 %71, 15
  br i1 %72, label %92, label %73

73:                                               ; preds = %60
  %74 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 1
  %75 = load i8, ptr %74, align 1
  %76 = lshr i8 %75, 2
  %77 = and i8 %76, 7
  %78 = zext i8 %77 to i32
  %79 = getelementptr [8 x i32], ptr @fec_conv_ter, i32 0, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 0, i32 1
  store i32 %80, ptr %81, align 4
  %82 = lshr i8 %75, 5
  %83 = zext i8 %82 to i32
  %84 = getelementptr [8 x i32], ptr @mod_conv, i32 0, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 0, i32 2
  store i32 %85, ptr %86, align 4
  %87 = shl i8 %75, 1
  %88 = and i8 %87, 6
  %89 = lshr i8 %69, 7
  %90 = or i8 %88, %89
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 0, i32 3
  store i8 %90, ptr %91, align 4
  br label %92

92:                                               ; preds = %73, %60
  %93 = phi i8 [ %71, %73 ], [ 0, %60 ]
  %94 = phi i32 [ 1, %73 ], [ 0, %60 ]
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23
  store i8 %93, ptr %95, align 4
  %96 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 3
  %97 = load i8, ptr %96, align 1
  %98 = shl i8 %97, 2
  %99 = and i8 %98, 12
  %100 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 4
  %101 = load i8, ptr %100, align 1
  %102 = lshr i8 %101, 6
  %103 = or i8 %99, %102
  %104 = icmp eq i8 %103, 15
  br i1 %104, label %120, label %105

105:                                              ; preds = %92
  %106 = add nuw nsw i32 %94, 1
  %107 = lshr i8 %97, 5
  %108 = zext i8 %107 to i32
  %109 = getelementptr [8 x i32], ptr @fec_conv_ter, i32 0, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1, i32 1
  store i32 %110, ptr %111, align 4
  %112 = and i8 %69, 7
  %113 = zext i8 %112 to i32
  %114 = getelementptr [8 x i32], ptr @mod_conv, i32 0, i32 %113
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1, i32 2
  store i32 %115, ptr %116, align 4
  %117 = lshr i8 %97, 2
  %118 = and i8 %117, 7
  %119 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1, i32 3
  store i8 %118, ptr %119, align 4
  br label %120

120:                                              ; preds = %105, %92
  %121 = phi i8 [ %103, %105 ], [ 0, %92 ]
  %122 = phi i32 [ %106, %105 ], [ %94, %92 ]
  %123 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1
  store i8 %121, ptr %123, align 4
  %124 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 5
  %125 = load i8, ptr %124, align 1
  %126 = lshr i8 %125, 1
  %127 = and i8 %126, 15
  %128 = icmp eq i8 %127, 15
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 2
  store i8 0, ptr %130, align 4
  br label %147

131:                                              ; preds = %120
  %132 = add nuw nsw i32 %122, 1
  %133 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 2
  store i8 %127, ptr %133, align 4
  %134 = and i8 %101, 7
  %135 = zext i8 %134 to i32
  %136 = getelementptr [8 x i32], ptr @fec_conv_ter, i32 0, i32 %135
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 2, i32 1
  store i32 %137, ptr %138, align 4
  %139 = lshr i8 %101, 3
  %140 = and i8 %139, 7
  %141 = zext i8 %140 to i32
  %142 = getelementptr [8 x i32], ptr @mod_conv, i32 0, i32 %141
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 2, i32 2
  store i32 %143, ptr %144, align 4
  %145 = lshr i8 %125, 5
  %146 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 2, i32 3
  store i8 %145, ptr %146, align 4
  br label %147

147:                                              ; preds = %131, %129, %44
  %148 = phi i32 [ 0, %44 ], [ %122, %129 ], [ %132, %131 ]
  %149 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 42
  store i8 0, ptr %149, align 1
  %150 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 13
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i16 0, ptr %12, align 2, !annotation !8
  %154 = call i32 %151(ptr noundef %0, ptr noundef nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  br label %155

155:                                              ; preds = %153, %147
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43
  store i8 1, ptr %156, align 1
  %157 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43, i32 1
  store i8 0, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 -117, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %158 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %158, i8 0, i32 16, i1 false) #12, !annotation !8
  %159 = load ptr, ptr %18, align 4
  %160 = getelementptr inbounds %struct.i2c_client, ptr %159, i32 0, i32 1
  %161 = load i16, ptr %160, align 2
  store i16 %161, ptr %6, align 4
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %162, align 2
  store i16 1, ptr %158, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %163, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %165 = load i16, ptr %160, align 2
  store i16 %165, ptr %164, align 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %166, align 2
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 3, ptr %167, align 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %11, ptr %168, align 4
  %169 = getelementptr inbounds %struct.i2c_client, ptr %159, i32 0, i32 3
  %170 = load ptr, ptr %169, align 8
  %171 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %6, i32 noundef 2) #12
  %172 = icmp eq i32 %171, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br i1 %172, label %173, label %222

173:                                              ; preds = %155
  %174 = load i8, ptr %11, align 1
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 16
  %177 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 1
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = shl nuw nsw i32 %179, 8
  %181 = or i32 %180, %176
  %182 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 2
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = or i32 %181, %184
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %222, label %187

187:                                              ; preds = %173
  %188 = call i32 @intlog10(i32 noundef 5505024) #12
  %189 = call i32 @intlog10(i32 noundef %185) #12
  %190 = sub i32 %188, %189
  %191 = mul i32 %190, 10
  %192 = zext i32 %191 to i64
  %193 = mul nuw nsw i64 %192, 43827
  %194 = call i64 @div64_s64(i64 noundef %193, i64 noundef 10) #12
  %195 = ashr i64 %194, 24
  %196 = add nsw i64 %195, 24772
  %197 = lshr i32 %191, 8
  %198 = zext i32 %197 to i64
  %199 = mul nuw nsw i64 %198, 3184
  %200 = mul nuw nsw i64 %199, %198
  %201 = call i64 @div64_s64(i64 noundef %200, i64 noundef 10) #12
  %202 = ashr i64 %201, 32
  %203 = add nsw i64 %196, %202
  %204 = lshr i32 %191, 13
  %205 = zext i32 %204 to i64
  %206 = shl nuw nsw i64 %205, 7
  %207 = mul nuw nsw i64 %206, %205
  %208 = mul nuw i64 %207, %205
  %209 = call i64 @div64_s64(i64 noundef %208, i64 noundef 10) #12
  %210 = ashr i64 %209, 33
  %211 = sub nsw i64 %203, %210
  %212 = lshr i32 %191, 18
  %213 = zext i32 %212 to i64
  %214 = mul nuw nsw i64 %213, %213
  %215 = mul nuw nsw i64 %214, 192
  %216 = mul nuw i64 %215, %214
  %217 = call i64 @div64_s64(i64 noundef %216, i64 noundef 1000) #12
  %218 = ashr i64 %217, 24
  %219 = add nsw i64 %211, %218
  %220 = ashr i64 %219, 3
  %221 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43, i32 1, i32 0, i32 1
  store i64 %220, ptr %221, align 1
  store i8 1, ptr %157, align 1
  br label %222

222:                                              ; preds = %187, %173, %155
  %223 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46
  %224 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(37) %224, i8 0, i32 36, i1 false)
  %225 = trunc i32 %148 to i8
  store i8 %225, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -99, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %226 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %226, i8 0, i32 16, i1 false) #12, !annotation !8
  %227 = load ptr, ptr %18, align 4
  %228 = getelementptr inbounds %struct.i2c_client, ptr %227, i32 0, i32 1
  %229 = load i16, ptr %228, align 2
  store i16 %229, ptr %4, align 4
  %230 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %230, align 2
  store i16 1, ptr %226, align 4
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %231, align 4
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %233 = load i16, ptr %228, align 2
  store i16 %233, ptr %232, align 4
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %234, align 2
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 15, ptr %235, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %11, ptr %236, align 4
  %237 = getelementptr inbounds %struct.i2c_client, ptr %227, i32 0, i32 3
  %238 = load ptr, ptr %237, align 8
  %239 = call i32 @i2c_transfer(ptr noundef %238, ptr noundef nonnull %4, i32 noundef 2) #12
  %240 = icmp eq i32 %239, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %241 = icmp eq i32 %148, 0
  br i1 %240, label %243, label %242

242:                                              ; preds = %222
  br i1 %241, label %359, label %244

243:                                              ; preds = %222
  br i1 %241, label %359, label %252

244:                                              ; preds = %242
  %245 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 0
  store i8 0, ptr %245, align 1
  %246 = icmp eq i32 %148, 1
  br i1 %246, label %304, label %247

247:                                              ; preds = %244
  %248 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 1
  store i8 0, ptr %248, align 1
  %249 = icmp eq i32 %148, 2
  br i1 %249, label %304, label %250

250:                                              ; preds = %247
  %251 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 2
  store i8 0, ptr %251, align 1
  br label %304

252:                                              ; preds = %243
  %253 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 0
  store i8 3, ptr %253, align 1
  %254 = load i8, ptr %11, align 1
  %255 = zext i8 %254 to i32
  %256 = shl nuw nsw i32 %255, 16
  %257 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 1
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  %260 = shl nuw nsw i32 %259, 8
  %261 = or i32 %260, %256
  %262 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 2
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = or i32 %261, %264
  %266 = zext i32 %265 to i64
  %267 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 0, i32 1
  store i64 %266, ptr %267, align 1
  %268 = icmp eq i32 %148, 1
  br i1 %268, label %304, label %269

269:                                              ; preds = %252
  %270 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 1
  store i8 3, ptr %270, align 1
  %271 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 3
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = shl nuw nsw i32 %273, 16
  %275 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 4
  %276 = load i8, ptr %275, align 1
  %277 = zext i8 %276 to i32
  %278 = shl nuw nsw i32 %277, 8
  %279 = or i32 %278, %274
  %280 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 5
  %281 = load i8, ptr %280, align 1
  %282 = zext i8 %281 to i32
  %283 = or i32 %279, %282
  %284 = zext i32 %283 to i64
  %285 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 1, i32 1
  store i64 %284, ptr %285, align 1
  %286 = icmp eq i32 %148, 2
  br i1 %286, label %304, label %287

287:                                              ; preds = %269
  %288 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 2
  store i8 3, ptr %288, align 1
  %289 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 6
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i32
  %292 = shl nuw nsw i32 %291, 16
  %293 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 7
  %294 = load i8, ptr %293, align 1
  %295 = zext i8 %294 to i32
  %296 = shl nuw nsw i32 %295, 8
  %297 = or i32 %296, %292
  %298 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 8
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  %301 = or i32 %297, %300
  %302 = zext i32 %301 to i64
  %303 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 46, i32 1, i32 2, i32 1
  store i64 %302, ptr %303, align 1
  br label %304

304:                                              ; preds = %287, %269, %252, %250, %247, %244
  %305 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47
  %306 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(37) %306, i8 0, i32 36, i1 false)
  store i8 %225, ptr %305, align 1
  %307 = icmp sgt i32 %148, 0
  br i1 %240, label %309, label %308

308:                                              ; preds = %304
  br i1 %307, label %310, label %362

309:                                              ; preds = %304
  br i1 %307, label %318, label %362

310:                                              ; preds = %308
  %311 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 0
  store i8 0, ptr %311, align 1
  %312 = icmp eq i32 %148, 1
  br i1 %312, label %362, label %313

313:                                              ; preds = %310
  %314 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 1
  store i8 0, ptr %314, align 1
  %315 = icmp eq i32 %148, 2
  br i1 %315, label %362, label %316

316:                                              ; preds = %313
  %317 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 2
  store i8 0, ptr %317, align 1
  br label %362

318:                                              ; preds = %309
  %319 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 0
  store i8 3, ptr %319, align 1
  %320 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 9
  %321 = load i8, ptr %320, align 1
  %322 = zext i8 %321 to i32
  %323 = shl nuw nsw i32 %322, 8
  %324 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 10
  %325 = load i8, ptr %324, align 1
  %326 = zext i8 %325 to i32
  %327 = or i32 %323, %326
  %328 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 0, i32 1
  %329 = mul nuw nsw i32 %327, 1632
  %330 = zext i32 %329 to i64
  store i64 %330, ptr %328, align 1
  %331 = icmp eq i32 %148, 1
  br i1 %331, label %362, label %332

332:                                              ; preds = %318
  %333 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 1
  store i8 3, ptr %333, align 1
  %334 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 11
  %335 = load i8, ptr %334, align 1
  %336 = zext i8 %335 to i32
  %337 = shl nuw nsw i32 %336, 8
  %338 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 12
  %339 = load i8, ptr %338, align 1
  %340 = zext i8 %339 to i32
  %341 = or i32 %337, %340
  %342 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 1, i32 1
  %343 = mul nuw nsw i32 %341, 1632
  %344 = zext i32 %343 to i64
  store i64 %344, ptr %342, align 1
  %345 = icmp eq i32 %148, 2
  br i1 %345, label %362, label %346

346:                                              ; preds = %332
  %347 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 2
  store i8 3, ptr %347, align 1
  %348 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 13
  %349 = load i8, ptr %348, align 1
  %350 = zext i8 %349 to i32
  %351 = shl nuw nsw i32 %350, 8
  %352 = getelementptr inbounds [15 x i8], ptr %11, i32 0, i32 14
  %353 = load i8, ptr %352, align 1
  %354 = zext i8 %353 to i32
  %355 = or i32 %351, %354
  %356 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1, i32 2, i32 1
  %357 = mul nuw nsw i32 %355, 1632
  %358 = zext i32 %357 to i64
  store i64 %358, ptr %356, align 1
  br label %362

359:                                              ; preds = %243, %242
  %360 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47
  %361 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 47, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(37) %361, i8 0, i32 36, i1 false)
  store i8 %225, ptr %360, align 1
  br label %362

362:                                              ; preds = %359, %346, %332, %318, %316, %313, %310, %309, %308
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %11) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522t_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 -106, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #12, !annotation !8
  %11 = getelementptr inbounds %struct.tc90522_state, ptr %9, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  store i16 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 1, ptr %10, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %18 = load i16, ptr %13, align 2
  store i16 %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %6, i32 noundef 2) #12
  %25 = icmp eq i32 %24, 2
  %26 = icmp sgt i32 %24, -1
  %27 = select i1 %26, i32 -5, i32 %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br i1 %25, label %28, label %65

28:                                               ; preds = %2
  store i32 0, ptr %1, align 4
  %29 = load i8, ptr %7, align 1
  %30 = icmp ult i8 %29, 32
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -128, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %32, i8 0, i32 16, i1 false) #12, !annotation !8
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  store i16 %35, ptr %4, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %36, align 2
  store i16 1, ptr %32, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %39 = load i16, ptr %34, align 2
  store i16 %39, ptr %38, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %7, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %4, i32 noundef 2) #12
  %46 = icmp eq i32 %45, 2
  %47 = icmp sgt i32 %45, -1
  %48 = select i1 %47, i32 -5, i32 %45
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br i1 %46, label %49, label %65

49:                                               ; preds = %31
  %50 = load i8, ptr %7, align 1
  %51 = icmp ult i8 %50, 16
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32, ptr %1, align 4
  %54 = or i32 %53, 3
  store i32 %54, ptr %1, align 4
  %55 = and i8 %50, 12
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = or i32 %53, 15
  store i32 %58, ptr %1, align 4
  %59 = and i8 %50, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = or i32 %53, 31
  br label %63

63:                                               ; preds = %61, %28
  %64 = phi i32 [ %62, %61 ], [ 31, %28 ]
  store i32 %64, ptr %1, align 4
  br label %65

65:                                               ; preds = %63, %57, %52, %49, %31, %2
  %66 = phi i32 [ %27, %2 ], [ %48, %31 ], [ 0, %49 ], [ 0, %52 ], [ 0, %57 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc90522_master_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false), !annotation !8
  %5 = icmp slt i32 %2, 1
  br i1 %5, label %152, label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %13, %6 ], [ 0, %3 ]
  %8 = phi i32 [ %14, %6 ], [ 0, %3 ]
  %9 = getelementptr %struct.i2c_msg, ptr %1, i32 %8, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 1
  %12 = zext i16 %11 to i32
  %13 = add i32 %7, %12
  %14 = add nuw nsw i32 %8, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %6

16:                                               ; preds = %6
  %17 = add i32 %13, %2
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 12) #12
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %152, label %20, !prof !9

20:                                               ; preds = %16
  %21 = extractvalue { i32, i1 } %18, 0
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %152, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr %4, i32 256
  %28 = icmp sgt i32 %2, 0
  br i1 %28, label %29, label %99

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tc90522_state, ptr %26, i32 0, i32 2
  br label %31

31:                                               ; preds = %93, %29
  %32 = phi ptr [ %4, %29 ], [ %95, %93 ]
  %33 = phi i32 [ 0, %29 ], [ %97, %93 ]
  %34 = phi i32 [ 0, %29 ], [ %96, %93 ]
  %35 = load ptr, ptr %30, align 4
  %36 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = getelementptr %struct.i2c_msg, ptr %22, i32 %33
  store i16 %37, ptr %38, align 4
  %39 = getelementptr %struct.i2c_msg, ptr %1, i32 %34
  %40 = getelementptr %struct.i2c_msg, ptr %1, i32 %34, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = getelementptr %struct.i2c_msg, ptr %22, i32 %33, i32 1
  store i16 %41, ptr %42, align 2
  %43 = and i16 %41, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %31
  %46 = and i16 %41, -2
  store i16 %46, ptr %42, align 2
  %47 = getelementptr i8, ptr %32, i32 2
  %48 = icmp ugt ptr %47, %27
  br i1 %48, label %147, label %49

49:                                               ; preds = %45
  store i8 -2, ptr %32, align 1
  %50 = load i16, ptr %39, align 4
  %51 = trunc i16 %50 to i8
  %52 = shl i8 %51, 1
  %53 = or i8 %52, 1
  %54 = getelementptr i8, ptr %32, i32 1
  store i8 %53, ptr %54, align 1
  %55 = getelementptr %struct.i2c_msg, ptr %22, i32 %33, i32 3
  store ptr %32, ptr %55, align 4
  %56 = getelementptr %struct.i2c_msg, ptr %22, i32 %33, i32 2
  store i16 2, ptr %56, align 4
  %57 = add i32 %33, 1
  %58 = load ptr, ptr %30, align 4
  %59 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 1
  %60 = load i16, ptr %59, align 2
  %61 = getelementptr %struct.i2c_msg, ptr %22, i32 %57
  store i16 %60, ptr %61, align 4
  %62 = load i16, ptr %40, align 2
  %63 = getelementptr %struct.i2c_msg, ptr %22, i32 %57, i32 1
  store i16 %62, ptr %63, align 2
  %64 = getelementptr %struct.i2c_msg, ptr %1, i32 %34, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr %struct.i2c_msg, ptr %22, i32 %57, i32 3
  store ptr %65, ptr %66, align 4
  %67 = getelementptr %struct.i2c_msg, ptr %1, i32 %34, i32 2
  %68 = load i16, ptr %67, align 4
  %69 = getelementptr %struct.i2c_msg, ptr %22, i32 %57, i32 2
  store i16 %68, ptr %69, align 4
  br label %93

70:                                               ; preds = %31
  %71 = getelementptr %struct.i2c_msg, ptr %1, i32 %34, i32 2
  %72 = load i16, ptr %71, align 4
  %73 = zext i16 %72 to i32
  %74 = getelementptr i8, ptr %32, i32 2
  %75 = getelementptr i8, ptr %74, i32 %73
  %76 = icmp ugt ptr %75, %27
  br i1 %76, label %147, label %77

77:                                               ; preds = %70
  store i8 -2, ptr %32, align 1
  %78 = load i16, ptr %39, align 4
  %79 = trunc i16 %78 to i8
  %80 = shl i8 %79, 1
  %81 = getelementptr i8, ptr %32, i32 1
  store i8 %80, ptr %81, align 1
  %82 = getelementptr i8, ptr %32, i32 2
  %83 = getelementptr %struct.i2c_msg, ptr %1, i32 %34, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = load i16, ptr %71, align 4
  %86 = zext i16 %85 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %82, ptr align 1 %84, i32 %86, i1 false)
  %87 = getelementptr %struct.i2c_msg, ptr %22, i32 %33, i32 3
  store ptr %32, ptr %87, align 4
  %88 = load i16, ptr %71, align 4
  %89 = add i16 %88, 2
  %90 = getelementptr %struct.i2c_msg, ptr %22, i32 %33, i32 2
  store i16 %89, ptr %90, align 4
  %91 = zext i16 %89 to i32
  %92 = getelementptr i8, ptr %32, i32 %91
  br label %93

93:                                               ; preds = %77, %49
  %94 = phi i32 [ %57, %49 ], [ %33, %77 ]
  %95 = phi ptr [ %47, %49 ], [ %92, %77 ]
  %96 = add nuw nsw i32 %34, 1
  %97 = add i32 %94, 1
  %98 = icmp eq i32 %96, %2
  br i1 %98, label %99, label %31

99:                                               ; preds = %93, %24
  %100 = phi i32 [ 0, %24 ], [ %97, %93 ]
  %101 = getelementptr inbounds %struct.tc90522_config, ptr %26, i32 0, i32 2
  %102 = load i8, ptr %101, align 8, !range !10
  %103 = icmp eq i8 %102, 0
  %104 = icmp eq i32 %13, 0
  %105 = select i1 %103, i1 true, i1 %104
  %106 = getelementptr inbounds %struct.tc90522_state, ptr %26, i32 0, i32 2
  br i1 %105, label %107, label %112

107:                                              ; preds = %99
  %108 = load ptr, ptr %106, align 4
  %109 = getelementptr inbounds %struct.i2c_client, ptr %108, i32 0, i32 3
  %110 = load ptr, ptr %109, align 8
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %22, i32 noundef %100) #12
  br label %141

112:                                              ; preds = %127, %99
  %113 = phi i32 [ %138, %127 ], [ 0, %99 ]
  %114 = phi i32 [ %128, %127 ], [ 0, %99 ]
  %115 = add i32 %114, 1
  %116 = call i32 @llvm.smax.i32(i32 %100, i32 %115)
  %117 = add i32 %116, -1
  br label %118

118:                                              ; preds = %122, %112
  %119 = phi i32 [ %114, %112 ], [ %120, %122 ]
  %120 = add i32 %119, 1
  %121 = icmp eq i32 %119, %117
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = getelementptr %struct.i2c_msg, ptr %22, i32 %120, i32 1
  %124 = load i16, ptr %123, align 2
  %125 = and i16 %124, 1
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %118, label %127

127:                                              ; preds = %122, %118
  %128 = phi i32 [ %116, %118 ], [ %120, %122 ]
  %129 = icmp slt i32 %120, %100
  %130 = load ptr, ptr %106, align 4
  %131 = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 3
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr %struct.i2c_msg, ptr %22, i32 %114
  %134 = sub i32 %128, %114
  %135 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef %133, i32 noundef %134) #12
  %136 = icmp sgt i32 %135, 0
  %137 = select i1 %136, i32 %113, i32 0
  %138 = add i32 %137, %135
  %139 = icmp sgt i32 %138, 0
  %140 = select i1 %129, i1 %139, i1 false
  br i1 %140, label %112, label %141

141:                                              ; preds = %127, %107
  %142 = phi i32 [ %111, %107 ], [ %138, %127 ]
  %143 = icmp slt i32 %142, %100
  %144 = select i1 %143, i32 -5, i32 %142
  %145 = icmp slt i32 %142, 0
  %146 = select i1 %145, i32 %142, i32 %144
  br label %147

147:                                              ; preds = %141, %70, %45
  %148 = phi i32 [ %100, %141 ], [ %33, %70 ], [ %33, %45 ]
  %149 = phi i32 [ %146, %141 ], [ -12, %70 ], [ -12, %45 ]
  call void @kfree(ptr noundef nonnull %22) #12
  %150 = icmp eq i32 %149, %148
  %151 = select i1 %150, i32 %2, i32 %149
  br label %152

152:                                              ; preds = %147, %20, %16, %3
  %153 = phi i32 [ %151, %147 ], [ -22, %3 ], [ -12, %20 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #12
  ret i32 %153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tc90522_functionality(ptr nocapture noundef readnone %0) #10 {
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
