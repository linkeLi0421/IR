; ModuleID = '/llk/IR/drivers/media/tuners/mt2131.c_pt.bc'
source_filename = "../drivers/media/tuners/mt2131.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt2131_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt2131_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt2131_attach:\09\09\09\09\09"
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mt2131_priv = type { ptr, ptr, i32 }
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

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [48 x i8] c"parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"\016%s: %s()\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"mt2131\00", align 1
@__func__.mt2131_attach = private unnamed_addr constant [14 x i8] c"mt2131_attach\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\013MT2131: Device not found at addr 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"\016MT2131: successfully identified at address 0x%02x\0A\00", align 1
@mt2131_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Microtune MT2131\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 860000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @mt2131_release, ptr @mt2131_init, ptr null, ptr null, ptr null, ptr @mt2131_set_params, ptr null, ptr null, ptr @mt2131_get_frequency, ptr null, ptr null, ptr @mt2131_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mt2131_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt2131_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt2131_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt2131_attach to i32), ptr @__kstrtab_mt2131_attach, ptr @__kstrtabns_mt2131_attach }, section "___ksymtab+mt2131_attach", align 4
@__UNIQUE_ID_author251 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [50 x i8] c"description=Microtune MT2131 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"\014mt2131 I2C read failed\0A\00", align 1
@__func__.mt2131_release = private unnamed_addr constant [15 x i8] c"mt2131_release\00", align 1
@__func__.mt2131_init = private unnamed_addr constant [12 x i8] c"mt2131_init\00", align 1
@mt2131_config1 = internal global [32 x i8] c"\01P\00P\80\00I\FA\88\08wA\04\00\00\002\7F\DAL\00\10\AAx\80\FFh\A0\FF\DD\00\00", align 1
@mt2131_config2 = internal global [7 x i8] c"\10\7F\C8\0A_\00\04", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\014mt2131 I2C write failed (len=%i)\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\014mt2131 I2C write failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\016%s: %s() freq=%d\0A\00", align 1
@__func__.mt2131_set_params = private unnamed_addr constant [18 x i8] c"mt2131_set_params\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\016%s: IF1: %dMHz IF2: %dMHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\016%s: PLL freq=%dkHz  band=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\016%s: PLL f_lo1=%dkHz  f_lo2=%dkHz\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\016%s: PLL div1=%d  num1=%d  div2=%d  num2=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\016%s: PLL [1..6]: %2x %2x %2x %2x %2x %2x\0A\00", align 1
@__func__.mt2131_get_frequency = private unnamed_addr constant [21 x i8] c"mt2131_get_frequency\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"\016%s: %s() - LO Status = 0x%x, AFC Status = 0x%x\0A\00", align 1
@__func__.mt2131_get_status = private unnamed_addr constant [18 x i8] c"mt2131_get_status\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_mt2131_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mt2131_attach(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2, i16 zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1
  %8 = load i32, ptr @debug, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mt2131_attach) #8
  br label %12

12:                                               ; preds = %10, %4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 12) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  store ptr %2, ptr %14, align 8
  %17 = getelementptr inbounds %struct.mt2131_priv, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  %18 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %18, i8 0, i32 16, i1 false) #7, !annotation !8
  %19 = load i8, ptr %2, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %6, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 1, ptr %18, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %26, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 2) #7
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  call void @kfree(ptr noundef nonnull %14) #7
  br label %43

31:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %32 = load i8, ptr %7, align 1
  %33 = add i8 %32, -64
  %34 = icmp ult i8 %33, -2
  %35 = load i8, ptr %2, align 1
  %36 = zext i8 %35 to i32
  br i1 %34, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %36) #8
  call void @kfree(ptr noundef nonnull %14) #7
  br label %43

39:                                               ; preds = %31
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %36) #8
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %41, ptr noundef nonnull align 4 dereferenceable(220) @mt2131_tuner_ops, i32 220, i1 false)
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %14, ptr %42, align 4
  br label %43

