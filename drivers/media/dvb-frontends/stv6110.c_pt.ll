; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv6110.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv6110.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv6110_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv6110_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv6110_attach:\09\09\09\09\09"
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
%struct.stv6110_config = type { i8, i32, i8, i8 }
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
%struct.stv6110_priv = type { i32, ptr, i32, i8, i8, [8 x i8] }

@__const.stv6110_attach.reg0 = private unnamed_addr constant [9 x i8] c"\00\07\11\DC\85\17\01\E6\1E", align 1
@stv6110_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"ST STV6110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 0, i32 0, i32 0 }, ptr @stv6110_release, ptr @stv6110_init, ptr @stv6110_sleep, ptr null, ptr null, ptr @stv6110_set_params, ptr null, ptr null, ptr @stv6110_get_frequency, ptr @stv6110_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv6110_set_frequency, ptr @stv6110_set_bandwidth }, align 4
@.str = private unnamed_addr constant [32 x i8] c"\016STV6110 attached on addr=%x!\0A\00", align 1
@__kstrtab_stv6110_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv6110_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv6110_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv6110_attach to i32), ptr @__kstrtab_stv6110_attach, ptr @__kstrtabns_stv6110_attach }, section "___ksymtab+stv6110_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [30 x i8] c"description=ST STV6110 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [25 x i8] c"author=Igor M. Liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\017%s\0A\00", align 1
@__func__.stv6110_write_regs = private unnamed_addr constant [19 x i8] c"stv6110_write_regs\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\017%s: i2c error\0A\00", align 1
@__func__.stv6110_read_regs = private unnamed_addr constant [18 x i8] c"stv6110_read_regs\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\017%s, freq=%d kHz, mclk=%d Hz\0A\00", align 1
@__func__.stv6110_set_frequency = private unnamed_addr constant [22 x i8] c"stv6110_set_frequency\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"\017%s, stat1=%x, lo_freq=%d kHz, vco_frec=%d kHz\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_stv6110_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv6110_attach(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [9 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(9) @__const.stv6110_attach.reg0, i32 9, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = load i8, ptr %1, align 4
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds [9 x i8], ptr %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.stv6110_config, ptr %1, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = shl i8 %14, 6
  %16 = or i8 %15, 17
  store i8 %16, ptr %12, align 1
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = call i32 %18(ptr noundef %0, i32 noundef 1) #7
  br label %22

22:                                               ; preds = %20, %3
  %23 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 1) #7
  %24 = load ptr, ptr %17, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call i32 %24(ptr noundef %0, i32 noundef 0) #7
  br label %28

28:                                               ; preds = %26, %22
  %29 = icmp eq i32 %23, 1
  br i1 %29, label %30, label %52

30:                                               ; preds = %28
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 24) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %1, align 4
  %36 = zext i8 %35 to i32
  store i32 %36, ptr %32, align 8
  %37 = getelementptr inbounds %struct.stv6110_priv, ptr %32, i32 0, i32 1
  store ptr %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.stv6110_config, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stv6110_priv, ptr %32, i32 0, i32 2
  store i32 %39, ptr %40, align 8
  %41 = load i8, ptr %13, align 1
  %42 = getelementptr inbounds %struct.stv6110_priv, ptr %32, i32 0, i32 3
  store i8 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.stv6110_config, ptr %1, i32 0, i32 2
  %44 = load i8, ptr %43, align 4
  %45 = getelementptr inbounds %struct.stv6110_priv, ptr %32, i32 0, i32 4
  store i8 %44, ptr %45, align 1
  %46 = getelementptr inbounds %struct.stv6110_priv, ptr %32, i32 0, i32 5
  %47 = getelementptr inbounds [9 x i8], ptr %4, i32 0, i32 1
  %48 = load i64, ptr %47, align 1
  store i64 %48, ptr %46, align 2
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %49, ptr noundef nonnull align 4 dereferenceable(220) @stv6110_tuner_ops, i32 220, i1 false)
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %32, ptr %50, align 4
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %36) #9
  br label %52

