; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv6110x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv6110x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv6110x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv6110x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv6110x_attach:\09\09\09\09\09"
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
%struct.stv6110x_devctl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stv6110x_state = type { ptr, ptr, ptr, [8 x i8], ptr }
%struct.stv6110x_config = type { i8, i32, i8, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__param_str_verbose = internal constant [8 x i8] c"verbose\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global i32 0, align 4
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype249 = internal constant [21 x i8] c"parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose250 = internal constant [33 x i8] c"parm=verbose:Set Verbosity level\00", section ".modinfo", align 1
@stv6110x_ctl = internal global %struct.stv6110x_devctl { ptr @stv6110x_init, ptr @stv6110x_sleep, ptr @stv6110x_set_mode, ptr @stv6110x_set_frequency, ptr @stv6110x_get_frequency, ptr @stv6110x_set_bandwidth, ptr @stv6110x_get_bandwidth, ptr @stv6110x_set_bbgain, ptr @stv6110x_get_bbgain, ptr @stv6110x_set_refclock, ptr @stv6110x_get_status }, align 4
@stv6110x_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"STV6110(A) Silicon Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @stv6110x_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [20 x i8] c"Attaching STV6110x\0A\00", align 1
@__kstrtab_stv6110x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv6110x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv6110x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv6110x_attach to i32), ptr @__kstrtab_stv6110x_attach, ptr @__kstrtabns_stv6110x_attach }, section "___ksymtab+stv6110x_attach", align 4
@stv6110x_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"stv6110x\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author251 = internal constant [20 x i8] c"author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [35 x i8] c"description=STV6110x Silicon tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\013%s: Initialization failed\0A\00", align 1
@__func__.stv6110x_init = private unnamed_addr constant [14 x i8] c"stv6110x_init\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"stv6110x\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\013%s: I/O Error\0A\00", align 1
@__func__.stv6110x_write_regs = private unnamed_addr constant [20 x i8] c"stv6110x_write_regs\00", align 1
@__func__.stv6110x_set_mode = private unnamed_addr constant [18 x i8] c"stv6110x_set_mode\00", align 1
@__func__.stv6110x_read_reg = private unnamed_addr constant [18 x i8] c"stv6110x_read_reg\00", align 1
@stv6110x_driver = internal global %struct.i2c_driver { i32 0, ptr @stv6110x_probe, ptr @stv6110x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @stv6110x_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"Probed STV6110x\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_verbose250, ptr @__UNIQUE_ID_verbosetype249, ptr @__ksymtab_stv6110x_attach, ptr @__param_verbose], section "llvm.metadata"
@switch.table.stv6110x_probe = private unnamed_addr constant [9 x i8] c"\D1\11Q\11\91\11\11\11\D1", align 1

@__mod_i2c__stv6110x_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @stv6110x_id_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv6110x_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 2
  store ptr %1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 4
  store ptr @stv6110x_ctl, ptr %10, align 4
  %11 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 3
  store i64 2226468266322956551, ptr %11, align 4
  %12 = getelementptr inbounds %struct.stv6110x_config, ptr %1, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = icmp ult i8 %13, 9
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = sext i8 %13 to i32
  %17 = getelementptr inbounds [9 x i8], ptr @switch.table.stv6110x_probe, i32 0, i32 %16
  %18 = load i8, ptr %17, align 1
  br label %19

19:                                               ; preds = %15, %7
  %20 = phi i8 [ 17, %7 ], [ %18, %15 ]
  %21 = getelementptr %struct.stv6110x_state, ptr %5, i32 0, i32 3, i32 1
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  store ptr %5, ptr %22, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %23, ptr noundef nonnull align 4 dereferenceable(220) @stv6110x_ops, i32 220, i1 false)
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str) #11
  %25 = load ptr, ptr %10, align 4
  br label %26