43:                                               ; preds = %39, %37, %29, %12
  %44 = phi ptr [ null, %29 ], [ null, %37 ], [ %0, %39 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  ret ptr %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mt2131_release(ptr nocapture noundef %0) #0 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mt2131_release) #8
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #7
  store ptr null, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2131_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr @debug, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mt2131_init) #8
  br label %18

18:                                               ; preds = %16, %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #7
  %19 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 32, ptr %19, align 4, !annotation !8
  %20 = load ptr, ptr %13, align 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %11, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr @mt2131_config1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mt2131_priv, ptr %13, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %11, i32 noundef 1) #7
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 32) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #7
  br label %96

31:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #7
  store i8 11, ptr %9, align 2
  %32 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 9, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  %33 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %33, align 4, !annotation !8
  %34 = load ptr, ptr %13, align 4
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %10, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %38, align 4
  %39 = load ptr, ptr %25, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %10, i32 noundef 1) #7
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %44

44:                                               ; preds = %42, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #7
  store i8 21, ptr %7, align 2
  %45 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 71, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  %46 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %46, align 4, !annotation !8
  %47 = load ptr, ptr %13, align 4
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %8, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %51, align 4
  %52 = load ptr, ptr %25, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %8, i32 noundef 1) #7
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %57

57:                                               ; preds = %55, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #7
  store i8 7, ptr %5, align 2
  %58 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -14, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %59 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %59, align 4, !annotation !8
  %60 = load ptr, ptr %13, align 4
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %6, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %64, align 4
  %65 = load ptr, ptr %25, align 4
  %66 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %6, i32 noundef 1) #7
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %70

70:                                               ; preds = %68, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #7
  store i8 11, ptr %3, align 2
  %71 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %71, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  %72 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %72, align 4, !annotation !8
  %73 = load ptr, ptr %13, align 4
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i16
  store i16 %75, ptr %4, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %76, align 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %77, align 4
  %78 = load ptr, ptr %25, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %4, i32 noundef 1) #7
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %83, label %81

81:                                               ; preds = %70
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %83

83:                                               ; preds = %81, %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  %84 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 7, ptr %84, align 4, !annotation !8
  %85 = load ptr, ptr %13, align 4
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %2, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %88, align 2
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr @mt2131_config2, ptr %89, align 4
  %90 = load ptr, ptr %25, align 4
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %2, i32 noundef 1) #7
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  br label %96

94:                                               ; preds = %83
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  br label %96

96:                                               ; preds = %94, %93, %29
  %97 = phi i32 [ -121, %29 ], [ -121, %94 ], [ 0, %93 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2131_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [8 x i8], align 8
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store i64 1, ptr %7, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #7
  store i8 0, ptr %8, align 1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %9, align 4
  %13 = udiv i32 %12, 1000
  %14 = load i32, ptr @debug, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mt2131_set_params, i32 noundef %13) #8
  br label %18

18:                                               ; preds = %16, %1
  %19 = add nuw nsw i32 %13, 1220000
  %20 = urem i32 %19, 250
  %21 = sub nuw nsw i32 %19, %20
  %22 = sub nsw i32 %21, %13
  %23 = add nsw i32 %22, -44000
  %24 = sub nsw i32 %21, %23
  %25 = mul i32 %24, 1000
  %26 = add i32 %25, -44000000
  %27 = getelementptr inbounds %struct.mt2131_priv, ptr %11, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = shl nuw nsw i32 %21, 6
  %29 = udiv i32 %28, 125
  %30 = udiv i32 %21, 16000
  %31 = and i32 %29, 8191
  %32 = shl nsw i32 %23, 6
  %33 = udiv i32 %32, 125
  %34 = udiv i32 %32, 1024000
  %35 = and i32 %33, 8191
  %36 = icmp ult i32 %12, 82501000
  br i1 %36, label %74, label %37

37:                                               ; preds = %18
  %38 = icmp ult i32 %12, 137501000
  br i1 %38, label %74, label %39

39:                                               ; preds = %37
  %40 = icmp ult i32 %12, 192501000
  br i1 %40, label %74, label %41

41:                                               ; preds = %39
  %42 = icmp ult i32 %12, 247501000
  br i1 %42, label %74, label %43

