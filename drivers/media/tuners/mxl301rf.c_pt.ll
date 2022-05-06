; ModuleID = '/llk/IR/drivers/media/tuners/mxl301rf.c_pt.bc'
source_filename = "../drivers/media/tuners/mxl301rf.c"
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.reg_val = type { i8, i8 }
%struct.shf = type { i32, i32, i8, i8 }
%struct.mxl301rf_state = type { %struct.mxl301rf_config, ptr }
%struct.mxl301rf_config = type { ptr }
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

@mxl301rf_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mxl301rf\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description249 = internal constant [37 x i8] c"description=MaxLinear MXL301RF tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [23 x i8] c"author=Akihiro TSUKADA\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@mxl301rf_driver = internal global %struct.i2c_driver { i32 0, ptr @mxl301rf_probe, ptr @mxl301rf_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mxl301rf_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"mxl301rf\00", align 1
@mxl301rf_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"MaxLinear MxL301RF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 93000000, i32 803142857, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @mxl301rf_init, ptr @mxl301rf_sleep, ptr null, ptr null, ptr @mxl301rf_set_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxl301rf_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"MaxLinear MxL301RF attached.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"(%s) failed. [adap%d-fe%d]\0A\00", align 1
@__func__.mxl301rf_init = private unnamed_addr constant [14 x i8] c"mxl301rf_init\00", align 1
@standby_data = internal constant [2 x %struct.reg_val] [%struct.reg_val { i8 1, i8 0 }, %struct.reg_val { i8 19, i8 0 }], align 1
@__func__.mxl301rf_sleep = private unnamed_addr constant [15 x i8] c"mxl301rf_sleep\00", align 1
@__const.mxl301rf_set_params.tune0 = private unnamed_addr constant [7 x %struct.reg_val] [%struct.reg_val { i8 19, i8 0 }, %struct.reg_val { i8 59, i8 -64 }, %struct.reg_val { i8 59, i8 -128 }, %struct.reg_val { i8 16, i8 -107 }, %struct.reg_val { i8 26, i8 5 }, %struct.reg_val { i8 97, i8 0 }, %struct.reg_val { i8 98, i8 -96 }], align 1
@__const.mxl301rf_set_params.tune1 = private unnamed_addr constant [3 x %struct.reg_val] [%struct.reg_val { i8 17, i8 64 }, %struct.reg_val { i8 18, i8 14 }, %struct.reg_val { i8 19, i8 1 }], align 1
@shf_tab = internal unnamed_addr constant [17 x %struct.shf] [%struct.shf { i32 64500, i32 500, i8 -110, i8 7 }, %struct.shf { i32 191500, i32 300, i8 -30, i8 7 }, %struct.shf { i32 205500, i32 500, i8 44, i8 4 }, %struct.shf { i32 212500, i32 500, i8 30, i8 4 }, %struct.shf { i32 226500, i32 500, i8 -44, i8 7 }, %struct.shf { i32 99143, i32 500, i8 -100, i8 7 }, %struct.shf { i32 173143, i32 500, i8 -44, i8 7 }, %struct.shf { i32 191143, i32 300, i8 -44, i8 7 }, %struct.shf { i32 207143, i32 500, i8 -50, i8 7 }, %struct.shf { i32 225143, i32 500, i8 -50, i8 7 }, %struct.shf { i32 243143, i32 500, i8 -44, i8 7 }, %struct.shf { i32 261143, i32 500, i8 -44, i8 7 }, %struct.shf { i32 291143, i32 500, i8 -44, i8 7 }, %struct.shf { i32 339143, i32 500, i8 44, i8 4 }, %struct.shf { i32 117143, i32 500, i8 122, i8 7 }, %struct.shf { i32 135143, i32 300, i8 122, i8 7 }, %struct.shf { i32 153143, i32 500, i8 1, i8 7 }], align 4
@set_idac = internal constant [8 x %struct.reg_val] [%struct.reg_val { i8 13, i8 0 }, %struct.reg_val { i8 12, i8 103 }, %struct.reg_val { i8 111, i8 -119 }, %struct.reg_val { i8 112, i8 12 }, %struct.reg_val { i8 111, i8 -118 }, %struct.reg_val { i8 112, i8 14 }, %struct.reg_val { i8 111, i8 -117 }, %struct.reg_val { i8 112, i8 28 }], align 1
@__func__.mxl301rf_set_params = private unnamed_addr constant [20 x i8] c"mxl301rf_set_params\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_i2c__mxl301rf_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @mxl301rf_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @mxl301rf_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @mxl301rf_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl301rf_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mxl301rf_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %4, align 8
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 4
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %14, ptr noundef nonnull align 4 dereferenceable(220) @mxl301rf_ops, i32 220, i1 false)
  %15 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.1) #9
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl301rf_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 4
  store ptr null, ptr %5, align 4
  tail call void @kfree(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl301rf_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i8 1, ptr %2, align 2
  %5 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.mxl301rf_state, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #7
  %9 = icmp slt i32 %8, 2
  %10 = select i1 %9, i32 -5, i32 %8
  %11 = icmp slt i32 %8, 0
  %12 = select i1 %11, i32 %8, i32 %10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.mxl301rf_init, i32 noundef %19, i32 noundef %21) #9
  br label %22