26:                                               ; preds = %19, %3
  %27 = phi ptr [ %25, %19 ], [ null, %3 ]
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @stv6110x_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @stv6110x_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  %9 = getelementptr inbounds i8, ptr %2, i32 1
  %10 = getelementptr inbounds i8, ptr %2, i32 9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %10, i8 0, i32 55, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %11 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 9, ptr %11, align 4, !annotation !8
  %12 = load i8, ptr %8, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %15, align 4
  store i8 0, ptr %2, align 1
  %16 = load i64, ptr %6, align 1
  store i64 %16, ptr %9, align 1
  %17 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %3, i32 noundef 1) #12
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, ptr @verbose, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  br label %32

25:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  br label %32

26:                                               ; preds = %21
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  %28 = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv6110x_init) #11
  br label %32

32:                                               ; preds = %30, %26, %25, %24
  %33 = phi i32 [ -1, %26 ], [ -1, %30 ], [ 0, %25 ], [ -1, %24 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -8
  store i8 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  %13 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %13, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %14 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %14, align 4, !annotation !8
  %15 = load i8, ptr %12, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %3, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %2, align 1
  store i8 %10, ptr %19, align 1
  %20 = getelementptr inbounds %struct.stv6110x_state, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %3, i32 noundef 1) #12
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = load i32, ptr @verbose, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  br label %35

28:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  br label %35

29:                                               ; preds = %24
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  %31 = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_set_mode) #11
  br label %35

