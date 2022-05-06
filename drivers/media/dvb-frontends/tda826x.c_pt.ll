; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda826x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda826x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda826x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda826x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda826x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.tda826x_priv = type { i32, ptr, i8, i32 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\017tda826x: %s:\0A\00", align 1
@__func__.tda826x_attach = private unnamed_addr constant [15 x i8] c"tda826x_attach\00", align 1
@tda826x_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Philips TDA826X\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2119967296, i32 0, i32 0, i32 0, i32 0 }, ptr @tda826x_release, ptr null, ptr @tda826x_sleep, ptr null, ptr null, ptr @tda826x_set_params, ptr null, ptr null, ptr @tda826x_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_tda826x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda826x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda826x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda826x_attach to i32), ptr @__kstrtab_tda826x_attach, ptr @__kstrtabns_tda826x_attach }, section "___ksymtab+tda826x_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [31 x i8] c"description=DVB TDA826x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [25 x i8] c"author=Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.tda826x_sleep = private unnamed_addr constant [14 x i8] c"tda826x_sleep\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\017tda826x: %s: i2c error\0A\00", align 1
@__func__.tda826x_set_params = private unnamed_addr constant [19 x i8] c"tda826x_set_params\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_tda826x_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda826x_attach(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i16 0, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = trunc i32 %1 to i16
  store i16 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %14, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda826x_attach) #10
  br label %19

19:                                               ; preds = %17, %4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 %21(ptr noundef %0, i32 noundef 1) #9
  br label %25

25:                                               ; preds = %23, %19
  %26 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 2) #9
  %27 = load ptr, ptr %20, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 %27(ptr noundef %0, i32 noundef 0) #9
  br label %31

31:                                               ; preds = %29, %25
  %32 = icmp ne i32 %26, 2
  %33 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp sgt i8 %34, -1
  %36 = select i1 %32, i1 true, i1 %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 16) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  store i32 %1, ptr %39, align 8
  %42 = getelementptr inbounds %struct.tda826x_priv, ptr %39, i32 0, i32 1
  store ptr %2, ptr %42, align 4
  %43 = trunc i32 %3 to i8
  %44 = getelementptr inbounds %struct.tda826x_priv, ptr %39, i32 0, i32 2
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %43, 1
  %47 = and i8 %45, -2
  %48 = or i8 %47, %46
  store i8 %48, ptr %44, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %49, ptr noundef nonnull align 4 dereferenceable(220) @tda826x_tuner_ops, i32 220, i1 false)
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %39, ptr %50, align 4
  br label %51

51:                                               ; preds = %41, %37, %31
  %52 = phi ptr [ %0, %41 ], [ null, %31 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  ret ptr %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda826x_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda826x_sleep(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i16 -29440, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = load i32, ptr %5, align 4
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda826x_sleep) #10
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.tda826x_priv, ptr %5, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 -83, ptr %22, align 1
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 %25(ptr noundef %0, i32 noundef 1) #9
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.tda826x_priv, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %3, i32 noundef 1) #9
  %33 = icmp ne i32 %32, 1
  %34 = load i32, ptr @debug, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda826x_sleep) #10
  br label %39

39:                                               ; preds = %37, %29
  %40 = load ptr, ptr %24, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 %40(ptr noundef %0, i32 noundef 0) #9
  br label %44

44:                                               ; preds = %42, %39
  %45 = icmp eq i32 %32, 1
  %46 = select i1 %45, i32 0, i32 %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda826x_set_params(ptr noundef %0) #0 {
  %2 = alloca [11 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %2, i8 0, i32 11, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = load i32, ptr %6, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda826x_set_params) #10
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, ptr %4, align 4
  %19 = add i32 %18, 999
  %20 = udiv i32 %19, 1000
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = udiv i32 %22, 1000
  %24 = mul nuw i32 %23, 878
  %25 = add nuw i32 %24, 6500000
  %26 = udiv i32 %25, 1000000
  %27 = call i32 @llvm.umin.i32(i32 %26, i32 35)
  store i8 0, ptr %2, align 1
  %28 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 1
  %29 = getelementptr inbounds %struct.tda826x_priv, ptr %6, i32 0, i32 2
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i8 41, i8 9
  store i8 %33, ptr %28, align 1
  %34 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 2
  store i8 43, ptr %34, align 1
  %35 = lshr i32 %20, 7
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 3
  store i8 %36, ptr %37, align 1
  %38 = trunc i32 %20 to i8
  %39 = shl i8 %38, 1
  %40 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 4
  store i8 %39, ptr %40, align 1
  %41 = trunc i32 %27 to i8
  %42 = shl i8 %41, 3
  %43 = add i8 %42, -25
  %44 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 5
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 6
  store i8 -2, ptr %45, align 1
  %46 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 7
  store i8 -125, ptr %46, align 1
  %47 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 8
  store i8 -128, ptr %47, align 1
  %48 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 9
  store i8 26, ptr %48, align 1
  %49 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 10
  store i8 -44, ptr %49, align 1
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %17
  %54 = call i32 %51(ptr noundef %0, i32 noundef 1) #9
  br label %55

55:                                               ; preds = %53, %17
  %56 = getelementptr inbounds %struct.tda826x_priv, ptr %6, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %3, i32 noundef 1) #9
  %59 = icmp ne i32 %58, 1
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ne i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda826x_set_params) #10
  br label %65

65:                                               ; preds = %63, %55
  %66 = load ptr, ptr %50, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 %66(ptr noundef %0, i32 noundef 0) #9
  br label %70

70:                                               ; preds = %68, %65
  %71 = mul nuw i32 %20, 1000
  %72 = getelementptr inbounds %struct.tda826x_priv, ptr %6, i32 0, i32 3
  store i32 %71, ptr %72, align 4
  %73 = icmp eq i32 %58, 1
  %74 = select i1 %73, i32 0, i32 %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #9
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda826x_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda826x_priv, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