52:                                               ; preds = %34, %30, %28
  %53 = phi ptr [ %0, %34 ], [ null, %28 ], [ null, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #7
  ret ptr %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stv6110_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #7
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv6110_priv, ptr %3, i32 0, i32 5
  store i64 2226468266322956551, ptr %4, align 2
  %5 = getelementptr inbounds %struct.stv6110_priv, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = udiv i32 %6, 1000000
  %8 = trunc i32 %7 to i8
  %9 = shl i8 %8, 3
  %10 = xor i8 %9, -121
  store i8 %10, ptr %4, align 2
  %11 = getelementptr %struct.stv6110_priv, ptr %3, i32 0, i32 5, i32 1
  %12 = getelementptr inbounds %struct.stv6110_priv, ptr %3, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = shl i8 %13, 6
  %15 = or i8 %14, 17
  store i8 %15, ptr %11, align 1
  tail call fastcc void @stv6110_write_regs(ptr noundef %0, ptr noundef %4, i32 noundef 0, i32 noundef 8)
  tail call void @msleep(i32 noundef 1) #7
  %16 = tail call i32 @stv6110_set_bandwidth(ptr noundef %0, i32 noundef 72000000)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110_sleep(ptr noundef %0) #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1
  call fastcc void @stv6110_write_regs(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110_set_params(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 25, i32 35
  %9 = icmp eq i32 %6, 1
  %10 = select i1 %9, i32 20, i32 %8
  %11 = mul i32 %10, %4
  %12 = udiv i32 %11, 100
  %13 = add i32 %12, %4
  %14 = load i32, ptr %2, align 4
  %15 = tail call i32 @stv6110_set_frequency(ptr noundef %0, i32 noundef %14)
  %16 = tail call i32 @stv6110_set_bandwidth(ptr noundef %0, i32 noundef %13)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110_get_frequency(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #7, !annotation !8
  %9 = load i32, ptr %7, align 4
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %11, align 2
  store i16 1, ptr %8, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %14 = load i32, ptr %7, align 4
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 8, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 %20(ptr noundef %0, i32 noundef 1) #7
  br label %24

24:                                               ; preds = %22, %2
  %25 = getelementptr inbounds %struct.stv6110_priv, ptr %7, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %4, i32 noundef 2) #7
  %28 = icmp ne i32 %27, 2
  %29 = load i32, ptr @debug, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stv6110_read_regs) #9
  br label %34

34:                                               ; preds = %32, %24
  %35 = load ptr, ptr %19, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i32 %35(ptr noundef %0, i32 noundef 0) #7
  br label %39

39:                                               ; preds = %37, %34
  %40 = getelementptr %struct.stv6110_priv, ptr %7, i32 0, i32 5, i32 0
  %41 = load i64, ptr %5, align 8
  store i64 %41, ptr %40, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %42 = getelementptr %struct.stv6110_priv, ptr %7, i32 0, i32 5, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = and i32 %45, 3840
  %47 = getelementptr %struct.stv6110_priv, ptr %7, i32 0, i32 5, i32 2
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i32
  %50 = or i32 %46, %49
  %51 = lshr i32 %44, 6
  %52 = lshr i32 %44, 4
  %53 = and i32 %52, 1
  %54 = getelementptr inbounds %struct.stv6110_priv, ptr %7, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = udiv i32 %55, 1000
  %57 = mul i32 %50, %56
  %58 = add nuw nsw i32 %53, %51
  %59 = lshr i32 %57, %58
  %60 = lshr i32 %59, 2
  store i32 %60, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110_get_bandwidth(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #7, !annotation !8
  %9 = load i32, ptr %7, align 4
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %11, align 2
  store i16 1, ptr %8, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %14 = load i32, ptr %7, align 4
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 8, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 %20(ptr noundef %0, i32 noundef 1) #7
  br label %24

24:                                               ; preds = %22, %2
  %25 = getelementptr inbounds %struct.stv6110_priv, ptr %7, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %4, i32 noundef 2) #7
  %28 = icmp ne i32 %27, 2
  %29 = load i32, ptr @debug, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stv6110_read_regs) #9
  br label %34

34:                                               ; preds = %32, %24
  %35 = load ptr, ptr %19, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i32 %35(ptr noundef %0, i32 noundef 0) #7
  br label %39

39:                                               ; preds = %37, %34
  %40 = getelementptr %struct.stv6110_priv, ptr %7, i32 0, i32 5, i32 0
  %41 = load i64, ptr %5, align 8
  store i64 %41, ptr %40, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %42 = getelementptr %struct.stv6110_priv, ptr %7, i32 0, i32 5, i32 4
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, 31
  %45 = add nuw nsw i8 %44, 5
  %46 = zext i8 %45 to i32
  %47 = mul nuw nsw i32 %46, 2000000
  store i32 %47, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110_set_frequency(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stv6110_priv, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stv6110_set_frequency, i32 noundef %1, i32 noundef %10) #9
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.stv6110_priv, ptr %5, i32 0, i32 5
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 7
  %16 = getelementptr inbounds %struct.stv6110_priv, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = udiv i32 %17, 1000000
  %19 = trunc i32 %18 to i8
  %20 = shl i8 %19, 3
  %21 = or i8 %20, %15
  %22 = xor i8 %21, -128
  store i8 %22, ptr %13, align 2
  %23 = getelementptr %struct.stv6110_priv, ptr %5, i32 0, i32 5, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, -16
  %26 = getelementptr inbounds %struct.stv6110_priv, ptr %5, i32 0, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 15
  %29 = or i8 %28, %25
  store i8 %29, ptr %23, align 1
  %30 = icmp ult i32 %1, 1023001
  br i1 %30, label %36, label %31

31:                                               ; preds = %12
  %32 = icmp ult i32 %1, 1300001
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = icmp ult i32 %1, 2046001
  %35 = select i1 %34, i8 0, i8 32
  br label %36

36:                                               ; preds = %33, %31, %12
  %37 = phi i32 [ 1, %12 ], [ 1, %31 ], [ 0, %33 ]
  %38 = phi i8 [ 0, %12 ], [ 32, %31 ], [ %35, %33 ]
  %39 = getelementptr %struct.stv6110_priv, ptr %5, i32 0, i32 5, i32 3
  %40 = trunc i32 %37 to i8
  %41 = shl nuw nsw i8 %40, 4
  %42 = or i8 %41, %38
  %43 = shl nuw nsw i32 2, %37
  %44 = mul nuw nsw i32 %43, 10
  %45 = udiv i32 %17, 100000
  %46 = lshr i32 %45, 1
  %47 = lshr i32 %45, 2
  %48 = icmp ugt i32 %47, %44
  %49 = sub nsw i32 %47, %44
  %50 = sub nsw i32 %44, %47
  %51 = select i1 %48, i32 %49, i32 %50
  %52 = icmp ugt i32 %46, %44
  %53 = sub nsw i32 %46, %44
  %54 = sub nsw i32 %44, %46
  %55 = select i1 %52, i32 %53, i32 %54
  %56 = icmp slt i32 %51, %55
  %57 = zext i1 %56 to i32
  %58 = select i1 %56, i32 2, i32 1
  %59 = lshr i32 %45, %58
  %60 = lshr i32 %45, 3
  %61 = icmp ugt i32 %60, %44
  %62 = sub nsw i32 %60, %44
  %63 = sub nsw i32 %44, %60
  %64 = select i1 %61, i32 %62, i32 %63
  %65 = icmp ugt i32 %59, %44
  %66 = sub nsw i32 %59, %44
  %67 = sub nsw i32 %44, %59
  %68 = select i1 %65, i32 %66, i32 %67
  %69 = icmp slt i32 %64, %68
  %70 = select i1 %69, i32 2, i32 %57
  %71 = add nuw nsw i32 %70, 1
  %72 = lshr i32 %45, %71
  %73 = lshr i32 %45, 4
  %74 = icmp ugt i32 %73, %44
  %75 = sub nsw i32 %73, %44
  %76 = sub nsw i32 %44, %73
  %77 = select i1 %74, i32 %75, i32 %76
  %78 = icmp ugt i32 %72, %44
  %79 = sub nsw i32 %72, %44
  %80 = sub nsw i32 %44, %72
  %81 = select i1 %78, i32 %79, i32 %80
  %82 = icmp slt i32 %77, %81
  %83 = select i1 %82, i32 3, i32 %70
  %84 = add nuw nsw i32 %83, 1
  %85 = add nuw nsw i32 %37, 1
  %86 = add nuw nsw i32 %85, %84
  %87 = lshr i32 %17, %86
  %88 = mul i32 %1, 1000
  %89 = lshr i32 %87, 1
  %90 = add i32 %89, %88
  %91 = udiv i32 %90, %87
  %92 = trunc i32 %83 to i8
  %93 = shl nuw i8 %92, 6
  %94 = or i8 %93, %42
  %95 = lshr i32 %91, 8
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 15
  %98 = or i8 %97, %94
  store i8 %98, ptr %39, align 1
  %99 = trunc i32 %91 to i8
  %100 = getelementptr %struct.stv6110_priv, ptr %5, i32 0, i32 5, i32 2
  store i8 %99, ptr %100, align 2
  %101 = getelementptr %struct.stv6110_priv, ptr %5, i32 0, i32 5, i32 5
  %102 = load i8, ptr %101, align 1
  %103 = or i8 %102, 4
  store i8 %103, ptr %101, align 1
  tail call fastcc void @stv6110_write_regs(ptr noundef %0, ptr noundef %13, i32 noundef 0, i32 noundef 8)
  br label %104

104:                                              ; preds = %104, %36
  %105 = phi i32 [ 0, %36 ], [ %108, %104 ]
  %106 = tail call fastcc i32 @stv6110_read_reg(ptr noundef %0)
  %107 = and i32 %106, 4
  tail call void @msleep(i32 noundef 1) #7
  %108 = add nuw nsw i32 %105, 1
  %109 = icmp ult i32 %105, 9
  %110 = icmp ne i32 %107, 0
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %104, label %112

112:                                              ; preds = %104
  %113 = tail call fastcc i32 @stv6110_read_reg(ptr noundef %0)
  %114 = call i32 @stv6110_get_frequency(ptr noundef %0, ptr noundef nonnull %3)
  %115 = load i32, ptr @debug, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %16, align 4
  %119 = udiv i32 %118, 1000
  %120 = lshr i32 %119, %84
  %121 = mul i32 %120, %91
  %122 = and i32 %113, 255
  %123 = load i32, ptr %3, align 4
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.stv6110_set_frequency, i32 noundef %122, i32 noundef %123, i32 noundef %121) #9
  br label %125