35:                                               ; preds = %33, %29, %28, %27, %1
  %36 = phi i32 [ 0, %1 ], [ -5, %29 ], [ -5, %33 ], [ 0, %28 ], [ -5, %27 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_set_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [64 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  switch i32 %1, label %7 [
    i32 1, label %10
    i32 2, label %14
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  br label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -8
  store i8 %13, ptr %11, align 4
  br label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 3
  %16 = load i8, ptr %15, align 4
  %17 = or i8 %16, 7
  store i8 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %10, %7
  %19 = phi i8 [ %9, %7 ], [ %17, %14 ], [ %13, %10 ]
  %20 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %22 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %22, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %23 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %23, align 4, !annotation !8
  %24 = load i8, ptr %21, align 4
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %4, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %3, align 1
  store i8 %19, ptr %28, align 1
  %29 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %4, i32 noundef 1) #12
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %37, label %33

33:                                               ; preds = %18
  %34 = load i32, ptr @verbose, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %44

37:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %44

38:                                               ; preds = %33
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  %40 = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_set_mode) #11
  br label %44

44:                                               ; preds = %42, %38, %37, %36
  %45 = phi i32 [ -5, %38 ], [ -5, %42 ], [ 0, %37 ], [ -5, %36 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_set_frequency(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [64 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [64 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [64 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stv6110x_state, ptr %15, i32 0, i32 3
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 7
  %19 = getelementptr inbounds %struct.stv6110x_state, ptr %15, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stv6110x_config, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = udiv i32 %22, 1000000
  %24 = trunc i32 %23 to i8
  %25 = shl i8 %24, 3
  %26 = or i8 %25, %18
  %27 = xor i8 %26, -128
  store i8 %27, ptr %16, align 4
  %28 = icmp ult i32 %1, 1023001
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = getelementptr %struct.stv6110x_state, ptr %15, i32 0, i32 3, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, -49
  %33 = or i8 %32, 16
  store i8 %33, ptr %30, align 1
  br label %48

34:                                               ; preds = %2
  %35 = icmp ult i32 %1, 1300001
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr %struct.stv6110x_state, ptr %15, i32 0, i32 3, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = or i8 %38, 48
  store i8 %39, ptr %37, align 1
  br label %48

40:                                               ; preds = %34
  %41 = icmp ult i32 %1, 2046001
  %42 = getelementptr %struct.stv6110x_state, ptr %15, i32 0, i32 3, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, -49
  br i1 %41, label %45, label %46

45:                                               ; preds = %40
  store i8 %44, ptr %42, align 1
  br label %48

46:                                               ; preds = %40
  %47 = or i8 %44, 32
  store i8 %47, ptr %42, align 1
  br label %48

48:                                               ; preds = %46, %45, %36, %29
  %49 = phi i8 [ %33, %29 ], [ %39, %36 ], [ %44, %45 ], [ %47, %46 ]
  %50 = phi i32 [ 40, %29 ], [ 40, %36 ], [ 20, %45 ], [ 20, %46 ]
  %51 = load i32, ptr %21, align 4
  %52 = udiv i32 %51, 100000
  %53 = lshr i32 %52, 1
  %54 = lshr i32 %52, 2
  %55 = sub nsw i32 %54, %50
  %56 = tail call i32 @llvm.abs.i32(i32 %55, i1 true)
  %57 = sub nsw i32 %53, %50
  %58 = tail call i32 @llvm.abs.i32(i32 %57, i1 true)
  %59 = icmp ult i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = select i1 %59, i32 2, i32 1
  %62 = lshr i32 %52, %61
  %63 = lshr i32 %52, 3
  %64 = sub nsw i32 %63, %50
  %65 = tail call i32 @llvm.abs.i32(i32 %64, i1 true)
  %66 = sub nsw i32 %62, %50
  %67 = tail call i32 @llvm.abs.i32(i32 %66, i1 true)
  %68 = icmp ult i32 %65, %67
  %69 = select i1 %68, i32 2, i32 %60
  %70 = add nuw nsw i32 %69, 1
  %71 = lshr i32 %52, %70
  %72 = lshr i32 %52, 4
  %73 = sub nsw i32 %72, %50
  %74 = tail call i32 @llvm.abs.i32(i32 %73, i1 true)
  %75 = sub nsw i32 %71, %50
  %76 = tail call i32 @llvm.abs.i32(i32 %75, i1 true)
  %77 = icmp ult i32 %74, %76
  %78 = select i1 %77, i32 3, i32 %69
  %79 = add nuw nsw i32 %78, 1
  %80 = shl i32 %1, %79
  %81 = mul i32 %80, %50
  %82 = udiv i32 %51, 1000
  %83 = udiv i32 %81, %82
  %84 = add i32 %83, 5
  %85 = udiv i32 %84, 10
  %86 = getelementptr %struct.stv6110x_state, ptr %15, i32 0, i32 3, i32 3
  %87 = and i8 %49, 48
  %88 = trunc i32 %78 to i8
  %89 = shl nuw i8 %88, 6
  %90 = or i8 %87, %89
  %91 = lshr i32 %85, 8
  %92 = trunc i32 %91 to i8
  %93 = or i8 %90, %92
  store i8 %93, ptr %86, align 1
  %94 = getelementptr %struct.stv6110x_state, ptr %15, i32 0, i32 3, i32 2
  %95 = trunc i32 %85 to i8
  store i8 %95, ptr %94, align 2
  %96 = getelementptr %struct.stv6110x_state, ptr %15, i32 0, i32 3, i32 5
  %97 = load i8, ptr %96, align 1
  %98 = or i8 %97, 4
  store i8 %98, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #12
  %99 = getelementptr inbounds i8, ptr %12, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %99, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %100 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %100, align 4, !annotation !8
  %101 = load i8, ptr %20, align 4
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %13, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %104, align 4
  %105 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 0, ptr %12, align 1
  store i8 %27, ptr %105, align 1
  %106 = getelementptr inbounds %struct.stv6110x_state, ptr %15, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %13, i32 noundef 1) #12
  %109 = icmp eq i32 %108, 1
  %110 = load i32, ptr @verbose, align 4
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %115, label %113

113:                                              ; preds = %48
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  br label %115

115:                                              ; preds = %113, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #12
  %116 = load i8, ptr %86, align 1
  %117 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #12
  %118 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %118, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %119 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %119, align 4, !annotation !8
  %120 = load i8, ptr %117, align 4
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %11, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %122, align 2
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %123, align 4
  %124 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 3, ptr %10, align 1
  store i8 %116, ptr %124, align 1
  %125 = load ptr, ptr %106, align 4
  %126 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %11, i32 noundef 1) #12
  %127 = icmp eq i32 %126, 1
  %128 = load i32, ptr @verbose, align 4
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %127, i1 true, i1 %129
  br i1 %130, label %133, label %131

131:                                              ; preds = %115
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  br label %133

133:                                              ; preds = %131, %115
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #12
  %134 = load i8, ptr %94, align 2
  %135 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #12
  %136 = getelementptr inbounds i8, ptr %8, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %136, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %137 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %137, align 4, !annotation !8
  %138 = load i8, ptr %135, align 4
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %9, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %140, align 2
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %141, align 4
  %142 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 2, ptr %8, align 1
  store i8 %134, ptr %142, align 1
  %143 = load ptr, ptr %106, align 4
  %144 = call i32 @i2c_transfer(ptr noundef %143, ptr noundef nonnull %9, i32 noundef 1) #12
  %145 = icmp eq i32 %144, 1
  %146 = load i32, ptr @verbose, align 4
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %145, i1 true, i1 %147
  br i1 %148, label %151, label %149

149:                                              ; preds = %133
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  br label %151

151:                                              ; preds = %149, %133
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  %152 = load i8, ptr %96, align 1
  %153 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  %154 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %154, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %155 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %155, align 4, !annotation !8
  %156 = load i8, ptr %153, align 4
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %7, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %158, align 2
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %159, align 4
  %160 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 5, ptr %6, align 1
  store i8 %152, ptr %160, align 1
  %161 = load ptr, ptr %106, align 4
  %162 = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %7, i32 noundef 1) #12
  %163 = icmp eq i32 %162, 1
  %164 = load i32, ptr @verbose, align 4
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %163, i1 true, i1 %165
  br i1 %166, label %169, label %167

167:                                              ; preds = %151
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  br label %169

169:                                              ; preds = %167, %151
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  %170 = getelementptr inbounds i8, ptr %5, i32 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  br label %177

177:                                              ; preds = %198, %169
  %178 = phi i8 [ 0, %169 ], [ %199, %198 ]
  %179 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 5, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %170, i8 0, i32 16, i1 false) #12, !annotation !8
  %180 = load i8, ptr %179, align 4
  %181 = zext i8 %180 to i16
  store i16 %181, ptr %5, align 4
  store i16 0, ptr %171, align 2
  store i16 1, ptr %170, align 4
  store ptr %3, ptr %172, align 4
  %182 = load i8, ptr %179, align 4
  %183 = zext i8 %182 to i16
  store i16 %183, ptr %173, align 4
  store i16 1, ptr %174, align 2
  store i16 1, ptr %175, align 4
  store ptr %4, ptr %176, align 4
  %184 = load ptr, ptr %106, align 4
  %185 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %5, i32 noundef 2) #12
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %192, label %187

187:                                              ; preds = %177
  %188 = load i32, ptr @verbose, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %187
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_read_reg) #11
  br label %194