43:                                               ; preds = %41
  %44 = icmp ult i32 %12, 302501000
  br i1 %44, label %74, label %45

45:                                               ; preds = %43
  %46 = icmp ult i32 %12, 357501000
  br i1 %46, label %74, label %47

47:                                               ; preds = %45
  %48 = icmp ult i32 %12, 412501000
  br i1 %48, label %74, label %49

49:                                               ; preds = %47
  %50 = icmp ult i32 %12, 467501000
  br i1 %50, label %74, label %51

51:                                               ; preds = %49
  %52 = icmp ult i32 %12, 522501000
  br i1 %52, label %74, label %53

53:                                               ; preds = %51
  %54 = icmp ult i32 %12, 577501000
  br i1 %54, label %74, label %55

55:                                               ; preds = %53
  %56 = icmp ult i32 %12, 632501000
  br i1 %56, label %74, label %57

57:                                               ; preds = %55
  %58 = icmp ult i32 %12, 687501000
  br i1 %58, label %74, label %59

59:                                               ; preds = %57
  %60 = icmp ult i32 %12, 742501000
  br i1 %60, label %74, label %61

61:                                               ; preds = %59
  %62 = icmp ult i32 %12, 797501000
  br i1 %62, label %74, label %63

63:                                               ; preds = %61
  %64 = icmp ult i32 %12, 852501000
  br i1 %64, label %74, label %65

65:                                               ; preds = %63
  %66 = icmp ult i32 %12, 907501000
  br i1 %66, label %74, label %67

67:                                               ; preds = %65
  %68 = icmp ult i32 %12, 962501000
  br i1 %68, label %74, label %69

69:                                               ; preds = %67
  %70 = icmp ult i32 %12, 1017501000
  br i1 %70, label %74, label %71

71:                                               ; preds = %69
  %72 = icmp ult i32 %12, 1072501000
  %73 = select i1 %72, i8 18, i8 19
  br label %74

74:                                               ; preds = %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %18
  %75 = phi i8 [ 0, %18 ], [ 1, %37 ], [ 2, %39 ], [ 3, %41 ], [ 4, %43 ], [ 5, %45 ], [ 6, %47 ], [ 7, %49 ], [ 8, %51 ], [ 9, %53 ], [ 10, %55 ], [ 11, %57 ], [ 12, %59 ], [ 13, %61 ], [ 14, %63 ], [ 15, %65 ], [ 16, %67 ], [ 17, %69 ], [ %73, %71 ]
  %76 = lshr i32 %29, 5
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [8 x i8], ptr %7, i32 0, i32 1
  store i8 %77, ptr %78, align 1
  %79 = trunc i32 %29 to i8
  %80 = and i8 %79, 31
  %81 = getelementptr inbounds [8 x i8], ptr %7, i32 0, i32 2
  store i8 %80, ptr %81, align 2
  %82 = trunc i32 %30 to i8
  %83 = getelementptr inbounds [8 x i8], ptr %7, i32 0, i32 3
  store i8 %82, ptr %83, align 1
  %84 = lshr i32 %33, 5
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds [8 x i8], ptr %7, i32 0, i32 4
  store i8 %85, ptr %86, align 4
  %87 = trunc i32 %33 to i8
  %88 = and i8 %87, 31
  %89 = getelementptr inbounds [8 x i8], ptr %7, i32 0, i32 5
  store i8 %88, ptr %89, align 1
  %90 = trunc i32 %34 to i8
  %91 = getelementptr inbounds [8 x i8], ptr %7, i32 0, i32 6
  store i8 %90, ptr %91, align 2
  %92 = load i32, ptr @debug, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %74
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1220, i32 noundef 44000) #8
  %96 = load i32, ptr @debug, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %94
  %99 = zext i8 %75 to i32
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %99) #8
  %101 = load i32, ptr @debug, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %98
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %23) #8
  %105 = load i32, ptr @debug, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef %30, i32 noundef %31, i32 noundef %34, i32 noundef %35) #8
  %109 = load i32, ptr @debug, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = and i32 %76, 255
  %113 = zext i8 %80 to i32
  %114 = and i32 %30, 255
  %115 = and i32 %84, 255
  %116 = zext i8 %88 to i32
  %117 = and i32 %34, 255
  %118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef %112, i32 noundef %113, i32 noundef %114, i32 noundef %115, i32 noundef %116, i32 noundef %117) #8
  br label %119

