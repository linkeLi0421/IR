; ModuleID = '/llk/IR/drivers/media/dvb-frontends/zd1301_demod.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/zd1301_demod.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zd1301_demod_get_dvb_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22zd1301_demod_get_dvb_frontend\22\09\09\09\09\09"
module asm "__kstrtabns_zd1301_demod_get_dvb_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zd1301_demod_get_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22zd1301_demod_get_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_zd1301_demod_get_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.zd1301_demod_dev = type { ptr, %struct.dvb_frontend, %struct.i2c_adapter, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.zd1301_demod_platform_data = type { ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_gain = internal constant [5 x i8] c"gain\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@zd1301_demod_gain = internal global i8 56, align 1
@__param_gain = internal constant %struct.kernel_param { ptr @__param_str_gain, ptr @__this_module, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @zd1301_demod_gain } }, section "__param", align 4
@__UNIQUE_ID_gaintype249 = internal constant [19 x i8] c"parmtype=gain:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_gain250 = internal constant [51 x i8] c"parm=gain:gain (value: 0x00 - 0x70, default: 0x38)\00", section ".modinfo", align 1
@__kstrtab_zd1301_demod_get_dvb_frontend = external dso_local constant [0 x i8], align 1
@__kstrtabns_zd1301_demod_get_dvb_frontend = external dso_local constant [0 x i8], align 1
@__ksymtab_zd1301_demod_get_dvb_frontend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zd1301_demod_get_dvb_frontend to i32), ptr @__kstrtab_zd1301_demod_get_dvb_frontend, ptr @__kstrtabns_zd1301_demod_get_dvb_frontend }, section "___ksymtab+zd1301_demod_get_dvb_frontend", align 4
@__kstrtab_zd1301_demod_get_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_zd1301_demod_get_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_zd1301_demod_get_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zd1301_demod_get_i2c_adapter to i32), ptr @__kstrtab_zd1301_demod_get_i2c_adapter, ptr @__kstrtabns_zd1301_demod_get_i2c_adapter }, section "___ksymtab+zd1301_demod_get_i2c_adapter", align 4
@__UNIQUE_ID_author251 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [44 x i8] c"description=ZyDAS ZD1301 demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@zd1301_demod_driver = internal global %struct.platform_driver { ptr @zd1301_demod_probe, ptr @zd1301_demod_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"zd1301_demod\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot proceed without platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ZyDAS ZD1301 demod\00", align 1
@zd1301_demod_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @zd1301_demod_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @zd1301_demod_i2c_functionality, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"I2C adapter add failed %d\0A\00", align 1
@zd1301_demod_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ZyDAS ZD1301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2145702226 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @zd1301_demod_init, ptr @zd1301_demod_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zd1301_demod_set_frontend, ptr @zd1301_demod_get_tune_settings, ptr null, ptr @zd1301_demod_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"ZyDAS ZD1301 demod attached\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_gain250, ptr @__UNIQUE_ID_gaintype249, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_zd1301_demod_get_dvb_frontend, ptr @__ksymtab_zd1301_demod_get_i2c_adapter, ptr @__param_gain], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @zd1301_demod_get_dvb_frontend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %3, i32 0, i32 1
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @zd1301_demod_get_i2c_adapter(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %3, i32 0, i32 2
  ret ptr %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @zd1301_demod_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @zd1301_demod_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zd1301_demod_probe(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  br label %51

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1712) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  store ptr %0, ptr %15, align 8
  %18 = load i8, ptr @zd1301_demod_gain, align 1
  %19 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %15, i32 0, i32 3
  store i8 %18, ptr %19, align 8
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = tail call i32 %22(ptr noundef %23, i16 noundef zeroext 26688, i8 noundef zeroext 33) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %17
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %27, align 4
  %31 = tail call i32 %29(ptr noundef %30, i16 noundef zeroext 27192, i8 noundef zeroext 7) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %15, i32 0, i32 2
  %35 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %15, i32 0, i32 2, i32 12
  %36 = tail call i32 @strscpy(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef 48) #10
  %37 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %15, i32 0, i32 2, i32 2
  store ptr @zd1301_demod_i2c_algorithm, ptr %37, align 8
  %38 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %15, i32 0, i32 2, i32 3
  store ptr null, ptr %38, align 4
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %15, i32 0, i32 2, i32 9, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %15, i32 0, i32 2, i32 9, i32 8
  store ptr %15, ptr %41, align 8
  %42 = tail call i32 @i2c_add_adapter(ptr noundef %34) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %42) #11
  br label %49

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %15, i32 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %46, ptr noundef nonnull align 4 dereferenceable(544) @zd1301_demod_ops, i32 544, i1 false)
  %47 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %15, i32 0, i32 1, i32 3
  store ptr %15, ptr %47, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %48, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  br label %51