192:                                              ; preds = %177
  %193 = load i8, ptr %4, align 1
  store i8 %193, ptr %96, align 1
  br label %194

194:                                              ; preds = %192, %190, %187
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %195 = load i8, ptr %96, align 1
  %196 = and i8 %195, 4
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  call void @msleep(i32 noundef 1) #12
  %199 = add nuw nsw i8 %178, 1
  %200 = icmp ult i8 %178, 9
  br i1 %200, label %177, label %201

201:                                              ; preds = %198, %194
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.stv6110x_state, ptr %10, i32 0, i32 3, i32 3
  %12 = getelementptr inbounds %struct.stv6110x_state, ptr %10, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 3, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %14 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #12, !annotation !8
  %15 = load i8, ptr %13, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %8, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %14, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %20 = load i8, ptr %13, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %24, align 4
  %25 = getelementptr inbounds %struct.stv6110x_state, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %8, i32 noundef 2) #12
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load i32, ptr @verbose, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_read_reg) #11
  br label %36

34:                                               ; preds = %2
  %35 = load i8, ptr %7, align 1
  store i8 %35, ptr %11, align 1
  br label %36

36:                                               ; preds = %34, %32, %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  %37 = getelementptr %struct.stv6110x_state, ptr %10, i32 0, i32 3, i32 2
  %38 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 2, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %39 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %39, i8 0, i32 16, i1 false) #12, !annotation !8
  %40 = load i8, ptr %38, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %5, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %42, align 2
  store i16 1, ptr %39, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %45 = load i8, ptr %38, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %49, align 4
  %50 = load ptr, ptr %25, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %5, i32 noundef 2) #12
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %58, label %53