22:                                               ; preds = %14, %1
  %23 = phi i32 [ %12, %14 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl301rf_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mxl301rf_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull @standby_data, i32 noundef 4, i16 noundef zeroext 0) #7
  %7 = icmp slt i32 %6, 4
  %8 = select i1 %7, i32 -5, i32 %6
  %9 = icmp slt i32 %6, 0
  %10 = select i1 %9, i32 %6, i32 %8
  %11 = icmp eq i32 %10, 4
  %12 = select i1 %11, i32 0, i32 %10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.mxl301rf_sleep, i32 noundef %19, i32 noundef %21) #9
  br label %22

22:                                               ; preds = %14, %1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl301rf_set_params(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [7 x %struct.reg_val], align 1
  %4 = alloca [3 x %struct.reg_val], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %3, ptr noundef nonnull align 1 dereferenceable(14) @__const.mxl301rf_set_params.tune0, i32 14, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(6) @__const.mxl301rf_set_params.tune1, i32 6, i1 false)
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = phi i32 [ 0, %1 ], [ %31, %30 ]
  %11 = getelementptr [17 x %struct.shf], ptr @shf_tab, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr [17 x %struct.shf], ptr @shf_tab, i32 0, i32 %10, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = mul i32 %15, 1000
  %17 = icmp ult i32 %8, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %9
  %19 = add i32 %14, %12
  %20 = mul i32 %19, 1000
  %21 = icmp ugt i32 %8, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr [17 x %struct.shf], ptr @shf_tab, i32 0, i32 %10, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = getelementptr inbounds [7 x %struct.reg_val], ptr %3, i32 0, i32 5, i32 1
  store i8 %24, ptr %25, align 1
  %26 = getelementptr [17 x %struct.shf], ptr @shf_tab, i32 0, i32 %10, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = or i8 %27, -96
  %29 = getelementptr inbounds [7 x %struct.reg_val], ptr %3, i32 0, i32 6, i32 1
  store i8 %28, ptr %29, align 1
  br label %33

30:                                               ; preds = %18, %9
  %31 = add nuw nsw i32 %10, 1
  %32 = icmp eq i32 %31, 17
  br i1 %32, label %33, label %9

33:                                               ; preds = %30, %22
  %34 = getelementptr inbounds %struct.mxl301rf_state, ptr %6, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %3, i32 noundef 14, i16 noundef zeroext 0) #7
  %37 = icmp slt i32 %36, 14
  %38 = select i1 %37, i32 -5, i32 %36
  %39 = icmp slt i32 %36, 0
  %40 = select i1 %39, i32 %36, i32 %38
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %114, label %42