125:                                              ; preds = %117, %112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv6110_set_bandwidth(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt i32 %1, 72000001
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = icmp ult i32 %1, 10000000
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = udiv i32 %1, 2000000
  %10 = trunc i32 %9 to i8
  %11 = add nuw nsw i8 %10, 27
  %12 = and i8 %11, 31
  br label %13

13:                                               ; preds = %8, %6, %2
  %14 = phi i8 [ %12, %8 ], [ 31, %2 ], [ 0, %6 ]
  %15 = getelementptr %struct.stv6110_priv, ptr %4, i32 0, i32 5, i32 4
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, -96
  %18 = or i8 %17, %14
  store i8 %18, ptr %15, align 2
  tail call fastcc void @stv6110_write_regs(ptr noundef %0, ptr noundef %15, i32 noundef 4, i32 noundef 1)
  %19 = getelementptr %struct.stv6110_priv, ptr %4, i32 0, i32 5, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = or i8 %20, 2
  store i8 %21, ptr %19, align 1
  tail call fastcc void @stv6110_write_regs(ptr noundef %0, ptr noundef %19, i32 noundef 5, i32 noundef 1)
  br label %22

22:                                               ; preds = %22, %13
  %23 = phi i32 [ 0, %13 ], [ %27, %22 ]
  %24 = tail call fastcc i32 @stv6110_read_reg(ptr noundef %0)
  %25 = and i32 %24, 2
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  %27 = add nuw nsw i32 %23, 1
  %28 = icmp ult i32 %23, 9
  %29 = icmp ne i32 %25, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %22, label %31

31:                                               ; preds = %22
  %32 = load i8, ptr %15, align 2
  %33 = or i8 %32, 64
  store i8 %33, ptr %15, align 2
  tail call fastcc void @stv6110_write_regs(ptr noundef %0, ptr noundef %15, i32 noundef 4, i32 noundef 1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv6110_write_regs(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [64 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %9 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = load i32, ptr %8, align 4
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %14 = trunc i32 %3 to i16
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv6110_write_regs) #9
  br label %21

21:                                               ; preds = %19, %4
  %22 = add i32 %3, %2
  %23 = icmp sgt i32 %22, 8
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds [64 x i8], ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr align 1 %1, i32 %3, i1 false)
  %26 = trunc i32 %2 to i8
  store i8 %26, ptr %5, align 1
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = call i32 %28(ptr noundef %0, i32 noundef 1) #7
  br label %32

32:                                               ; preds = %30, %24
  %33 = getelementptr inbounds %struct.stv6110_priv, ptr %8, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %6, i32 noundef 1) #7
  %36 = icmp ne i32 %35, 1
  %37 = load i32, ptr @debug, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stv6110_write_regs) #9
  br label %42

