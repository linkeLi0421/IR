; ModuleID = '/llk/IR/drivers/media/dvb-frontends/zl10036.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/zl10036.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zl10036_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22zl10036_attach\22\09\09\09\09\09"
module asm "__kstrtabns_zl10036_attach:\09\09\09\09\09"
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
%struct.zl10036_state = type { ptr, ptr, i32, i8, i8 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.zl10036_config = type { i8, i32 }

@.str = private unnamed_addr constant [26 x i8] c"\013%s: no config specified\00", align 1
@__func__.zl10036_attach = private unnamed_addr constant [15 x i8] c"zl10036_attach\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\013%s: No zl10036 found\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\013%s: tuner initialization failed\0A\00", align 1
@zl10036_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Zarlink ZL10036\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2119967296, i32 0, i32 0, i32 0, i32 0 }, ptr @zl10036_release, ptr @zl10036_init, ptr @zl10036_sleep, ptr null, ptr null, ptr @zl10036_set_params, ptr null, ptr null, ptr @zl10036_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"\016%s: tuner initialization (%s addr=0x%02x) ok\0A\00", align 1
@__kstrtab_zl10036_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_zl10036_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_zl10036_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zl10036_attach to i32), ptr @__kstrtab_zl10036_attach, ptr @__kstrtabns_zl10036_attach }, section "___ksymtab+zl10036_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@zl10036_debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @zl10036_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [31 x i8] c"description=DVB ZL10036 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [22 x i8] c"author=Tino Reichardt\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [27 x i8] c"author=Matthias Schwarzott\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\013%s: i2c read failed at addr=%02x\0A\00", align 1
@__func__.zl10036_read_status_reg = private unnamed_addr constant [24 x i8] c"zl10036_read_status_reg\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\017zl10036: R(status): %02x  [FL=%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"\017zl10036: %s: Power-On-Reset bit enabled - need to initialize the tuner\0A\00", align 1
@__const.zl10036_init_regs.zl10036_init_tab = private unnamed_addr constant [7 x [2 x i8]] [[2 x i8] c"\04\00", [2 x i8] c"\8B\0A", [2 x i8] c"\C0 ", [2 x i8] c"\D3@", [2 x i8] c"\E3[", [2 x i8] c"\F0(", [2 x i8] c"\E3\F9"], align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\017zl10036: %s\0A\00", align 1
@__func__.zl10036_init_regs = private unnamed_addr constant [18 x i8] c"zl10036_init_regs\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"\017zl10036: W(%d):\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\01c %02x\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\013%s: i2c error, ret=%d\0A\00", align 1
@__func__.zl10036_write = private unnamed_addr constant [14 x i8] c"zl10036_write\00", align 1
@__func__.zl10036_sleep = private unnamed_addr constant [14 x i8] c"zl10036_sleep\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\017zl10036: %s: c=%u rfg=%u ba=%u bg=%u\0A\00", align 1
@__func__.zl10036_set_gain_params = private unnamed_addr constant [24 x i8] c"zl10036_set_gain_params\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"\017zl10036: %s: ftodo=%u fpriv=%u ferr=%d div=%u\0A\00", align 1
@__func__.zl10036_set_frequency = private unnamed_addr constant [22 x i8] c"zl10036_set_frequency\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\017zl10036: %s: BW=%d br=%u bf=%u\0A\00", align 1
@__func__.zl10036_set_bandwidth = private unnamed_addr constant [22 x i8] c"zl10036_set_bandwidth\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license254, ptr @__ksymtab_zl10036_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @zl10036_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10036_attach) #8
  br label %38

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.zl10036_state, ptr %9, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  store ptr %2, ptr %9, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef 1) #10
  br label %18

18:                                               ; preds = %16, %11
  %19 = tail call fastcc i32 @zl10036_read_status_reg(ptr noundef nonnull %9)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @zl10036_init_regs(ptr noundef nonnull %9)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %13, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 %25(ptr noundef %0, i32 noundef 0) #10
  br label %29