42:                                               ; preds = %33
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #7
  %43 = freeze i32 %8
  %44 = udiv i32 %43, 1000000
  %45 = trunc i32 %44 to i16
  %46 = mul i32 %44, 1000000
  %47 = sub i32 %43, %46
  %48 = icmp ugt i32 %47, 500000
  %49 = select i1 %48, i32 -500000, i32 0
  %50 = add nsw i32 %49, %47
  %51 = shl nuw nsw i16 %45, 2
  %52 = select i1 %48, i16 2, i16 0
  %53 = or i16 %51, %52
  %54 = icmp ugt i32 %50, 250000
  %55 = zext i1 %54 to i16
  %56 = or i16 %53, %55
  %57 = select i1 %54, i32 -250000, i32 0
  %58 = add nsw i32 %57, %50
  %59 = icmp ugt i32 %58, 125000
  %60 = select i1 %59, i32 -125000, i32 0
  %61 = add nsw i32 %60, %58
  %62 = shl i16 %56, 2
  %63 = select i1 %59, i16 2, i16 0
  %64 = or i16 %62, %63
  %65 = icmp ugt i32 %61, 62500
  %66 = zext i1 %65 to i16
  %67 = or i16 %64, %66
  %68 = select i1 %65, i32 -62500, i32 0
  %69 = add nsw i32 %68, %61
  %70 = icmp ugt i32 %69, 31250
  %71 = select i1 %70, i32 -31250, i32 0
  %72 = add nsw i32 %71, %69
  %73 = shl i16 %67, 2
  %74 = select i1 %70, i16 2, i16 0
  %75 = or i16 %73, %74
  %76 = icmp ugt i32 %72, 15625
  %77 = zext i1 %76 to i16
  %78 = or i16 %75, %77
  %79 = select i1 %76, i32 -15625, i32 0
  %80 = add nsw i32 %79, %72
  %81 = icmp ugt i32 %80, 7812
  %82 = add i16 %78, 1
  %83 = select i1 %81, i16 %82, i16 %78
  %84 = trunc i16 %83 to i8
  %85 = select i1 %81, i16 %82, i16 %73
  %86 = lshr i16 %85, 8
  %87 = trunc i16 %86 to i8
  %88 = getelementptr inbounds %struct.reg_val, ptr %4, i32 0, i32 1
  store i8 %84, ptr %88, align 1
  %89 = getelementptr inbounds [3 x %struct.reg_val], ptr %4, i32 0, i32 1, i32 1
  store i8 %87, ptr %89, align 1
  %90 = load ptr, ptr %34, align 4
  %91 = call i32 @i2c_transfer_buffer_flags(ptr noundef %90, ptr noundef nonnull %4, i32 noundef 6, i16 noundef zeroext 0) #7
  %92 = icmp slt i32 %91, 6
  %93 = select i1 %92, i32 -5, i32 %91
  %94 = icmp slt i32 %91, 0
  %95 = select i1 %94, i32 %91, i32 %93
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %42
  call void @msleep(i32 noundef 31) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i8 26, ptr %2, align 2
  %98 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 13, ptr %98, align 1
  %99 = load ptr, ptr %34, align 4
  %100 = call i32 @i2c_transfer_buffer_flags(ptr noundef %99, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #7
  %101 = icmp slt i32 %100, 2
  %102 = select i1 %101, i32 -5, i32 %100
  %103 = icmp slt i32 %100, 0
  %104 = select i1 %103, i32 %100, i32 %102
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %97
  %107 = load ptr, ptr %34, align 4
  %108 = call i32 @i2c_transfer_buffer_flags(ptr noundef %107, ptr noundef nonnull @set_idac, i32 noundef 16, i16 noundef zeroext 0) #7
  %109 = icmp slt i32 %108, 16
  %110 = select i1 %109, i32 -5, i32 %108
  %111 = icmp slt i32 %108, 0
  %112 = select i1 %111, i32 %108, i32 %110
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %106, %97, %42, %33
  %115 = phi i32 [ %40, %33 ], [ %95, %42 ], [ %104, %97 ], [ %112, %106 ]
  %116 = load ptr, ptr %34, align 4
  %117 = getelementptr inbounds %struct.i2c_client, ptr %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %122 = load i32, ptr %121, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.mxl301rf_set_params, i32 noundef %120, i32 noundef %122) #9
  br label %123