42:                                               ; preds = %40, %32
  %43 = load ptr, ptr %27, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 %43(ptr noundef %0, i32 noundef 0) #7
  br label %47

47:                                               ; preds = %45, %42, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv6110_read_reg(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 5, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #7, !annotation !8
  %8 = load i32, ptr %6, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  store i16 1, ptr %7, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  %13 = load i32, ptr %6, align 4
  %14 = trunc i32 %13 to i16
  store i16 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 %19(ptr noundef %0, i32 noundef 1) #7
  br label %23

23:                                               ; preds = %21, %1
  %24 = getelementptr inbounds %struct.stv6110_priv, ptr %6, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %3, i32 noundef 2) #7
  %27 = icmp ne i32 %26, 2
  %28 = load i32, ptr @debug, align 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stv6110_read_regs) #9
  br label %33

33:                                               ; preds = %31, %23
  %34 = load ptr, ptr %18, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 %34(ptr noundef %0, i32 noundef 0) #7
  br label %38

38:                                               ; preds = %36, %33
  %39 = getelementptr %struct.stv6110_priv, ptr %6, i32 0, i32 5, i32 5
  %40 = load i8, ptr %4, align 1
  store i8 %40, ptr %39, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %41 = load i8, ptr %4, align 1
  %42 = zext i8 %41 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %42
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