29:                                               ; preds = %27, %24
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %9, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %31, ptr noundef nonnull align 4 dereferenceable(220) @zl10036_tuner_ops, i32 220, i1 false)
  %32 = load i8, ptr %1, align 4
  %33 = zext i8 %32 to i32
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.zl10036_attach, ptr noundef %31, i32 noundef %33) #8
  br label %38

35:                                               ; preds = %21, %18
  %36 = phi ptr [ @.str.1, %18 ], [ @.str.2, %21 ]
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %36, ptr noundef nonnull @__func__.zl10036_attach) #8
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %38

38:                                               ; preds = %35, %29, %7, %5
  %39 = phi ptr [ null, %35 ], [ %0, %29 ], [ null, %5 ], [ null, %7 ]
  ret ptr %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @zl10036_read_status_reg(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.zl10036_state, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %3, i32 noundef 1) #10
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %5, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.zl10036_read_status_reg, i32 noundef %18) #8
  br label %43

20:                                               ; preds = %1
  %21 = load i32, ptr @zl10036_debug, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i8, ptr %2, align 1
  %26 = zext i8 %25 to i32
  %27 = lshr i32 %26, 6
  %28 = and i32 %27, 1
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %28) #8
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i8, ptr %2, align 1
  %32 = icmp sgt i8 %31, -1
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @zl10036_debug, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.zl10036_read_status_reg) #8
  %39 = load i8, ptr %2, align 1
  br label %40

40:                                               ; preds = %37, %33, %30
  %41 = phi i8 [ %31, %33 ], [ %39, %37 ], [ %31, %30 ]
  %42 = zext i8 %41 to i32
  br label %43

43:                                               ; preds = %40, %15
  %44 = phi i32 [ -5, %15 ], [ %42, %40 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @zl10036_init_regs(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [7 x [2 x i8]], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) @__const.zl10036_init_regs.zl10036_init_tab, i32 14, i1 false)
  %3 = getelementptr inbounds %struct.zl10036_state, ptr %0, i32 0, i32 3
  store i8 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.zl10036_state, ptr %0, i32 0, i32 4
  store i8 -1, ptr %4, align 1
  %5 = getelementptr inbounds %struct.zl10036_state, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zl10036_config, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds [7 x [2 x i8]], ptr %2, i32 0, i32 1
  store i8 -117, ptr %11, align 1
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, ptr @zl10036_debug, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.zl10036_init_regs) #8
  br label %18

18:                                               ; preds = %16, %12
  %19 = call fastcc i32 @zl10036_write(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 2)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds [7 x [2 x i8]], ptr %2, i32 0, i32 1
  %23 = call fastcc i32 @zl10036_write(ptr noundef %0, ptr noundef %22, i8 noundef zeroext 2)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds [7 x [2 x i8]], ptr %2, i32 0, i32 2
  %27 = call fastcc i32 @zl10036_write(ptr noundef %0, ptr noundef %26, i8 noundef zeroext 2)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds [7 x [2 x i8]], ptr %2, i32 0, i32 3
  %31 = call fastcc i32 @zl10036_write(ptr noundef %0, ptr noundef %30, i8 noundef zeroext 2)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [7 x [2 x i8]], ptr %2, i32 0, i32 4
  %35 = call fastcc i32 @zl10036_write(ptr noundef %0, ptr noundef %34, i8 noundef zeroext 2)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds [7 x [2 x i8]], ptr %2, i32 0, i32 5
  %39 = call fastcc i32 @zl10036_write(ptr noundef %0, ptr noundef %38, i8 noundef zeroext 2)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds [7 x [2 x i8]], ptr %2, i32 0, i32 6
  %43 = call fastcc i32 @zl10036_write(ptr noundef %0, ptr noundef %42, i8 noundef zeroext 2)
  %44 = call i32 @llvm.smin.i32(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %21, %18
  %46 = phi i32 [ %19, %18 ], [ %23, %21 ], [ %27, %25 ], [ %31, %29 ], [ %35, %33 ], [ %39, %37 ], [ %44, %41 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #10
  ret i32 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @zl10036_write(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [1 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.zl10036_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %12 = zext i8 %2 to i16
  store i16 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %1, ptr %13, align 4
  %14 = load i32, ptr @zl10036_debug, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %3
  %18 = load i8, ptr %1, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, 192
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = and i32 %19, 240
  %27 = add nsw i32 %26, -192
  %28 = icmp ult i32 %27, 64
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = lshr exact i32 %27, 3
  %31 = add nuw nsw i32 %30, 6
  br label %32

32:                                               ; preds = %29, %25, %22, %17
  %33 = phi i32 [ 2, %17 ], [ 4, %22 ], [ %31, %29 ], [ 0, %25 ]
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %33) #8
  %35 = zext i8 %2 to i32
  %36 = icmp eq i8 %2, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %37, %32
  %38 = phi i32 [ %43, %37 ], [ 0, %32 ]
  %39 = getelementptr i8, ptr %1, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %41) #8
  %43 = add nuw nsw i32 %38, 1
  %44 = icmp eq i32 %43, %35
  br i1 %44, label %45, label %37

45:                                               ; preds = %37, %32
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %47

47:                                               ; preds = %45, %3
  %48 = load ptr, ptr %0, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %4, i32 noundef 1) #10
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.zl10036_write, i32 noundef %49) #8
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ -5, %51 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zl10036_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10036_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 1) #10
  br label %9