53:                                               ; preds = %36
  %54 = load i32, ptr @verbose, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_read_reg) #11
  br label %60

58:                                               ; preds = %36
  %59 = load i8, ptr %4, align 1
  store i8 %59, ptr %37, align 1
  br label %60

60:                                               ; preds = %58, %56, %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %61 = load i8, ptr %11, align 1
  %62 = and i8 %61, 15
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = load i8, ptr %37, align 2
  %66 = zext i8 %65 to i32
  %67 = or i32 %64, %66
  %68 = load ptr, ptr %12, align 4
  %69 = getelementptr inbounds %struct.stv6110x_config, ptr %68, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = udiv i32 %70, 1000
  %72 = mul i32 %67, %71
  store i32 %72, ptr %1, align 4
  %73 = load i8, ptr %11, align 1
  %74 = zext i8 %73 to i32
  %75 = lshr i32 %74, 6
  %76 = lshr i32 %74, 4
  %77 = and i32 %76, 1
  %78 = add nuw nsw i32 %77, %75
  %79 = lshr i32 %72, %78
  %80 = lshr i32 %79, 2
  store i32 %80, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_set_bandwidth(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [64 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [64 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ugt i32 %1, 72000001
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr %struct.stv6110x_state, ptr %13, i32 0, i32 3, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = or i8 %17, 31
  br label %29

19:                                               ; preds = %2
  %20 = icmp ult i32 %1, 10000000
  %21 = getelementptr %struct.stv6110x_state, ptr %13, i32 0, i32 3, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, -32
  br i1 %20, label %29, label %24

24:                                               ; preds = %19
  %25 = udiv i32 %1, 2000000
  %26 = trunc i32 %25 to i8
  %27 = add nsw i8 %26, -5
  %28 = or i8 %23, %27
  br label %29

29:                                               ; preds = %24, %19, %15
  %30 = phi i8 [ %28, %24 ], [ %18, %15 ], [ %23, %19 ]
  %31 = getelementptr %struct.stv6110x_state, ptr %13, i32 0, i32 3, i32 4
  %32 = and i8 %30, -65
  store i8 %32, ptr %31, align 4
  %33 = getelementptr %struct.stv6110x_state, ptr %13, i32 0, i32 3, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = or i8 %34, 2
  store i8 %35, ptr %33, align 1
  %36 = getelementptr inbounds %struct.stv6110x_state, ptr %13, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #12
  %38 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %38, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %39 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %39, align 4, !annotation !8
  %40 = load i8, ptr %37, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %11, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %43, align 4
  %44 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 4, ptr %10, align 1
  store i8 %32, ptr %44, align 1
  %45 = getelementptr inbounds %struct.stv6110x_state, ptr %13, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %11, i32 noundef 1) #12
  %48 = icmp eq i32 %47, 1
  %49 = load i32, ptr @verbose, align 4
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %29
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  br label %54

54:                                               ; preds = %52, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #12
  %55 = load i8, ptr %33, align 1
  %56 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #12
  %57 = getelementptr inbounds i8, ptr %8, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %57, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %58 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %58, align 4, !annotation !8
  %59 = load i8, ptr %56, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %9, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 5, ptr %8, align 1
  store i8 %55, ptr %63, align 1
  %64 = load ptr, ptr %45, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %9, i32 noundef 1) #12
  %66 = icmp eq i32 %65, 1
  %67 = load i32, ptr @verbose, align 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %72, label %70

70:                                               ; preds = %54
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  br label %72

72:                                               ; preds = %70, %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  %73 = getelementptr inbounds i8, ptr %7, i32 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  br label %80

80:                                               ; preds = %101, %72
  %81 = phi i8 [ 0, %72 ], [ %102, %101 ]
  %82 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 5, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %73, i8 0, i32 16, i1 false) #12, !annotation !8
  %83 = load i8, ptr %82, align 4
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %7, align 4
  store i16 0, ptr %74, align 2
  store i16 1, ptr %73, align 4
  store ptr %5, ptr %75, align 4
  %85 = load i8, ptr %82, align 4
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %76, align 4
  store i16 1, ptr %77, align 2
  store i16 1, ptr %78, align 4
  store ptr %6, ptr %79, align 4
  %87 = load ptr, ptr %45, align 4
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %7, i32 noundef 2) #12
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %95, label %90

