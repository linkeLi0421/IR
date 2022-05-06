; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stb6000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stb6000.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stb6000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stb6000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stb6000_attach:\09\09\09\09\09"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.stb6000_priv = type { i32, ptr, i32 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\017stb6000: %s:\0A\00", align 1
@__func__.stb6000_attach = private unnamed_addr constant [15 x i8] c"stb6000_attach\00", align 1
@stb6000_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"ST STB6000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @stb6000_release, ptr null, ptr @stb6000_sleep, ptr null, ptr null, ptr @stb6000_set_params, ptr null, ptr null, ptr @stb6000_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_stb6000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stb6000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stb6000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stb6000_attach to i32), ptr @__kstrtab_stb6000_attach, ptr @__kstrtabns_stb6000_attach }, section "___ksymtab+stb6000_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [31 x i8] c"description=DVB STB6000 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [43 x i8] c"author=Igor M. Liplianin <liplianin@me.by>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.stb6000_sleep = private unnamed_addr constant [14 x i8] c"stb6000_sleep\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\017stb6000: %s: i2c error\0A\00", align 1
@__func__.stb6000_set_params = private unnamed_addr constant [19 x i8] c"stb6000_set_params\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_stb6000_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stb6000_attach(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
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
  store ptr %4, ptr %10, align 4
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

17:                                               ; preds = %3
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stb6000_attach) #10
  br label %19

19:                                               ; preds = %17, %3
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
  %32 = icmp eq i32 %26, 2
  br i1 %32, label %33, label %41

33:                                               ; preds = %31
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 12) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  store i32 %1, ptr %35, align 8
  %38 = getelementptr inbounds %struct.stb6000_priv, ptr %35, i32 0, i32 1
  store ptr %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %39, ptr noundef nonnull align 4 dereferenceable(220) @stb6000_tuner_ops, i32 220, i1 false)
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %35, ptr %40, align 4
  br label %41

41:                                               ; preds = %37, %33, %31
  %42 = phi ptr [ %0, %37 ], [ null, %31 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret ptr %42
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
define internal void @stb6000_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb6000_sleep(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i16 10, ptr %2, align 2
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
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stb6000_sleep) #10
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = call i32 %18(ptr noundef %0, i32 noundef 1) #9
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.stb6000_priv, ptr %5, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 1) #9
  %26 = icmp ne i32 %25, 1
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stb6000_sleep) #10
  br label %32

32:                                               ; preds = %30, %22
  %33 = load ptr, ptr %17, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 %33(ptr noundef %0, i32 noundef 0) #9
  br label %37