49:                                               ; preds = %44, %26, %17
  %50 = phi i32 [ %24, %17 ], [ %31, %26 ], [ %42, %44 ]
  tail call void @kfree(ptr noundef nonnull %15) #10
  br label %51

51:                                               ; preds = %49, %45, %13, %7, %6
  %52 = phi i32 [ 0, %45 ], [ %50, %49 ], [ -22, %6 ], [ -22, %7 ], [ -12, %13 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zd1301_demod_remove(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %3, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %4) #10
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zd1301_demod_i2c_master_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  switch i32 %2, label %285 [
    i32 2, label %7
    i32 1, label %152
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %285

12:                                               ; preds = %7
  %13 = getelementptr %struct.i2c_msg, ptr %1, i32 1
  %14 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %285, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %20 = load i16, ptr %19, align 4
  %21 = icmp ugt i16 %20, 1
  br i1 %21, label %285, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = icmp ugt i16 %24, 8
  br i1 %25, label %285, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = tail call i32 %31(ptr noundef %32, i16 noundef zeroext 26641, i8 noundef zeroext -128) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %285

35:                                               ; preds = %26
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %38, align 4
  %42 = tail call i32 %40(ptr noundef %41, i16 noundef zeroext 26642, i8 noundef zeroext 5) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %285

44:                                               ; preds = %35
  %45 = load i16, ptr %13, align 4
  %46 = trunc i16 %45 to i8
  %47 = shl i8 %46, 1
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %50, align 4
  %54 = tail call i32 %52(ptr noundef %53, i16 noundef zeroext 26643, i8 noundef zeroext %47) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %285

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = load i8, ptr %58, align 1
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %62, align 4
  %66 = tail call i32 %64(ptr noundef %65, i16 noundef zeroext 26625, i8 noundef zeroext %59) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %285

68:                                               ; preds = %56
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3, i32 7
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %71, align 4
  %75 = tail call i32 %73(ptr noundef %74, i16 noundef zeroext 26626, i8 noundef zeroext 0) #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %285

77:                                               ; preds = %68
  %78 = load ptr, ptr %6, align 8
  %79 = getelementptr inbounds %struct.platform_device, ptr %78, i32 0, i32 3, i32 7
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %80, align 4
  %84 = tail call i32 %82(ptr noundef %83, i16 noundef zeroext 26627, i8 noundef zeroext 6) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %285

86:                                               ; preds = %77
  %87 = load ptr, ptr %6, align 8
  %88 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3, i32 7
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %89, align 4
  %93 = tail call i32 %91(ptr noundef %92, i16 noundef zeroext 26629, i8 noundef zeroext 0) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %285

95:                                               ; preds = %86
  %96 = load i16, ptr %23, align 4
  %97 = trunc i16 %96 to i8
  %98 = load ptr, ptr %6, align 8
  %99 = getelementptr inbounds %struct.platform_device, ptr %98, i32 0, i32 3, i32 7
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %100, align 4
  %104 = tail call i32 %102(ptr noundef %103, i16 noundef zeroext 26628, i8 noundef zeroext %97) #10
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %285

106:                                              ; preds = %95
  %107 = load volatile i32, ptr @jiffies, align 64
  %108 = add i32 %107, 1
  store i8 1, ptr %4, align 1
  %109 = load volatile i32, ptr @jiffies, align 64
  %110 = sub i32 %108, %109
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %117, label %112

112:                                              ; preds = %126, %106
  %113 = load i16, ptr %23, align 4
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %285, label %115

115:                                              ; preds = %112
  %116 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 3
  br label %138

117:                                              ; preds = %126, %106
  call void @usleep_range_state(i32 noundef 500, i32 noundef 800, i32 noundef 2) #10
  %118 = load ptr, ptr %6, align 8
  %119 = getelementptr inbounds %struct.platform_device, ptr %118, i32 0, i32 3, i32 7
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %120, align 4
  %124 = call i32 %122(ptr noundef %123, i16 noundef zeroext 26628, ptr noundef nonnull %4) #10
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %285

126:                                              ; preds = %117
  %127 = load i8, ptr %4, align 1
  %128 = load volatile i32, ptr @jiffies, align 64
  %129 = sub i32 %108, %128
  %130 = icmp sgt i32 %129, -1
  %131 = icmp ne i8 %127, 0
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %117, label %112

133:                                              ; preds = %138
  %134 = add nuw nsw i32 %139, 1
  %135 = load i16, ptr %23, align 4
  %136 = zext i16 %135 to i32
  %137 = icmp ult i32 %134, %136
  br i1 %137, label %138, label %285

138:                                              ; preds = %133, %115
  %139 = phi i32 [ 0, %115 ], [ %134, %133 ]
  %140 = trunc i32 %139 to i16
  %141 = add i16 %140, 1536
  %142 = load ptr, ptr %116, align 4
  %143 = getelementptr i8, ptr %142, i32 %139
  %144 = load ptr, ptr %6, align 8
  %145 = getelementptr inbounds %struct.platform_device, ptr %144, i32 0, i32 3, i32 7
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %146, align 4
  %150 = call i32 %148(ptr noundef %149, i16 noundef zeroext %141, ptr noundef %143) #10
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %133, label %285

152:                                              ; preds = %3
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %154 = load i16, ptr %153, align 2
  %155 = and i16 %154, 1
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %285

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %159 = load i16, ptr %158, align 4
  %160 = icmp ugt i16 %159, 9
  br i1 %160, label %285, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %6, align 8
  %163 = getelementptr inbounds %struct.platform_device, ptr %162, i32 0, i32 3, i32 7
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %164, align 4
  %168 = tail call i32 %166(ptr noundef %167, i16 noundef zeroext 26641, i8 noundef zeroext -128) #10
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %285

170:                                              ; preds = %161
  %171 = load ptr, ptr %6, align 8
  %172 = getelementptr inbounds %struct.platform_device, ptr %171, i32 0, i32 3, i32 7
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = load ptr, ptr %173, align 4
  %177 = tail call i32 %175(ptr noundef %176, i16 noundef zeroext 26642, i8 noundef zeroext 1) #10
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %285

179:                                              ; preds = %170
  %180 = load i16, ptr %1, align 4
  %181 = trunc i16 %180 to i8
  %182 = shl i8 %181, 1
  %183 = load ptr, ptr %6, align 8
  %184 = getelementptr inbounds %struct.platform_device, ptr %183, i32 0, i32 3, i32 7
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %185, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = load ptr, ptr %185, align 4
  %189 = tail call i32 %187(ptr noundef %188, i16 noundef zeroext 26643, i8 noundef zeroext %182) #10
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %285

191:                                              ; preds = %179
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %193 = load ptr, ptr %192, align 4
  %194 = load i8, ptr %193, align 1
  %195 = load ptr, ptr %6, align 8
  %196 = getelementptr inbounds %struct.platform_device, ptr %195, i32 0, i32 3, i32 7
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  %200 = load ptr, ptr %197, align 4
  %201 = tail call i32 %199(ptr noundef %200, i16 noundef zeroext 26624, i8 noundef zeroext %194) #10
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %285

203:                                              ; preds = %191
  %204 = load ptr, ptr %6, align 8
  %205 = getelementptr inbounds %struct.platform_device, ptr %204, i32 0, i32 3, i32 7
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %206, i32 0, i32 2
  %208 = load ptr, ptr %207, align 4
  %209 = load ptr, ptr %206, align 4
  %210 = tail call i32 %208(ptr noundef %209, i16 noundef zeroext 26626, i8 noundef zeroext 0) #10
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %285

212:                                              ; preds = %203
  %213 = load ptr, ptr %6, align 8
  %214 = getelementptr inbounds %struct.platform_device, ptr %213, i32 0, i32 3, i32 7
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %215, i32 0, i32 2
  %217 = load ptr, ptr %216, align 4
  %218 = load ptr, ptr %215, align 4
  %219 = tail call i32 %217(ptr noundef %218, i16 noundef zeroext 26627, i8 noundef zeroext 6) #10
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %285

221:                                              ; preds = %227, %212
  %222 = phi i32 [ %231, %227 ], [ 0, %212 ]
  %223 = load i16, ptr %158, align 4
  %224 = zext i16 %223 to i32
  %225 = add nsw i32 %224, -1
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %242

227:                                              ; preds = %221
  %228 = trunc i32 %222 to i16
  %229 = add i16 %228, 1536
  %230 = load ptr, ptr %192, align 4
  %231 = add nuw nsw i32 %222, 1
  %232 = getelementptr i8, ptr %230, i32 %231
  %233 = load i8, ptr %232, align 1
  %234 = load ptr, ptr %6, align 8
  %235 = getelementptr inbounds %struct.platform_device, ptr %234, i32 0, i32 3, i32 7
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %236, i32 0, i32 2
  %238 = load ptr, ptr %237, align 4
  %239 = load ptr, ptr %236, align 4
  %240 = tail call i32 %238(ptr noundef %239, i16 noundef zeroext %229, i8 noundef zeroext %233) #10
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %221, label %285

242:                                              ; preds = %221
  %243 = load ptr, ptr %6, align 8
  %244 = getelementptr inbounds %struct.platform_device, ptr %243, i32 0, i32 3, i32 7
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %245, i32 0, i32 2
  %247 = load ptr, ptr %246, align 4
  %248 = load ptr, ptr %245, align 4
  %249 = tail call i32 %247(ptr noundef %248, i16 noundef zeroext 26629, i8 noundef zeroext -128) #10
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %285

251:                                              ; preds = %242
  %252 = load i16, ptr %158, align 4
  %253 = trunc i16 %252 to i8
  %254 = add i8 %253, -1
  %255 = load ptr, ptr %6, align 8
  %256 = getelementptr inbounds %struct.platform_device, ptr %255, i32 0, i32 3, i32 7
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %257, i32 0, i32 2
  %259 = load ptr, ptr %258, align 4
  %260 = load ptr, ptr %257, align 4
  %261 = tail call i32 %259(ptr noundef %260, i16 noundef zeroext 26628, i8 noundef zeroext %254) #10
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %285

263:                                              ; preds = %251
  %264 = load volatile i32, ptr @jiffies, align 64
  %265 = add i32 %264, 1
  store i8 1, ptr %4, align 1
  %266 = load volatile i32, ptr @jiffies, align 64
  %267 = sub i32 %265, %266
  %268 = icmp sgt i32 %267, -1
  br i1 %268, label %269, label %285

269:                                              ; preds = %278, %263
  call void @usleep_range_state(i32 noundef 500, i32 noundef 800, i32 noundef 2) #10
  %270 = load ptr, ptr %6, align 8
  %271 = getelementptr inbounds %struct.platform_device, ptr %270, i32 0, i32 3, i32 7
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %272, i32 0, i32 1
  %274 = load ptr, ptr %273, align 4
  %275 = load ptr, ptr %272, align 4
  %276 = call i32 %274(ptr noundef %275, i16 noundef zeroext 26628, ptr noundef nonnull %4) #10
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %269
  %279 = load i8, ptr %4, align 1
  %280 = load volatile i32, ptr @jiffies, align 64
  %281 = sub i32 %265, %280
  %282 = icmp sgt i32 %281, -1
  %283 = icmp ne i8 %279, 0
  %284 = select i1 %282, i1 %283, i1 false
  br i1 %284, label %269, label %285

285:                                              ; preds = %278, %269, %263, %251, %242, %227, %212, %203, %191, %179, %170, %161, %157, %152, %138, %133, %117, %112, %95, %86, %77, %68, %56, %44, %35, %26, %22, %18, %12, %7, %3
  %286 = phi i32 [ %168, %161 ], [ %177, %170 ], [ %189, %179 ], [ %201, %191 ], [ %210, %203 ], [ %219, %212 ], [ %249, %242 ], [ %261, %251 ], [ %33, %26 ], [ %42, %35 ], [ %54, %44 ], [ %66, %56 ], [ %75, %68 ], [ %84, %77 ], [ %93, %86 ], [ %104, %95 ], [ -95, %22 ], [ -95, %18 ], [ -95, %157 ], [ -95, %3 ], [ -95, %152 ], [ -95, %12 ], [ -95, %7 ], [ 2, %112 ], [ 1, %263 ], [ 2, %133 ], [ %150, %138 ], [ %124, %117 ], [ %276, %269 ], [ 1, %278 ], [ %240, %227 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %286
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @zd1301_demod_i2c_functionality(ptr nocapture noundef readnone %0) #8 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zd1301_demod_init(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 %8(ptr noundef %9, i16 noundef zeroext 26688, i8 noundef zeroext 38) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = tail call i32 %17(ptr noundef %18, i16 noundef zeroext 26848, i8 noundef zeroext -1) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %12
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = tail call i32 %26(ptr noundef %27, i16 noundef zeroext 26850, i8 noundef zeroext -40) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %21
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %33, align 4
  %37 = tail call i32 %35(ptr noundef %36, i16 noundef zeroext 26697, i8 noundef zeroext 78) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %30
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = tail call i32 %44(ptr noundef %45, i16 noundef zeroext 26702, i8 noundef zeroext 1) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load i8, ptr @zd1301_demod_gain, align 1
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %52, align 4
  %56 = tail call i32 %54(ptr noundef %55, i16 noundef zeroext 27203, i8 noundef zeroext %49) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %48, %39, %30, %21, %12, %1
  %59 = phi i32 [ %10, %1 ], [ %19, %12 ], [ %28, %21 ], [ %37, %30 ], [ %46, %39 ], [ %56, %48 ]
  br label %60

60:                                               ; preds = %58, %48
  %61 = phi i32 [ %59, %58 ], [ 0, %48 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zd1301_demod_sleep(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 %8(ptr noundef %9, i16 noundef zeroext 27203, i8 noundef zeroext 112) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = tail call i32 %17(ptr noundef %18, i16 noundef zeroext 26702, i8 noundef zeroext 0) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %12
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = tail call i32 %26(ptr noundef %27, i16 noundef zeroext 26697, i8 noundef zeroext 0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %21
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %33, align 4
  %37 = tail call i32 %35(ptr noundef %36, i16 noundef zeroext 26850, i8 noundef zeroext -41) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %30
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = tail call i32 %44(ptr noundef %45, i16 noundef zeroext 26848, i8 noundef zeroext 57) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = tail call i32 %53(ptr noundef %54, i16 noundef zeroext 26688, i8 noundef zeroext 33) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %48, %39, %30, %21, %12, %1
  %58 = phi i32 [ %10, %1 ], [ %19, %12 ], [ %28, %21 ], [ %37, %30 ], [ %46, %39 ], [ %55, %48 ]
  br label %59

59:                                               ; preds = %57, %48
  %60 = phi i32 [ %58, %57 ], [ 0, %48 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zd1301_demod_set_frontend(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %190, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %190, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %6(ptr noundef %0) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %190

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 4
  %17 = call i32 %16(ptr noundef %0, ptr noundef nonnull %2) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %190

19:                                               ; preds = %15
  %20 = load i32, ptr %2, align 4
  %21 = icmp eq i32 %20, 36150000
  br i1 %21, label %22, label %190

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %190 [
    i32 6000000, label %27
    i32 7000000, label %25
    i32 8000000, label %26
  ]

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %25, %22
  %28 = phi i8 [ 88, %26 ], [ 104, %25 ], [ 120, %22 ]
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %31, align 4
  %35 = call i32 %33(ptr noundef %34, i16 noundef zeroext 27232, i8 noundef zeroext 17) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %190

37:                                               ; preds = %27
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %40, align 4
  %44 = call i32 %42(ptr noundef %43, i16 noundef zeroext 27207, i8 noundef zeroext 70) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %190

46:                                               ; preds = %37
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %49, align 4
  %53 = call i32 %51(ptr noundef %52, i16 noundef zeroext 27208, i8 noundef zeroext 70) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %190

55:                                               ; preds = %46
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %58, align 4
  %62 = call i32 %60(ptr noundef %61, i16 noundef zeroext 27210, i8 noundef zeroext 21) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %190

64:                                               ; preds = %55
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3, i32 7
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %67, align 4
  %71 = call i32 %69(ptr noundef %70, i16 noundef zeroext 27211, i8 noundef zeroext 99) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %190

73:                                               ; preds = %64
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3, i32 7
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %76, align 4
  %80 = call i32 %78(ptr noundef %79, i16 noundef zeroext 27227, i8 noundef zeroext -103) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %190

82:                                               ; preds = %73
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %struct.platform_device, ptr %83, i32 0, i32 3, i32 7
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %85, align 4
  %89 = call i32 %87(ptr noundef %88, i16 noundef zeroext 27195, i8 noundef zeroext 16) #10
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %190

91:                                               ; preds = %82
  %92 = load ptr, ptr %4, align 8
  %93 = getelementptr inbounds %struct.platform_device, ptr %92, i32 0, i32 3, i32 7
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %94, align 4
  %98 = call i32 %96(ptr noundef %97, i16 noundef zeroext 26630, i8 noundef zeroext 1) #10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %190

100:                                              ; preds = %91
  %101 = load ptr, ptr %4, align 8
  %102 = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3, i32 7
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %103, align 4
  %107 = call i32 %105(ptr noundef %106, i16 noundef zeroext 27201, i8 noundef zeroext 8) #10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %190

109:                                              ; preds = %100
  %110 = load ptr, ptr %4, align 8
  %111 = getelementptr inbounds %struct.platform_device, ptr %110, i32 0, i32 3, i32 7
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %112, align 4
  %116 = call i32 %114(ptr noundef %115, i16 noundef zeroext 27202, i8 noundef zeroext 70) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %190

118:                                              ; preds = %109
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3, i32 7
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %121, align 4
  %125 = call i32 %123(ptr noundef %124, i16 noundef zeroext 27204, i8 noundef zeroext 20) #10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %190

127:                                              ; preds = %118
  %128 = load ptr, ptr %4, align 8
  %129 = getelementptr inbounds %struct.platform_device, ptr %128, i32 0, i32 3, i32 7
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %130, align 4
  %134 = call i32 %132(ptr noundef %133, i16 noundef zeroext 27205, i8 noundef zeroext 103) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %190

136:                                              ; preds = %127
  %137 = load ptr, ptr %4, align 8
  %138 = getelementptr inbounds %struct.platform_device, ptr %137, i32 0, i32 3, i32 7
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = load ptr, ptr %139, align 4
  %143 = call i32 %141(ptr noundef %142, i16 noundef zeroext 27192, i8 noundef zeroext 0) #10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %190

145:                                              ; preds = %136
  %146 = load ptr, ptr %4, align 8
  %147 = getelementptr inbounds %struct.platform_device, ptr %146, i32 0, i32 3, i32 7
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %148, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = load ptr, ptr %148, align 4
  %152 = call i32 %150(ptr noundef %151, i16 noundef zeroext 27212, i8 noundef zeroext 82) #10
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %190

154:                                              ; preds = %145
  %155 = load ptr, ptr %4, align 8
  %156 = getelementptr inbounds %struct.platform_device, ptr %155, i32 0, i32 3, i32 7
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %157, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = load ptr, ptr %157, align 4
  %161 = call i32 %159(ptr noundef %160, i16 noundef zeroext 27209, i8 noundef zeroext 42) #10
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %190

163:                                              ; preds = %154
  %164 = load ptr, ptr %4, align 8
  %165 = getelementptr inbounds %struct.platform_device, ptr %164, i32 0, i32 3, i32 7
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %166, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = load ptr, ptr %166, align 4
  %170 = call i32 %168(ptr noundef %169, i16 noundef zeroext 26688, i8 noundef zeroext 46) #10
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %163
  %173 = load ptr, ptr %4, align 8
  %174 = getelementptr inbounds %struct.platform_device, ptr %173, i32 0, i32 3, i32 7
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %175, i32 0, i32 2
  %177 = load ptr, ptr %176, align 4
  %178 = load ptr, ptr %175, align 4
  %179 = call i32 %177(ptr noundef %178, i16 noundef zeroext 27216, i8 noundef zeroext %28) #10
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %172
  %182 = load ptr, ptr %4, align 8
  %183 = getelementptr inbounds %struct.platform_device, ptr %182, i32 0, i32 3, i32 7
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %184, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %184, align 4
  %188 = call i32 %186(ptr noundef %187, i16 noundef zeroext 27192, i8 noundef zeroext 7) #10
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %181, %172, %163, %154, %145, %136, %127, %118, %109, %100, %91, %82, %73, %64, %55, %46, %37, %27, %22, %19, %15, %12, %8, %1
  %191 = phi i32 [ %13, %12 ], [ %17, %15 ], [ %35, %27 ], [ %44, %37 ], [ %53, %46 ], [ %62, %55 ], [ %71, %64 ], [ %80, %73 ], [ %89, %82 ], [ %98, %91 ], [ %107, %100 ], [ %116, %109 ], [ %125, %118 ], [ %134, %127 ], [ %143, %136 ], [ %152, %145 ], [ %161, %154 ], [ %170, %163 ], [ %179, %172 ], [ %188, %181 ], [ -22, %8 ], [ -22, %1 ], [ -22, %19 ], [ -22, %22 ]
  br label %192

192:                                              ; preds = %190, %181
  %193 = phi i32 [ %191, %190 ], [ 0, %181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %193
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @zd1301_demod_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #9 {
  store i32 400, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zd1301_demod_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = call i32 %10(ptr noundef %11, i16 noundef zeroext 27172, ptr noundef nonnull %3) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i8, ptr %3, align 1
  %16 = add i8 %15, -1
  %17 = icmp ult i8 %16, 31
  %18 = select i1 %17, i32 31, i32 0
  store i32 %18, ptr %1, align 4
  %19 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %5, i32 0, i32 3
  %20 = load i8, ptr %19, align 8
  %21 = load i8, ptr @zd1301_demod_gain, align 1
  %22 = icmp eq i8 %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %14
  store i8 %21, ptr %19, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = call i32 %28(ptr noundef %29, i16 noundef zeroext 27203, i8 noundef zeroext %21) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23, %2
  %33 = phi i32 [ %12, %2 ], [ %30, %23 ]
  br label %34

34:                                               ; preds = %32, %23, %14
  %35 = phi i32 [ %33, %32 ], [ 0, %23 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
