; ModuleID = '/llk/IR/drivers/media/dvb-frontends/ts2020.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ts2020.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ts2020_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ts2020_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ts2020_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ts2020_config = type { i8, i32, i16, ptr, i8, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ts2020_priv = type { ptr, %struct.mutex, %struct.regmap_config, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, i16, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"ts2020\00", align 1
@__kstrtab_ts2020_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ts2020_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ts2020_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ts2020_attach to i32), ptr @__kstrtab_ts2020_attach, ptr @__kstrtabns_ts2020_attach }, section "___ksymtab+ts2020_attach", align 4
@ts2020_id_table = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ts2020\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ts2022\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author281 = internal constant [54 x i8] c"author=Konstantin Dimitrov <kosio.dimitrov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description282 = internal constant [68 x i8] c"description=Montage Technology TS2020 - Silicon tuner driver module\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@ts2020_driver = internal global %struct.i2c_driver { i32 0, ptr @ts2020_probe, ptr @ts2020_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ts2020_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@ts2020_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&dev->regmap_mutex\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TS2020\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"TS2022\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Montage Technology %s successfully identified\0A\00", align 1
@ts2020_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"TS2020\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @ts2020_release, ptr @ts2020_init, ptr @ts2020_sleep, ptr null, ptr null, ptr @ts2020_set_params, ptr null, ptr null, ptr @ts2020_get_frequency, ptr null, ptr @ts2020_get_if_frequency, ptr null, ptr @ts2020_read_signal_strength, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_license283, ptr @__ksymtab_ts2020_attach], section "llvm.metadata"

@__mod_i2c__ts2020_id_table_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @ts2020_id_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ts2020_attach(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.i2c_board_info, align 4
  %5 = alloca %struct.ts2020_config, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef align 4 dereferenceable(24) %1, i32 24, i1 false)
  %6 = getelementptr inbounds %struct.ts2020_config, ptr %5, i32 0, i32 3
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ts2020_config, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false)
  %10 = call i32 @strscpy(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 20) #11
  %11 = load i8, ptr %1, align 4
  %12 = zext i8 %11 to i16
  %13 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 2
  store i16 %12, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 4
  store ptr %5, ptr %14, align 4
  %15 = call ptr @i2c_new_client_device(ptr noundef %2, ptr noundef nonnull %4) #11
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr null, ptr %0
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi ptr [ null, %3 ], [ %23, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  ret ptr %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ts2020_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ts2020_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts2020_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ts2020_config, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 276) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %143, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @ts2020_probe.__key) #11
  %14 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 2, i32 1
  store i32 8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 2, i32 4
  store i32 8, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 2, i32 12
  store ptr @ts2020_regmap_lock, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 2, i32 13
  store ptr @ts2020_regmap_unlock, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 2, i32 14
  store ptr %10, ptr %19, align 8
  %20 = tail call ptr @__regmap_init_i2c(ptr noundef %0, ptr noundef %14, ptr noundef null, ptr noundef null) #11
  %21 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = ptrtoint ptr %20 to i32
  br label %141

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 7
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 8
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.ts2020_config, ptr %6, i32 0, i32 2
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, 1
  %36 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 9
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, -2
  %39 = or i16 %38, %35
  store i16 %39, ptr %36, align 4
  %40 = load i16, ptr %33, align 4
  %41 = and i16 %40, 6
  %42 = and i16 %39, -7
  %43 = or i16 %42, %41
  store i16 %43, ptr %36, align 4
  %44 = load i16, ptr %33, align 4
  %45 = and i16 %44, 248
  %46 = and i16 %43, -249
  %47 = or i16 %46, %45
  store i16 %47, ptr %36, align 4
  %48 = load i16, ptr %33, align 4
  %49 = and i16 %48, 256
  %50 = and i16 %47, -257
  %51 = or i16 %50, %49
  store i16 %51, ptr %36, align 4
  %52 = getelementptr inbounds %struct.ts2020_config, ptr %6, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 10
  store i32 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 4
  store ptr %8, ptr %55, align 8
  %56 = getelementptr inbounds %struct.ts2020_config, ptr %6, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 6
  store ptr %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 4
  store ptr %10, ptr %59, align 4
  store ptr %0, ptr %10, align 8
  %60 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 5
  store i32 -32, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 5, i32 0, i32 1
  store volatile ptr %61, ptr %61, align 8
  %62 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 5, i32 0, i32 1, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 5, i32 0, i32 2
  store ptr @ts2020_stat_work, ptr %63, align 8
  %64 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %64, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %65 = load ptr, ptr %21, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef 0, ptr noundef nonnull %3) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %138