37:                                               ; preds = %35, %32
  %38 = icmp eq i32 %25, 1
  %39 = select i1 %38, i32 0, i32 %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb6000_set_params(ptr noundef %0) #0 {
  %2 = alloca [12 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = load i32, ptr %6, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 12, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stb6000_set_params) #10
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, ptr %4, align 4
  %19 = udiv i32 %18, 1000
  %20 = add i32 %18, -950000
  %21 = icmp ult i32 %20, 1201000
  br i1 %21, label %22, label %118

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = udiv i32 %24, 1000000
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 31)
  store i8 1, ptr %2, align 1
  %27 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 1
  %28 = icmp ult i32 %18, 1950000
  %29 = select i1 %28, i8 -86, i8 -84
  %30 = icmp ult i32 %18, 1800000
  %31 = select i1 %30, i8 -88, i8 %29
  %32 = icmp ult i32 %18, 1650000
  %33 = select i1 %32, i8 -90, i8 %31
  %34 = icmp ult i32 %18, 1530000
  %35 = select i1 %34, i8 -91, i8 %33
  %36 = icmp ult i32 %18, 1470000
  %37 = select i1 %36, i8 -92, i8 %35
  %38 = icmp ult i32 %18, 1370000
  %39 = select i1 %38, i8 -94, i8 %37
  %40 = icmp ult i32 %18, 1300000
  %41 = select i1 %40, i8 -95, i8 %39
  %42 = icmp ult i32 %18, 1200000
  %43 = select i1 %42, i8 -96, i8 %41
  %44 = icmp ult i32 %18, 1075000
  %45 = select i1 %44, i8 -68, i8 %43
  %46 = icmp ult i32 %18, 1000000
  %47 = select i1 %46, i8 -70, i8 %45
  store i8 %47, ptr %27, align 1
  %48 = select i1 %44, i32 8000, i32 16000
  %49 = udiv i32 %18, %48
  %50 = select i1 %44, i32 2, i32 1
  %51 = lshr i32 %49, 1
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 2
  store i8 %52, ptr %53, align 1
  %54 = shl nuw nsw i32 %49, 7
  %55 = mul nuw nsw i32 %50, %19
  %56 = mul nuw nsw i32 %49, 240
  %57 = add nuw nsw i32 %56, %55
  %58 = or i32 %57, %54
  %59 = trunc i32 %58 to i8
  %60 = or i8 %59, 96
  %61 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 3
  store i8 %60, ptr %61, align 1
  %62 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 4
  store i8 4, ptr %62, align 1
  %63 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 5
  store i8 14, ptr %63, align 1
  %64 = trunc i32 %26 to i8
  %65 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 6
  store i8 %64, ptr %65, align 1
  %66 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 7
  store i8 -40, ptr %66, align 1
  %67 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 8
  store i8 -48, ptr %67, align 1
  %68 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 9
  store i8 80, ptr %68, align 1
  %69 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 10
  store i8 -21, ptr %69, align 1
  %70 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 11
  store i8 79, ptr %70, align 1
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %22
  %75 = call i32 %72(ptr noundef %0, i32 noundef 1) #9
  br label %76

76:                                               ; preds = %74, %22
  %77 = getelementptr inbounds %struct.stb6000_priv, ptr %6, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %3, i32 noundef 1) #9
  %80 = icmp ne i32 %79, 1
  %81 = load i32, ptr @debug, align 4
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stb6000_set_params) #10
  br label %86

86:                                               ; preds = %84, %76
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 2147480) #9
  %88 = load ptr, ptr %71, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = call i32 %88(ptr noundef %0, i32 noundef 0) #9
  %92 = load ptr, ptr %71, align 4
  br label %93

93:                                               ; preds = %90, %86
  %94 = phi ptr [ %92, %90 ], [ null, %86 ]
  store i8 7, ptr %2, align 1
  store i8 -33, ptr %27, align 1
  store i8 -48, ptr %53, align 1
  store i8 80, ptr %61, align 1
  store i8 -5, ptr %62, align 1
  store i16 5, ptr %11, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i32 %94(ptr noundef %0, i32 noundef 1) #9
  br label %98

98:                                               ; preds = %96, %93
  %99 = load ptr, ptr %77, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %3, i32 noundef 1) #9
  %101 = icmp ne i32 %100, 1
  %102 = load i32, ptr @debug, align 4
  %103 = icmp ne i32 %102, 0
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stb6000_set_params) #10
  br label %107

107:                                              ; preds = %105, %98
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %108(i32 noundef 2147480) #9
  %109 = load ptr, ptr %71, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = call i32 %109(ptr noundef %0, i32 noundef 0) #9
  br label %113

113:                                              ; preds = %111, %107
  %114 = mul nuw i32 %19, 1000
  %115 = getelementptr inbounds %struct.stb6000_priv, ptr %6, i32 0, i32 2
  store i32 %114, ptr %115, align 4
  %116 = icmp eq i32 %100, 1
  %117 = select i1 %116, i32 0, i32 %100
  br label %118

118:                                              ; preds = %113, %17
  %119 = phi i32 [ %117, %113 ], [ -1, %17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret i32 %119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stb6000_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stb6000_priv, ptr %4, i32 0, i32 2
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