9:                                                ; preds = %7, %1
  %10 = tail call fastcc i32 @zl10036_read_status_reg(ptr noundef %3)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @zl10036_init_regs(ptr noundef %3)
  %14 = load ptr, ptr %4, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef 0) #10
  br label %18

18:                                               ; preds = %16, %12, %9
  %19 = phi i32 [ %10, %9 ], [ %13, %16 ], [ %13, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10036_sleep(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i16 -32528, ptr %2, align 2
  %5 = load i32, ptr @zl10036_debug, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.zl10036_sleep) #8
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %0, i32 noundef 1) #10
  br label %16

16:                                               ; preds = %14, %10
  %17 = call fastcc i32 @zl10036_write(ptr noundef %4, ptr noundef nonnull %2, i8 noundef zeroext 2)
  %18 = load ptr, ptr %11, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = call i32 %18(ptr noundef %0, i32 noundef 0) #10
  br label %22

22:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10036_set_params(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = udiv i32 %12, 1000
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %141, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = udiv i32 %17, 1000
  %19 = icmp ugt i32 %10, %18
  br i1 %19, label %141, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, 27
  %24 = udiv i32 %23, 32000
  %25 = icmp ult i32 %10, 950000
  br i1 %25, label %141, label %26

26:                                               ; preds = %20
  %27 = icmp ult i32 %10, 1250000
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = icmp ult i32 %10, 1750000
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = icmp ult i32 %10, 2175000
  br i1 %31, label %32, label %141

32:                                               ; preds = %30, %28, %26
  %33 = phi i32 [ 0, %26 ], [ 1, %28 ], [ 2, %30 ]
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call i32 %35(ptr noundef %0, i32 noundef 1) #10
  br label %39

39:                                               ; preds = %37, %32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  %40 = getelementptr inbounds %struct.zl10036_state, ptr %9, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.zl10036_config, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i8 -117, i8 -118
  store i8 %45, ptr %6, align 2
  %46 = trunc i32 %33 to i8
  %47 = shl nuw nsw i8 %46, 5
  %48 = or i8 %47, 10
  %49 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %48, ptr %49, align 1
  %50 = load i32, ptr @zl10036_debug, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %39
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.zl10036_set_gain_params, i32 noundef %33, i32 noundef 0, i32 noundef 1, i32 noundef 1) #8
  br label %55

55:                                               ; preds = %53, %39
  %56 = call fastcc i32 @zl10036_write(ptr noundef %9, ptr noundef nonnull %6, i8 noundef zeroext 2) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %135, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  %60 = add i32 %59, 505
  %61 = udiv i32 %60, 1011
  %62 = mul nuw i32 %61, 1011
  %63 = getelementptr inbounds %struct.zl10036_state, ptr %9, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  %64 = lshr i32 %61, 8
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 127
  store i8 %66, ptr %5, align 2
  %67 = trunc i32 %61 to i8
  %68 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %67, ptr %68, align 1
  %69 = load i32, ptr @zl10036_debug, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %58
  %73 = sub i32 %59, %62
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.zl10036_set_frequency, i32 noundef %59, i32 noundef %62, i32 noundef %73, i32 noundef %61) #8
  br label %75