119:                                              ; preds = %111, %107, %103, %98, %94, %74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %120 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 7, ptr %120, align 4, !annotation !8
  %121 = load ptr, ptr %11, align 4
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i16
  store i16 %123, ptr %6, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %124, align 2
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %125, align 4
  %126 = getelementptr inbounds %struct.mt2131_priv, ptr %11, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %6, i32 noundef 1) #7
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  br label %172

132:                                              ; preds = %119
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i8 11, ptr %4, align 2
  %133 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %75, ptr %133, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  %134 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %134, align 4, !annotation !8
  %135 = load ptr, ptr %11, align 4
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i16
  store i16 %137, ptr %5, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %138, align 2
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %139, align 4
  %140 = load ptr, ptr %126, align 4
  %141 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %5, i32 noundef 1) #7
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %145, label %143

143:                                              ; preds = %132
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %145

145:                                              ; preds = %143, %132
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  %146 = getelementptr inbounds i8, ptr %3, i32 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  br label %153

153:                                              ; preds = %169, %145
  %154 = phi i32 [ 0, %145 ], [ %170, %169 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 8, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %146, i8 0, i32 16, i1 false) #7, !annotation !8
  %155 = load ptr, ptr %11, align 4
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %3, align 4
  store i16 0, ptr %147, align 2
  store i16 1, ptr %146, align 4
  store ptr %2, ptr %148, align 4
  %158 = load i8, ptr %155, align 1
  %159 = zext i8 %158 to i16
  store i16 %159, ptr %149, align 4
  store i16 1, ptr %150, align 2
  store i16 1, ptr %151, align 4
  store ptr %8, ptr %152, align 4
  %160 = load ptr, ptr %126, align 4
  %161 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %3, i32 noundef 2) #7
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %165, label %163

163:                                              ; preds = %153
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %165

165:                                              ; preds = %163, %153
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %166 = load i8, ptr %8, align 1
  %167 = and i8 %166, -120
  %168 = icmp eq i8 %167, -120
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  call void @msleep(i32 noundef 4) #7
  %170 = add nuw nsw i32 %154, 1
  %171 = icmp eq i32 %170, 10
  br i1 %171, label %172, label %153

172:                                              ; preds = %169, %165, %130
  %173 = phi i32 [ -121, %130 ], [ 0, %165 ], [ 0, %169 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2131_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mt2131_get_frequency) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.mt2131_priv, ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2131_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #7
  store i8 0, ptr %8, align 1
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 8, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #7, !annotation !8
  %12 = load ptr, ptr %10, align 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 1, ptr %11, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %18 = load i8, ptr %12, align 1
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mt2131_priv, ptr %10, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %6, i32 noundef 2) #7
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %29

29:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %30 = load i8, ptr %7, align 1
  %31 = and i8 %30, -120
  %32 = icmp eq i8 %31, -120
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, ptr %1, align 4
  br label %34

34:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 9, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %35 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %35, i8 0, i32 16, i1 false) #7, !annotation !8
  %36 = load ptr, ptr %10, align 4
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %4, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %39, align 2
  store i16 1, ptr %35, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %42 = load i8, ptr %36, align 1
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %8, ptr %46, align 4
  %47 = load ptr, ptr %23, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %4, i32 noundef 2) #7
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %52, label %50

50:                                               ; preds = %34
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %52

52:                                               ; preds = %50, %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %53 = load i32, ptr @debug, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i8, ptr %7, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, ptr %8, align 1
  %59 = zext i8 %58 to i32
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mt2131_get_status, i32 noundef %57, i32 noundef %59) #8
  br label %61

61:                                               ; preds = %55, %52
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