68:                                               ; preds = %25
  %69 = load i32, ptr %3, align 4
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load ptr, ptr %21, align 4
  %74 = call i32 @regmap_write(ptr noundef %73, i32 noundef 0, i32 noundef 1) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %138

76:                                               ; preds = %72
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 50000, i32 noundef 2) #11
  br label %77

77:                                               ; preds = %76, %68
  %78 = load ptr, ptr %21, align 4
  %79 = call i32 @regmap_write(ptr noundef %78, i32 noundef 0, i32 noundef 3) #11
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %138

81:                                               ; preds = %77
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 50000, i32 noundef 2) #11
  %82 = load ptr, ptr %21, align 4
  %83 = call i32 @regmap_read(ptr noundef %82, i32 noundef 0, ptr noundef nonnull %3) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %138

85:                                               ; preds = %81
  %86 = load i32, ptr %3, align 4
  switch i32 %86, label %138 [
    i32 1, label %87
    i32 65, label %87
    i32 129, label %87
    i32 195, label %92
    i32 131, label %92
  ]

87:                                               ; preds = %85, %85, %85
  %88 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 12
  store i8 0, ptr %88, align 8
  %89 = load i32, ptr %54, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %87
  store i32 1060000, ptr %54, align 8
  br label %123

92:                                               ; preds = %85, %85
  %93 = getelementptr inbounds %struct.ts2020_priv, ptr %10, i32 0, i32 12
  store i8 1, ptr %93, align 8
  %94 = load i32, ptr %54, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1103000, ptr %54, align 8
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i16, ptr %36, align 4
  %99 = lshr i16 %98, 1
  %100 = and i16 %99, 3
  %101 = zext i16 %100 to i32
  switch i32 %101, label %138 [
    i32 0, label %110
    i32 1, label %102
    i32 2, label %109
  ]

102:                                              ; preds = %97
  %103 = load ptr, ptr %21, align 4
  %104 = lshr i16 %98, 3
  %105 = and i16 %104, 31
  %106 = zext i16 %105 to i32
  %107 = call i32 @regmap_write(ptr noundef %103, i32 noundef 5, i32 noundef %106) #11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %138

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %102, %97
  %111 = phi i32 [ 108, %109 ], [ 112, %102 ], [ 96, %97 ]
  %112 = load ptr, ptr %21, align 4
  %113 = call i32 @regmap_write(ptr noundef %112, i32 noundef 66, i32 noundef %111) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  %116 = load i16, ptr %36, align 4
  %117 = and i16 %116, 1
  %118 = icmp eq i16 %117, 0
  %119 = select i1 %118, i32 108, i32 236
  %120 = load ptr, ptr %21, align 4
  %121 = call i32 @regmap_write(ptr noundef %120, i32 noundef 98, i32 noundef %119) #11
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %115, %91, %87
  %124 = phi ptr [ @.str.3, %115 ], [ @.str.2, %87 ], [ @.str.2, %91 ]
  %125 = load ptr, ptr %21, align 4
  %126 = call i32 @regmap_write(ptr noundef %125, i32 noundef 0, i32 noundef 0) #11
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull %124) #13
  %129 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %129, ptr noundef nonnull align 4 dereferenceable(220) @ts2020_tuner_ops, i32 220, i1 false)
  %130 = getelementptr inbounds %struct.ts2020_config, ptr %6, i32 0, i32 4
  %131 = load i8, ptr %130, align 4
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 1, i32 32, i32 1
  store ptr null, ptr %135, align 4
  br label %136

136:                                              ; preds = %134, %128
  %137 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %10, ptr %137, align 8
  br label %143