123:                                              ; preds = %114, %106
  %124 = phi i32 [ %115, %114 ], [ 0, %106 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #7
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl301rf_get_rf_strength(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #7
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #7
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #7
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #7
  store i8 0, ptr %11, align 1, !annotation !8
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %12, align 1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %13, align 1
  store i16 0, ptr %1, align 2
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #7
  store i8 20, ptr %7, align 2
  %16 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mxl301rf_state, ptr %15, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %7, i32 noundef 2, i16 noundef zeroext 0) #7
  %20 = icmp slt i32 %19, 2
  %21 = select i1 %20, i32 -5, i32 %19
  %22 = icmp slt i32 %19, 0
  %23 = select i1 %22, i32 %19, i32 %21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %123, label %25

25:                                               ; preds = %2
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #7
  store i16 6395, ptr %6, align 2, !annotation !8
  %26 = load ptr, ptr %17, align 4
  %27 = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %6, i32 noundef 2, i16 noundef zeroext 0) #7
  %28 = icmp slt i32 %27, 2
  %29 = select i1 %28, i32 -5, i32 %27
  %30 = icmp slt i32 %27, 0
  %31 = select i1 %30, i32 %27, i32 %29
  %32 = icmp eq i32 %31, 2
  %33 = select i1 %32, i32 0, i32 %31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load ptr, ptr %17, align 4
  %37 = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %8, i32 noundef 1, i16 noundef zeroext 1) #7
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi i32 [ %37, %35 ], [ %33, %25 ]
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 -5, i32 %39
  %42 = icmp eq i32 %41, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #7
  br i1 %42, label %43, label %123

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #7
  store i16 6651, ptr %5, align 2, !annotation !8
  %44 = load ptr, ptr %17, align 4
  %45 = call i32 @i2c_transfer_buffer_flags(ptr noundef %44, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #7
  %46 = icmp slt i32 %45, 2
  %47 = select i1 %46, i32 -5, i32 %45
  %48 = icmp slt i32 %45, 0
  %49 = select i1 %48, i32 %45, i32 %47
  %50 = icmp eq i32 %49, 2
  %51 = select i1 %50, i32 0, i32 %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load ptr, ptr %17, align 4
  %55 = call i32 @i2c_transfer_buffer_flags(ptr noundef %54, ptr noundef nonnull %9, i32 noundef 1, i16 noundef zeroext 1) #7
  br label %56

56:                                               ; preds = %53, %43
  %57 = phi i32 [ %55, %53 ], [ %51, %43 ]
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 -5, i32 %57
  %60 = icmp eq i32 %59, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  br i1 %60, label %61, label %123

61:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 -10501, ptr %4, align 2, !annotation !8
  %62 = load ptr, ptr %17, align 4
  %63 = call i32 @i2c_transfer_buffer_flags(ptr noundef %62, ptr noundef nonnull %4, i32 noundef 2, i16 noundef zeroext 0) #7
  %64 = icmp slt i32 %63, 2
  %65 = select i1 %64, i32 -5, i32 %63
  %66 = icmp slt i32 %63, 0
  %67 = select i1 %66, i32 %63, i32 %65
  %68 = icmp eq i32 %67, 2
  %69 = select i1 %68, i32 0, i32 %67
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load ptr, ptr %17, align 4
  %73 = call i32 @i2c_transfer_buffer_flags(ptr noundef %72, ptr noundef nonnull %10, i32 noundef 1, i16 noundef zeroext 1) #7
  br label %74

74:                                               ; preds = %71, %61
  %75 = phi i32 [ %73, %71 ], [ %69, %61 ]
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 -5, i32 %75
  %78 = icmp eq i32 %77, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  br i1 %78, label %79, label %123

79:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #7
  store i16 -10245, ptr %3, align 2, !annotation !8
  %80 = load ptr, ptr %17, align 4
  %81 = call i32 @i2c_transfer_buffer_flags(ptr noundef %80, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #7
  %82 = icmp slt i32 %81, 2
  %83 = select i1 %82, i32 -5, i32 %81
  %84 = icmp slt i32 %81, 0
  %85 = select i1 %84, i32 %81, i32 %83
  %86 = icmp eq i32 %85, 2
  %87 = select i1 %86, i32 0, i32 %85
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load ptr, ptr %17, align 4
  %91 = call i32 @i2c_transfer_buffer_flags(ptr noundef %90, ptr noundef nonnull %11, i32 noundef 1, i16 noundef zeroext 1) #7
  br label %92

92:                                               ; preds = %89, %79
  %93 = phi i32 [ %91, %89 ], [ %87, %79 ]
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 -5, i32 %93
  %96 = icmp eq i32 %95, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #7
  br i1 %96, label %97, label %123

97:                                               ; preds = %92
  %98 = load i8, ptr %9, align 1
  %99 = and i8 %98, 7
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = load i8, ptr %8, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, ptr %11, align 1
  %105 = and i8 %104, 15
  %106 = zext i8 %105 to i32
  %107 = mul nsw i32 %106, -32
  %108 = load i8, ptr %10, align 1
  %109 = lshr i8 %108, 3
  %110 = zext i8 %109 to i32
  %111 = or i32 %101, %103
  %112 = sub nsw i32 %111, %110
  %113 = add nsw i32 %112, %107
  %114 = mul nsw i32 %113, 1000
  %115 = add nsw i32 %114, -904000
  %116 = sdiv i32 %115, 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %117, ptr %118, align 1
  store i8 1, ptr %13, align 1
  %119 = mul nsw i32 %113, 100
  %120 = add nsw i32 %119, 51100
  %121 = sdiv i32 %120, 2558
  %122 = trunc i32 %121 to i16
  store i16 %122, ptr %1, align 2
  br label %123

123:                                              ; preds = %97, %92, %74, %56, %38, %2
  %124 = phi i32 [ 0, %97 ], [ %23, %2 ], [ %95, %92 ], [ %77, %74 ], [ %59, %56 ], [ %41, %38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  ret i32 %124
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
