; ModuleID = '/llk/IR/drivers/media/dvb-frontends/lnbp22.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lnbp22.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lnbp22_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lnbp22_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lnbp22_attach:\09\09\09\09\09"
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.lnbp22 = type { [4 x i8], ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [48 x i8] c"parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [21 x i8] c"%s LNBP22 not found\0A\00", align 1
@__func__.lnbp22_attach = private unnamed_addr constant [14 x i8] c"lnbp22_attach\00", align 1
@__kstrtab_lnbp22_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lnbp22_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lnbp22_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lnbp22_attach to i32), ptr @__kstrtab_lnbp22_attach, ptr @__kstrtabns_lnbp22_attach }, section "___ksymtab+lnbp22_attach", align 4
@__UNIQUE_ID_description251 = internal constant [56 x i8] c"description=Driver for lnb supply and control ic lnbp22\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [22 x i8] c"author=Dominik Kuhlen\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: %d (18V=%d 13V=%d)\0A\00", align 1
@__func__.lnbp22_set_voltage = private unnamed_addr constant [19 x i8] c"lnbp22_set_voltage\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s: 0x%02x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__func__.lnbp22_release = private unnamed_addr constant [15 x i8] c"lnbp22_release\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@__func__.lnbp22_enable_high_lnb_voltage = private unnamed_addr constant [31 x i8] c"lnbp22_enable_high_lnb_voltage\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_lnbp22_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lnbp22_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 8) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  store i8 0, ptr %5, align 8
  %8 = getelementptr [4 x i8], ptr %5, i32 0, i32 1
  store i8 40, ptr %8, align 1
  %9 = getelementptr [4 x i8], ptr %5, i32 0, i32 2
  store i8 72, ptr %9, align 2
  %10 = getelementptr [4 x i8], ptr %5, i32 0, i32 3
  store i8 96, ptr %10, align 1
  %11 = getelementptr inbounds %struct.lnbp22, ptr %5, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  store ptr %5, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %13 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %13, align 4, !annotation !8
  store i16 8, ptr %3, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %15, align 4
  %16 = load i32, ptr @debug, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  store i8 96, ptr %10, align 1
  br label %25

19:                                               ; preds = %7
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lnbp22_set_voltage, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  %21 = load i32, ptr @debug, align 4
  store i8 96, ptr %10, align 1
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lnbp22_set_voltage, i32 noundef 96) #7
  br label %25

25:                                               ; preds = %23, %19, %18
  %26 = load ptr, ptr %11, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %3, i32 noundef 1) #6
  %28 = icmp eq i32 %27, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr @debug, align 4
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lnbp22_attach) #7
  br label %34

34:                                               ; preds = %32, %29
  call void @kfree(ptr noundef nonnull %5) #6
  store ptr null, ptr %12, align 4
  br label %39

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 4
  store ptr @lnbp22_release, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 25
  store ptr @lnbp22_set_voltage, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 26
  store ptr @lnbp22_enable_high_lnb_voltage, ptr %38, align 4
  br label %39

39:                                               ; preds = %35, %34, %2
  %40 = phi ptr [ null, %34 ], [ %0, %35 ], [ null, %2 ]
  ret ptr %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lnbp22_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  store i16 8, ptr %3, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %9, align 4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lnbp22_set_voltage, i32 noundef %1, i32 noundef 1, i32 noundef 0) #7
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr [4 x i8], ptr %5, i32 0, i32 3
  store i8 96, ptr %15, align 1
  switch i32 %1, label %32 [
    i32 2, label %20
    i32 0, label %17
    i32 1, label %16
  ]

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i8 [ 114, %16 ], [ 112, %14 ]
  %19 = phi i32 [ 114, %16 ], [ 112, %14 ]
  store i8 %18, ptr %15, align 1
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ 96, %14 ], [ %19, %17 ]
  %22 = load i32, ptr @debug, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lnbp22_set_voltage, i32 noundef %21) #7
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.lnbp22, ptr %5, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 1) #6
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i32 0, i32 -5
  br label %32

32:                                               ; preds = %26, %14
  %33 = phi i32 [ %31, %26 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lnbp22_release(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = load i32, ptr @debug, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.lnbp22_release) #7
  %7 = load i32, ptr @debug, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  %12 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 4, ptr %12, align 4, !annotation !8
  store i16 8, ptr %2, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %11, ptr %14, align 4
  %15 = icmp sgt i32 %9, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lnbp22_set_voltage, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  br label %18

18:                                               ; preds = %16, %8
  %19 = getelementptr [4 x i8], ptr %11, i32 0, i32 3
  store i8 96, ptr %19, align 1
  %20 = load i32, ptr @debug, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lnbp22_set_voltage, i32 noundef 96) #7
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.lnbp22, ptr %11, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  %28 = load ptr, ptr %10, align 4
  call void @kfree(ptr noundef %28) #6
  store ptr null, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lnbp22_enable_high_lnb_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  store i16 8, ptr %3, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %9, align 4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lnbp22_enable_high_lnb_voltage, i32 noundef %1) #7
  br label %14

14:                                               ; preds = %12, %2
  %15 = icmp ne i32 %1, 0
  %16 = getelementptr [4 x i8], ptr %5, i32 0, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, -2
  %19 = zext i1 %15 to i8
  %20 = or i8 %18, %19
  store i8 %20, ptr %16, align 1
  %21 = getelementptr inbounds %struct.lnbp22, ptr %5, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %3, i32 noundef 1) #6
  %24 = icmp eq i32 %23, 1
  %25 = select i1 %24, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