138:                                              ; preds = %123, %115, %110, %102, %97, %85, %81, %77, %72, %25
  %139 = phi i32 [ %66, %25 ], [ %74, %72 ], [ %79, %77 ], [ %83, %81 ], [ %113, %110 ], [ %121, %115 ], [ %126, %123 ], [ %107, %102 ], [ -19, %85 ], [ -22, %97 ]
  %140 = load ptr, ptr %21, align 4
  call void @regmap_exit(ptr noundef %140) #11
  br label %141

141:                                              ; preds = %138, %23
  %142 = phi i32 [ %24, %23 ], [ %139, %138 ]
  call void @kfree(ptr noundef nonnull %10) #11
  br label %143

143:                                              ; preds = %141, %136, %2
  %144 = phi i32 [ 0, %136 ], [ %142, %141 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts2020_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 9
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 5
  %10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %9) #11
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @regmap_exit(ptr noundef %13) #11
  tail call void @kfree(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ts2020_regmap_lock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ts2020_priv, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.ts2020_priv, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 1, i32 28
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %4, i32 noundef 1) #11
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ts2020_regmap_unlock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ts2020_priv, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %3, i32 noundef 0) #11
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.ts2020_priv, ptr %0, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %10) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ts2020_stat_work(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !annotation !8
  %9 = getelementptr inbounds %struct.ts2020_priv, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %1
  %13 = call i32 %10(ptr noundef %5, ptr noundef nonnull %3) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %105

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ts2020_priv, ptr %8, i32 0, i32 12
  %18 = load i8, ptr %17, align 4
  switch i8 %18, label %29 [
    i8 0, label %19
    i8 1, label %24
  ]

19:                                               ; preds = %16
  %20 = load i8, ptr %3, align 1
  %21 = zext i8 %20 to i32
  %22 = mul nuw nsw i32 %21, 20
  %23 = add nsw i32 %22, -1166
  br label %29

24:                                               ; preds = %16
  %25 = load i8, ptr %3, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 4
  %28 = add nsw i32 %27, -670
  br label %29

29:                                               ; preds = %24, %19, %16
  %30 = phi i32 [ 0, %16 ], [ %28, %24 ], [ %23, %19 ]
  %31 = call i32 @llvm.smax.i32(i32 %30, i32 0) #11
  %32 = load ptr, ptr %7, align 4
  br label %33

33:                                               ; preds = %29, %1
  %34 = phi ptr [ %32, %29 ], [ %8, %1 ]
  %35 = phi i32 [ %31, %29 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %36 = getelementptr inbounds %struct.ts2020_priv, ptr %34, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @regmap_read(ptr noundef %37, i32 noundef 61, ptr noundef nonnull %2) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %95, label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %2, align 4
  %42 = and i32 %41, 31
  %43 = load ptr, ptr %36, align 4
  %44 = call i32 @regmap_read(ptr noundef %43, i32 noundef 33, ptr noundef nonnull %2) #11
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %95, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr %2, align 4
  %48 = and i32 %47, 31
  %49 = getelementptr inbounds %struct.ts2020_priv, ptr %34, i32 0, i32 12
  %50 = load i8, ptr %49, align 4
  switch i8 %50, label %96 [
    i8 0, label %51
    i8 1, label %68
  ]

51:                                               ; preds = %46
  %52 = call i32 @llvm.umin.i32(i32 %42, i32 15) #11
  %53 = call i32 @llvm.umin.i32(i32 %48, i32 13) #11
  %54 = call i32 @llvm.smax.i32(i32 %35, i32 400) #11
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 1100) #11
  %56 = mul nuw nsw i32 %52, 2330
  %57 = mul nuw nsw i32 %53, 3500
  %58 = add nuw nsw i32 %57, %56
  %59 = zext i32 %58 to i64
  %60 = mul nuw nsw i32 %55, 24
  %61 = trunc i32 %60 to i16
  %62 = urem i16 %61, 10
  %63 = zext i16 %62 to i32
  %64 = sub nuw nsw i32 %60, %63
  %65 = zext i32 %64 to i64
  %66 = add nuw nsw i64 %65, %59
  %67 = sub nuw nsw i64 -10000, %66
  br label %93

68:                                               ; preds = %46
  %69 = load ptr, ptr %36, align 4
  %70 = call i32 @regmap_read(ptr noundef %69, i32 noundef 102, ptr noundef nonnull %2) #11
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %2, align 4
  %74 = lshr i32 %73, 3
  %75 = and i32 %74, 7
  %76 = call i32 @llvm.umin.i32(i32 %42, i32 15) #11
  %77 = call i32 @llvm.umax.i32(i32 %48, i32 2) #11
  %78 = call i32 @llvm.umin.i32(i32 %77, i32 16) #11
  %79 = call i32 @llvm.umin.i32(i32 %75, i32 6) #11
  %80 = call i32 @llvm.smax.i32(i32 %35, i32 600) #11
  %81 = call i32 @llvm.umin.i32(i32 %80, i32 1600) #11
  %82 = mul nuw nsw i32 %76, 2650
  %83 = mul nuw nsw i32 %78, 3380
  %84 = mul nuw nsw i32 %79, 2850
  %85 = mul nuw nsw i32 %81, 176
  %86 = udiv i32 %85, 100
  %87 = mul nuw nsw i32 %86, 10
  %88 = add nuw nsw i32 %82, %87
  %89 = add nuw nsw i32 %88, %83
  %90 = add nuw nsw i32 %89, %84
  %91 = zext i32 %90 to i64
  %92 = sub nsw i64 30000, %91
  br label %93

93:                                               ; preds = %72, %51
  %94 = phi i64 [ %67, %51 ], [ %92, %72 ]
  store i64 %94, ptr %6, align 8
  br label %96

95:                                               ; preds = %68, %40, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %105

96:                                               ; preds = %93, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %97 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %97, align 1
  %98 = getelementptr i8, ptr %0, i32 56
  %99 = load i16, ptr %98, align 4
  %100 = and i16 %99, 256
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load ptr, ptr @system_wq, align 4
  %104 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %103, ptr noundef %0, i32 noundef 200) #11
  br label %105