90:                                               ; preds = %80
  %91 = load i32, ptr @verbose, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_read_reg) #11
  br label %97

95:                                               ; preds = %80
  %96 = load i8, ptr %6, align 1
  store i8 %96, ptr %33, align 1
  br label %97

97:                                               ; preds = %95, %93, %90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  %98 = load i8, ptr %33, align 1
  %99 = and i8 %98, 2
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  call void @msleep(i32 noundef 1) #12
  %102 = add nuw nsw i8 %81, 1
  %103 = icmp ult i8 %81, 9
  br i1 %103, label %80, label %104

104:                                              ; preds = %101, %97
  %105 = load i8, ptr %31, align 4
  %106 = or i8 %105, 64
  store i8 %106, ptr %31, align 4
  %107 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %108 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %108, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %109 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %109, align 4, !annotation !8
  %110 = load i8, ptr %107, align 4
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %4, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %112, align 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %113, align 4
  %114 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 4, ptr %3, align 1
  store i8 %106, ptr %114, align 1
  %115 = load ptr, ptr %45, align 4
  %116 = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %4, i32 noundef 1) #12
  %117 = icmp eq i32 %116, 1
  %118 = load i32, ptr @verbose, align 4
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %123, label %121

121:                                              ; preds = %104
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  br label %123

123:                                              ; preds = %121, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.stv6110x_state, ptr %7, i32 0, i32 3, i32 4
  %9 = getelementptr inbounds %struct.stv6110x_state, ptr %7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 4, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #12, !annotation !8
  %12 = load i8, ptr %10, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %17 = load i8, ptr %10, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.stv6110x_state, ptr %7, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 2) #12
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, ptr @verbose, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_read_reg) #11
  br label %33

31:                                               ; preds = %2
  %32 = load i8, ptr %4, align 1
  store i8 %32, ptr %8, align 1
  br label %33

33:                                               ; preds = %31, %29, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %34 = load i8, ptr %8, align 4
  %35 = and i8 %34, 31
  %36 = add nuw nsw i8 %35, 5
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %37, 2000000
  store i32 %38, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_set_bbgain(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [64 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.stv6110x_state, ptr %6, i32 0, i32 3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, -16
  %10 = lshr i32 %1, 1
  %11 = trunc i32 %10 to i8
  %12 = or i8 %9, %11
  store i8 %12, ptr %7, align 1
  %13 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %15 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %15, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %16 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %16, align 4, !annotation !8
  %17 = load i8, ptr %14, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %3, align 1
  store i8 %12, ptr %21, align 1
  %22 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 1) #12
  %25 = icmp eq i32 %24, 1
  %26 = load i32, ptr @verbose, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  br label %31

31:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_get_bbgain(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.stv6110x_state, ptr %7, i32 0, i32 3, i32 1
  %9 = getelementptr inbounds %struct.stv6110x_state, ptr %7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #12, !annotation !8
  %12 = load i8, ptr %10, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %17 = load i8, ptr %10, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.stv6110x_state, ptr %7, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 2) #12
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, ptr @verbose, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_read_reg) #11
  br label %33

31:                                               ; preds = %2
  %32 = load i8, ptr %4, align 1
  store i8 %32, ptr %8, align 1
  br label %33