75:                                               ; preds = %72, %58
  %76 = call fastcc i32 @zl10036_write(ptr noundef %9, ptr noundef nonnull %5, i8 noundef zeroext 2) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %135, label %78

78:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i16 192, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 240, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 -56, ptr %4, align 1
  %79 = call i32 @llvm.umin.i32(i32 %24, i32 32000)
  %80 = call i32 @llvm.umax.i32(i32 %79, i32 5000)
  %81 = add nuw nsw i32 %80, 3000
  %82 = icmp ult i32 %80, 25821
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = mul nuw nsw i32 %81, 419
  %85 = udiv i32 212331000, %84
  %86 = trunc i32 %85 to i8
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i8 [ %86, %83 ], [ 17, %78 ]
  %89 = zext i8 %88 to i32
  %90 = mul nuw nsw i32 %81, 1257
  %91 = mul nuw nsw i32 %90, %89
  %92 = udiv i32 %91, 10111000
  %93 = trunc i32 %92 to i8
  %94 = add nsw i8 %93, -1
  %95 = call i8 @llvm.umin.i8(i8 %94, i8 62) #10
  %96 = shl nuw nsw i8 %95, 1
  %97 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %96, ptr %97, align 1
  %98 = shl nuw nsw i8 %88, 2
  %99 = and i8 %98, 124
  %100 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %99, ptr %100, align 1
  %101 = load i32, ptr @zl10036_debug, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %87
  %105 = zext i8 %95 to i32
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.zl10036_set_bandwidth, i32 noundef %81, i32 noundef %89, i32 noundef %105) #8
  br label %107

107:                                              ; preds = %104, %87
  %108 = getelementptr inbounds %struct.zl10036_state, ptr %9, i32 0, i32 3
  %109 = load i8, ptr %108, align 4
  %110 = icmp eq i8 %88, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = call fastcc i32 @zl10036_write(ptr noundef %9, ptr noundef nonnull %3, i8 noundef zeroext 2) #10
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111, %107
  %115 = getelementptr inbounds %struct.zl10036_state, ptr %9, i32 0, i32 4
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %95, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = call fastcc i32 @zl10036_write(ptr noundef %9, ptr noundef nonnull %2, i8 noundef zeroext 2) #10
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  call void @msleep(i32 noundef 1) #10
  %122 = call fastcc i32 @zl10036_write(ptr noundef %9, ptr noundef nonnull %4, i8 noundef zeroext 1) #10
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121, %118, %111
  %125 = phi i32 [ %122, %121 ], [ %119, %118 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %135

126:                                              ; preds = %121, %114
  store i8 %88, ptr %108, align 4
  store i8 %95, ptr %115, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %127

127:                                              ; preds = %132, %126
  %128 = phi i32 [ 0, %126 ], [ %133, %132 ]
  %129 = call fastcc i32 @zl10036_read_status_reg(ptr noundef %9)
  %130 = and i32 %129, -2147483584
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  call void @msleep(i32 noundef 10) #10
  %133 = add nuw nsw i32 %128, 1
  %134 = icmp eq i32 %133, 20
  br i1 %134, label %135, label %127

135:                                              ; preds = %132, %127, %124, %75, %55
  %136 = phi i32 [ %56, %55 ], [ %76, %75 ], [ %125, %124 ], [ %129, %127 ], [ %129, %132 ]
  %137 = load ptr, ptr %34, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = call i32 %137(ptr noundef %0, i32 noundef 0) #10
  br label %141

141:                                              ; preds = %139, %135, %30, %20, %15, %1
  %142 = phi i32 [ -22, %15 ], [ -22, %1 ], [ -22, %20 ], [ -22, %30 ], [ %136, %139 ], [ %136, %135 ]
  ret i32 %142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @zl10036_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.zl10036_state, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }

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