105:                                              ; preds = %102, %96, %95, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ts2020_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  tail call void @i2c_unregister_device(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts2020_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 12
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %9, label %30

9:                                                ; preds = %1
  %10 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 66, i32 noundef 115) #11
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 9
  %13 = load i16, ptr %12, align 4
  %14 = lshr i16 %13, 3
  %15 = and i16 %14, 31
  %16 = zext i16 %15 to i32
  %17 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 5, i32 noundef %16) #11
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 32, i32 noundef 39) #11
  %20 = load ptr, ptr %7, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 7, i32 noundef 2) #11
  %22 = load ptr, ptr %7, align 4
  %23 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 17, i32 noundef 255) #11
  %24 = load ptr, ptr %7, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 96, i32 noundef 249) #11
  %26 = load ptr, ptr %7, align 4
  %27 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 8, i32 noundef 1) #11
  %28 = load ptr, ptr %7, align 4
  %29 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 0, i32 noundef 65) #11
  br label %78

30:                                               ; preds = %1
  %31 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 0, i32 noundef 1) #11
  %32 = load ptr, ptr %7, align 4
  %33 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 0, i32 noundef 3) #11
  %34 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 9
  %35 = load i16, ptr %34, align 4
  %36 = lshr i16 %35, 1
  %37 = and i16 %36, 3
  %38 = zext i16 %37 to i32
  switch i32 %38, label %46 [
    i32 2, label %45
    i32 1, label %39
  ]