33:                                               ; preds = %31, %29, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %34 = load i8, ptr %8, align 1
  %35 = shl i8 %34, 1
  %36 = and i8 %35, 30
  %37 = zext i8 %36 to i32
  store i32 %37, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_set_refclock(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [64 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  switch i32 %1, label %7 [
    i32 0, label %21
    i32 2, label %11
    i32 4, label %16
    i32 8, label %21
  ]

7:                                                ; preds = %2
  %8 = getelementptr %struct.stv6110x_state, ptr %6, i32 0, i32 3, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 63
  store i8 %10, ptr %8, align 1
  br label %25

11:                                               ; preds = %2
  %12 = getelementptr %struct.stv6110x_state, ptr %6, i32 0, i32 3, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 63
  %15 = or i8 %14, 64
  store i8 %15, ptr %12, align 1
  br label %25

16:                                               ; preds = %2
  %17 = getelementptr %struct.stv6110x_state, ptr %6, i32 0, i32 3, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 63
  %20 = or i8 %19, -128
  store i8 %20, ptr %17, align 1
  br label %25

21:                                               ; preds = %2, %2
  %22 = getelementptr %struct.stv6110x_state, ptr %6, i32 0, i32 3, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = or i8 %23, -64
  store i8 %24, ptr %22, align 1
  br label %25

25:                                               ; preds = %21, %16, %11, %7
  %26 = phi i8 [ %24, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %7 ]
  %27 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %29 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %29, i8 0, i32 62, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %30 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %30, align 4, !annotation !8
  %31 = load i8, ptr %28, align 4
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %4, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %34, align 4
  %35 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %3, align 1
  store i8 %26, ptr %35, align 1
  %36 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %4, i32 noundef 1) #12
  %39 = icmp eq i32 %38, 1
  %40 = load i32, ptr @verbose, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %25
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_write_regs) #11
  br label %45

45:                                               ; preds = %43, %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.stv6110x_state, ptr %7, i32 0, i32 3, i32 5
  %9 = getelementptr inbounds %struct.stv6110x_state, ptr %7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 5, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #12, !annotation !8
  %12 = load i8, ptr %10, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %17 = load i8, ptr %10, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.stv6110x_state, ptr %7, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 2) #12
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, ptr @verbose, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv6110x_read_reg) #11
  br label %33

31:                                               ; preds = %2
  %32 = load i8, ptr %4, align 1
  store i8 %32, ptr %8, align 1
  br label %33

33:                                               ; preds = %31, %29, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %34 = load i8, ptr %8, align 1
  %35 = and i8 %34, 1
  %36 = zext i8 %35 to i32
  store i32 %36, ptr %1, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stv6110x_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_probe(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 24) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stv6110x_config, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %6, align 8
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 2
  store ptr %4, ptr %14, align 8
  %15 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 4
  store ptr @stv6110x_ctl, ptr %15, align 4
  %16 = getelementptr inbounds %struct.stv6110x_state, ptr %6, i32 0, i32 3
  store i64 2226468266322956551, ptr %16, align 4
  %17 = getelementptr inbounds %struct.stv6110x_config, ptr %4, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = icmp ult i8 %18, 9
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = sext i8 %18 to i32
  %22 = getelementptr inbounds [9 x i8], ptr @switch.table.stv6110x_probe, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  br label %24

24:                                               ; preds = %20, %8
  %25 = phi i8 [ 17, %8 ], [ %23, %20 ]
  %26 = getelementptr %struct.stv6110x_state, ptr %6, i32 0, i32 3, i32 1
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 4
  store ptr %6, ptr %27, align 4
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %28, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %29, ptr noundef nonnull align 4 dereferenceable(220) @stv6110x_ops, i32 220, i1 false) #12
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.11) #11
  %32 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %32, align 8
  %33 = getelementptr inbounds %struct.stv6110x_config, ptr %4, i32 0, i32 4
  store ptr @stv6110x_get_devctl, ptr %33, align 4
  br label %34

34:                                               ; preds = %24, %2
  %35 = phi i32 [ 0, %24 ], [ -12, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110x_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  store ptr null, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @stv6110x_get_devctl(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stv6110x_state, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

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