39:                                               ; preds = %30
  %40 = load ptr, ptr %7, align 4
  %41 = lshr i16 %35, 3
  %42 = and i16 %41, 31
  %43 = zext i16 %42 to i32
  %44 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 5, i32 noundef %43) #11
  br label %46

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %39, %30
  %47 = phi i32 [ 108, %45 ], [ 112, %39 ], [ 96, %30 ]
  %48 = load ptr, ptr %7, align 4
  %49 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 66, i32 noundef %47) #11
  %50 = load i16, ptr %34, align 4
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  %53 = select i1 %52, i32 108, i32 236
  %54 = load ptr, ptr %7, align 4
  %55 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 98, i32 noundef %53) #11
  %56 = load ptr, ptr %7, align 4
  %57 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 125, i32 noundef 157) #11
  %58 = load ptr, ptr %7, align 4
  %59 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 124, i32 noundef 154) #11
  %60 = load ptr, ptr %7, align 4
  %61 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 122, i32 noundef 118) #11
  %62 = load ptr, ptr %7, align 4
  %63 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 59, i32 noundef 1) #11
  %64 = load ptr, ptr %7, align 4
  %65 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 99, i32 noundef 136) #11
  %66 = load ptr, ptr %7, align 4
  %67 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 97, i32 noundef 133) #11
  %68 = load ptr, ptr %7, align 4
  %69 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 34, i32 noundef 48) #11
  %70 = load ptr, ptr %7, align 4
  %71 = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 48, i32 noundef 64) #11
  %72 = load ptr, ptr %7, align 4
  %73 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 32, i32 noundef 35) #11
  %74 = load ptr, ptr %7, align 4
  %75 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 36, i32 noundef 2) #11
  %76 = load ptr, ptr %7, align 4
  %77 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 18, i32 noundef 160) #11
  br label %78

78:                                               ; preds = %46, %9
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %80, align 1
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %81, align 1
  %82 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 5
  tail call void @ts2020_stat_work(ptr noundef %82)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts2020_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 12
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 10, i32 0
  %8 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %7, i32 noundef 0) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 9
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 256
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ts2020_priv, ptr %3, i32 0, i32 5
  %19 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %18) #11
  br label %20

20:                                               ; preds = %17, %12, %1
  %21 = phi i32 [ %10, %1 ], [ 0, %17 ], [ 0, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts2020_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = load i32, ptr %4, align 4
  %8 = getelementptr inbounds %struct.ts2020_priv, ptr %6, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  %11 = select i1 %10, i32 16, i32 0
  %12 = select i1 %10, i32 4, i32 2
  %13 = mul i32 %7, 14
  %14 = mul i32 %13, %12
  %15 = udiv i32 %14, 27000
  %16 = and i32 %15, 1
  %17 = add nuw nsw i32 %16, %15
  %18 = mul i32 %17, 27000
  %19 = udiv i32 %18, 14
  %20 = select i1 %10, i32 2, i32 1
  %21 = lshr i32 %19, %20
  %22 = getelementptr inbounds %struct.ts2020_priv, ptr %6, i32 0, i32 11
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ts2020_priv, ptr %6, i32 0, i32 12
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = or i32 %11, 1
  %28 = getelementptr inbounds %struct.ts2020_priv, ptr %6, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 16, i32 noundef %27) #11
  br label %39

31:                                               ; preds = %1
  %32 = or i32 %11, 11
  %33 = getelementptr inbounds %struct.ts2020_priv, ptr %6, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 16, i32 noundef %32) #11
  %36 = load ptr, ptr %33, align 4
  %37 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 17, i32 noundef 64) #11
  %38 = or i32 %37, %35
  br label %39

39:                                               ; preds = %31, %26
  %40 = phi i32 [ 2766, %26 ], [ 3200, %31 ]
  %41 = phi i32 [ %30, %26 ], [ %38, %31 ]
  %42 = add nuw nsw i32 %17, 64512
  %43 = lshr i32 %42, 8
  %44 = getelementptr inbounds %struct.ts2020_priv, ptr %6, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = and i32 %43, 255
  %47 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 1, i32 noundef %46) #11
  %48 = load ptr, ptr %44, align 4
  %49 = and i32 %17, 255
  %50 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 2, i32 noundef %49) #11
  %51 = load ptr, ptr %44, align 4
  %52 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 3, i32 noundef 6) #11
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.ts2020_priv, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 81, i32 noundef 15) #11
  %57 = load ptr, ptr %54, align 4
  %58 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 81, i32 noundef 31) #11
  %59 = load ptr, ptr %54, align 4
  %60 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 80, i32 noundef 16) #11
  %61 = load ptr, ptr %54, align 4
  %62 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 80, i32 noundef 0) #11
  tail call void @msleep(i32 noundef 20) #11
  %63 = or i32 %47, %41
  %64 = or i32 %63, %50
  %65 = or i32 %64, %52
  %66 = or i32 %65, %56
  %67 = or i32 %66, %58
  %68 = or i32 %67, %60
  %69 = or i32 %68, %62
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %256, label %71

71:                                               ; preds = %39
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr inbounds %struct.ts2020_priv, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 81, i32 noundef 23) #11
  %76 = load ptr, ptr %73, align 4
  %77 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 81, i32 noundef 31) #11
  %78 = load ptr, ptr %73, align 4
  %79 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 80, i32 noundef 8) #11
  %80 = load ptr, ptr %73, align 4
  %81 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef 80, i32 noundef 0) #11
  tail call void @msleep(i32 noundef 20) #11
  %82 = or i32 %75, %69
  %83 = or i32 %82, %77
  %84 = or i32 %83, %79
  %85 = or i32 %84, %81
  %86 = load i8, ptr %23, align 4
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %123

88:                                               ; preds = %71
  %89 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %90 = getelementptr inbounds %struct.ts2020_priv, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 @regmap_read(ptr noundef %91, i32 noundef 61, ptr noundef nonnull %2) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %88
  %95 = load i32, ptr %2, align 4
  %96 = and i32 %95, 127
  %97 = icmp ult i32 %96, 22
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 161, ptr %2, align 4
  br label %103

99:                                               ; preds = %94
  %100 = icmp eq i32 %96, 22
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  store i32 153, ptr %2, align 4
  br label %103

102:                                              ; preds = %99
  store i32 249, ptr %2, align 4
  br label %103

103:                                              ; preds = %102, %101, %98
  %104 = phi i32 [ 153, %101 ], [ 249, %102 ], [ 161, %98 ]
  %105 = load ptr, ptr %90, align 4
  %106 = call i32 @regmap_write(ptr noundef %105, i32 noundef 96, i32 noundef %104) #11
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr inbounds %struct.ts2020_priv, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 @regmap_write(ptr noundef %109, i32 noundef 81, i32 noundef 23) #11
  %111 = load ptr, ptr %108, align 4
  %112 = call i32 @regmap_write(ptr noundef %111, i32 noundef 81, i32 noundef 31) #11
  %113 = or i32 %112, %110
  %114 = load ptr, ptr %108, align 4
  %115 = call i32 @regmap_write(ptr noundef %114, i32 noundef 80, i32 noundef 8) #11
  %116 = or i32 %113, %115
  %117 = load ptr, ptr %108, align 4
  %118 = call i32 @regmap_write(ptr noundef %117, i32 noundef 80, i32 noundef 0) #11
  %119 = or i32 %116, %118
  call void @msleep(i32 noundef 20) #11
  br label %120

120:                                              ; preds = %103, %88
  %121 = phi i32 [ %119, %103 ], [ %92, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %122 = or i32 %121, %85
  br label %123

123:                                              ; preds = %120, %71
  %124 = phi i32 [ %122, %120 ], [ %85, %71 ]
  %125 = load ptr, ptr %44, align 4
  %126 = call i32 @regmap_write(ptr noundef %125, i32 noundef 4, i32 noundef 46) #11
  %127 = load ptr, ptr %5, align 4
  %128 = getelementptr inbounds %struct.ts2020_priv, ptr %127, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = call i32 @regmap_write(ptr noundef %129, i32 noundef 81, i32 noundef 27) #11
  %131 = load ptr, ptr %128, align 4
  %132 = call i32 @regmap_write(ptr noundef %131, i32 noundef 81, i32 noundef 31) #11
  %133 = load ptr, ptr %128, align 4
  %134 = call i32 @regmap_write(ptr noundef %133, i32 noundef 80, i32 noundef 4) #11
  %135 = load ptr, ptr %128, align 4
  %136 = call i32 @regmap_write(ptr noundef %135, i32 noundef 80, i32 noundef 0) #11
  call void @msleep(i32 noundef 20) #11
  %137 = or i32 %126, %124
  %138 = or i32 %137, %130
  %139 = or i32 %138, %132
  %140 = or i32 %139, %134
  %141 = or i32 %140, %136
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %256, label %143

143:                                              ; preds = %123
  %144 = load i8, ptr %23, align 4
  %145 = icmp eq i8 %144, 1
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load ptr, ptr %44, align 4
  %148 = call i32 @regmap_write(ptr noundef %147, i32 noundef 37, i32 noundef 0) #11
  %149 = load ptr, ptr %44, align 4
  %150 = call i32 @regmap_write(ptr noundef %149, i32 noundef 39, i32 noundef 112) #11
  %151 = or i32 %150, %148
  %152 = load ptr, ptr %44, align 4
  %153 = call i32 @regmap_write(ptr noundef %152, i32 noundef 65, i32 noundef 9) #11
  %154 = or i32 %151, %153
  %155 = load ptr, ptr %44, align 4
  %156 = call i32 @regmap_write(ptr noundef %155, i32 noundef 8, i32 noundef 11) #11
  %157 = or i32 %154, %156
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %256, label %159

159:                                              ; preds = %146, %143
  %160 = load ptr, ptr %44, align 4
  %161 = call i32 @regmap_read(ptr noundef %160, i32 noundef 38, ptr noundef nonnull %3) #11
  %162 = load i32, ptr %3, align 4
  %163 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %164 = load i32, ptr %163, align 4
  %165 = udiv i32 %164, 2000
  %166 = call i32 @llvm.umax.i32(i32 %165, i32 2000)
  %167 = call i32 @llvm.umin.i32(i32 %166, i32 35000)
  %168 = add nuw nsw i32 %167, 5000
  %169 = shl i32 %162, 1
  %170 = and i32 %169, 131070
  %171 = add nuw nsw i32 %170, 151
  %172 = udiv i32 9522, %171
  %173 = trunc i32 %172 to i16
  %174 = mul nuw nsw i16 %173, 135
  %175 = udiv i16 %174, 100
  %176 = trunc i16 %175 to i8
  %177 = mul nuw nsw i16 %173, 78
  %178 = udiv i16 %177, 100
  %179 = zext i16 %178 to i32
  %180 = and i16 %175, 192
  %181 = icmp eq i16 %180, 0
  %182 = select i1 %181, i8 %176, i8 63
  %183 = shl nuw nsw i32 %172, 1
  %184 = mul nuw nsw i32 %183, %168
  %185 = udiv i32 %184, %40
  %186 = trunc i32 %185 to i16
  %187 = udiv i16 %186, 27
  %188 = add nuw nsw i16 %187, 1
  %189 = lshr i16 %188, 1
  %190 = trunc i16 %189 to i8
  %191 = and i16 %188, 496
  %192 = icmp ugt i16 %191, 46
  %193 = select i1 %192, i8 23, i8 %190
  %194 = icmp eq i8 %193, 0
  %195 = select i1 %194, i8 1, i8 %193
  %196 = zext i8 %195 to i32
  %197 = mul nuw nsw i32 %40, 54
  %198 = mul nuw nsw i32 %197, %196
  %199 = udiv i32 %198, %168
  %200 = add nuw nsw i32 %199, 1
  %201 = lshr i32 %200, 1
  %202 = and i32 %201, 255
  %203 = icmp ult i32 %202, %179
  br i1 %203, label %204, label %212

204:                                              ; preds = %159
  %205 = add nuw nsw i8 %195, 1
  %206 = zext i8 %205 to i32
  %207 = mul nuw nsw i32 %197, %206
  %208 = udiv i32 %207, %168
  %209 = add nuw nsw i32 %208, 1
  %210 = lshr i32 %209, 1
  %211 = and i32 %210, 255
  br label %212

212:                                              ; preds = %204, %159
  %213 = phi i32 [ %206, %204 ], [ %196, %159 ]
  %214 = phi i32 [ %211, %204 ], [ %202, %159 ]
  %215 = phi i32 [ %210, %204 ], [ %201, %159 ]
  %216 = trunc i32 %215 to i8
  %217 = zext i8 %182 to i32
  %218 = icmp ugt i32 %214, %217
  %219 = select i1 %218, i8 %182, i8 %216
  %220 = load ptr, ptr %44, align 4
  %221 = zext i8 %219 to i32
  %222 = call i32 @regmap_write(ptr noundef %220, i32 noundef 4, i32 noundef %221) #11
  %223 = load ptr, ptr %44, align 4
  %224 = call i32 @regmap_write(ptr noundef %223, i32 noundef 6, i32 noundef %213) #11
  %225 = load ptr, ptr %5, align 4
  %226 = getelementptr inbounds %struct.ts2020_priv, ptr %225, i32 0, i32 3
  %227 = load ptr, ptr %226, align 4
  %228 = call i32 @regmap_write(ptr noundef %227, i32 noundef 81, i32 noundef 27) #11
  %229 = load ptr, ptr %226, align 4
  %230 = call i32 @regmap_write(ptr noundef %229, i32 noundef 81, i32 noundef 31) #11
  %231 = load ptr, ptr %226, align 4
  %232 = call i32 @regmap_write(ptr noundef %231, i32 noundef 80, i32 noundef 4) #11
  %233 = load ptr, ptr %226, align 4
  %234 = call i32 @regmap_write(ptr noundef %233, i32 noundef 80, i32 noundef 0) #11
  call void @msleep(i32 noundef 20) #11
  %235 = load ptr, ptr %5, align 4
  %236 = getelementptr inbounds %struct.ts2020_priv, ptr %235, i32 0, i32 3
  %237 = load ptr, ptr %236, align 4
  %238 = call i32 @regmap_write(ptr noundef %237, i32 noundef 81, i32 noundef 30) #11
  %239 = load ptr, ptr %236, align 4
  %240 = call i32 @regmap_write(ptr noundef %239, i32 noundef 81, i32 noundef 31) #11
  %241 = load ptr, ptr %236, align 4
  %242 = call i32 @regmap_write(ptr noundef %241, i32 noundef 80, i32 noundef 1) #11
  %243 = load ptr, ptr %236, align 4
  %244 = call i32 @regmap_write(ptr noundef %243, i32 noundef 80, i32 noundef 0) #11
  call void @msleep(i32 noundef 20) #11
  %245 = or i32 %224, %222
  %246 = or i32 %245, %228
  %247 = or i32 %246, %230
  %248 = or i32 %247, %232
  %249 = or i32 %248, %234
  %250 = or i32 %249, %238
  %251 = or i32 %250, %240
  %252 = or i32 %251, %242
  %253 = or i32 %252, %244
  call void @msleep(i32 noundef 80) #11
  %254 = icmp slt i32 %253, 0
  %255 = select i1 %254, i32 -22, i32 0
  br label %256

256:                                              ; preds = %212, %146, %123, %39
  %257 = phi i32 [ %255, %212 ], [ -19, %39 ], [ -19, %123 ], [ -19, %146 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %257
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ts2020_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ts2020_priv, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ts2020_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #9 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts2020_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ts2020_priv, ptr %4, i32 0, i32 9
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 256
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ts2020_priv, ptr %4, i32 0, i32 5
  tail call void @ts2020_stat_work(ptr noundef %10)
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %17 = load i64, ptr %16, align 1
  %18 = icmp slt i64 %17, -85000
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = icmp slt i64 %17, -65000
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = mul nsw i64 %17, 3
  %23 = add nsw i64 %22, 255000
  %24 = tail call i64 @div64_s64(i64 noundef %23, i64 noundef 1000) #11
  %25 = trunc i64 %24 to i32
  br label %39

26:                                               ; preds = %19
  %27 = icmp slt i64 %17, -45000
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = mul nsw i64 %17, 3
  %30 = add nsw i64 %29, 195000
  %31 = tail call i64 @div64_s64(i64 noundef %30, i64 noundef 2000) #11
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 60
  br label %39

34:                                               ; preds = %26
  %35 = add i64 %17, 45000
  %36 = tail call i64 @div64_s64(i64 noundef %35, i64 noundef 5000) #11
  %37 = trunc i64 %36 to i32
  %38 = add i32 %37, 90
  br label %39

39:                                               ; preds = %34, %28, %21, %15
  %40 = phi i32 [ %25, %21 ], [ %33, %28 ], [ %38, %34 ], [ 0, %15 ]
  %41 = mul i32 %40, 65535
  %42 = udiv i32 %41, 100
  %43 = trunc i32 %42 to i16
  br label %44

44:                                               ; preds = %39, %11
  %45 = phi i16 [ %43, %39 ], [ 0, %11 ]
  store i16 %45, ptr %1, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
