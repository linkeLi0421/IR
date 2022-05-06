; ModuleID = '/llk/IR/drivers/media/tuners/mt2266.c_pt.bc'
source_filename = "../drivers/media/tuners/mt2266.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt2266_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt2266_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt2266_attach:\09\09\09\09\09"
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
%struct.mt2266_priv = type { ptr, ptr, i32, i32, i8 }
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
@.str = private unnamed_addr constant [35 x i8] c"\016MT2266: successfully identified\0A\00", align 1
@mt2266_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Microtune MT2266\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @mt2266_release, ptr @mt2266_init, ptr @mt2266_sleep, ptr null, ptr null, ptr @mt2266_set_params, ptr null, ptr null, ptr @mt2266_get_frequency, ptr @mt2266_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mt2266_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt2266_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt2266_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt2266_attach to i32), ptr @__kstrtab_mt2266_attach, ptr @__kstrtabns_mt2266_attach }, section "___ksymtab+mt2266_attach", align 4
@__UNIQUE_ID_author251 = internal constant [21 x i8] c"author=Olivier DANET\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [50 x i8] c"description=Microtune MT2266 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"\014MT2266 I2C read failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\014MT2266 I2C write failed\0A\00", align 1
@mt2266_init_6mhz = internal global [9 x i8] c"\08\A7\A7\A7\A7\A7\A7\A7\A7", align 1
@mt2266_init_8mhz = internal global [9 x i8] c"\08\22\22\22\22\22\22\22\22", align 1
@mt2266_init_7mhz = internal global [9 x i8] c"\0822222222", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\017MT2266: Switch from UHF to VHF\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@mt2266_vhf = internal global [16 x i8] c"\1D\FE\00\00\B4\03\A5\A5\A5\A5\82\AA\F1\17\80\1F", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\017MT2266: Switch from VHF to UHF\00", align 1
@mt2266_uhf = internal global [16 x i8] c"\1D\DC\00\0A\D4\03dddd\22\AA\F2\1E\80\14", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\017MT2266: set_parms: tune=%d band=%d %s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"UHF\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"VHF\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\017MT2266: set_parms: [1..3]: %2x %2x %2x\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"\017MT2266: Lock when i=%i\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\014MT2266 I2C write failed (len=%i)\0A\00", align 1
@mt2266_init1 = internal global [8 x i8] c"\01\00\00(\00R\99?", align 1
@mt2266_init2 = internal global [38 x i8] c"\17mqa\C0\BF\FF\DC\00\0A\D4\03dddd\22\AA\F2\1E\80\14\01\01\01\01\01\01\7F^?\FF\FF\FF\00w\0F-", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_mt2266_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mt2266_attach(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 20) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %3
  store ptr %2, ptr %8, align 8
  %11 = getelementptr inbounds %struct.mt2266_priv, ptr %8, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mt2266_priv, ptr %8, i32 0, i32 4
  store i8 0, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %13 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %13, i8 0, i32 16, i1 false) #8, !annotation !8
  %14 = load i8, ptr %2, align 1
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %13, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %21, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  call void @kfree(ptr noundef nonnull %8) #8
  br label %34

26:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %27 = load i8, ptr %6, align 1
  %28 = icmp eq i8 %27, -123
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @kfree(ptr noundef nonnull %8) #8
  br label %34

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %32, ptr noundef nonnull align 4 dereferenceable(220) @mt2266_tuner_ops, i32 220, i1 false)
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %8, ptr %33, align 4
  call fastcc void @mt2266_calibrate(ptr noundef nonnull %8)
  br label %34

34:                                               ; preds = %30, %29, %24, %3
  %35 = phi ptr [ null, %24 ], [ null, %29 ], [ %0, %30 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  ret ptr %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mt2266_calibrate(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #8
  store i8 17, ptr %21, align 2
  %23 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 3, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #8
  %24 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %24, align 4, !annotation !8
  %25 = load ptr, ptr %0, align 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %22, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mt2266_priv, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %22, i32 noundef 1) #8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %36, label %34

34:                                               ; preds = %1
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %36

36:                                               ; preds = %34, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #8
  store i8 17, ptr %19, align 2
  %37 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 1, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #8
  %38 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 2, ptr %38, align 4, !annotation !8
  %39 = load ptr, ptr %0, align 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %20, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %43, align 4
  %44 = load ptr, ptr %30, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %20, i32 noundef 1) #8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %49

49:                                               ; preds = %47, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #8
  %50 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 8, ptr %50, align 4, !annotation !8
  %51 = load ptr, ptr %0, align 4
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %18, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr @mt2266_init1, ptr %55, align 4
  %56 = load ptr, ptr %30, align 4
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %18, i32 noundef 1) #8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %61, label %59

59:                                               ; preds = %49
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 8) #10
  br label %61

61:                                               ; preds = %59, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  %62 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 38, ptr %62, align 4, !annotation !8
  %63 = load ptr, ptr %0, align 4
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %17, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %66, align 2
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr @mt2266_init2, ptr %67, align 4
  %68 = load ptr, ptr %30, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %17, i32 noundef 1) #8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %73, label %71

71:                                               ; preds = %61
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 38) #10
  br label %73

73:                                               ; preds = %71, %61
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #8
  store i8 51, ptr %15, align 2
  %74 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 94, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  %75 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %75, align 4, !annotation !8
  %76 = load ptr, ptr %0, align 4
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %16, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %80, align 4
  %81 = load ptr, ptr %30, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %16, i32 noundef 1) #8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %86

86:                                               ; preds = %84, %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  store i8 16, ptr %13, align 2
  %87 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 16, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  %88 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %88, align 4, !annotation !8
  %89 = load ptr, ptr %0, align 4
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i16
  store i16 %91, ptr %14, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %92, align 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %93, align 4
  %94 = load ptr, ptr %30, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %14, i32 noundef 1) #8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %99

99:                                               ; preds = %97, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i8 16, ptr %11, align 2
  %100 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 0, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  %101 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %101, align 4, !annotation !8
  %102 = load ptr, ptr %0, align 4
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %12, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %105, align 2
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %106, align 4
  %107 = load ptr, ptr %30, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %12, i32 noundef 1) #8
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %112, label %110

110:                                              ; preds = %99
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %112

112:                                              ; preds = %110, %99
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  %113 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 9, ptr %113, align 4, !annotation !8
  %114 = load ptr, ptr %0, align 4
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %10, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr @mt2266_init_8mhz, ptr %118, align 4
  %119 = load ptr, ptr %30, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %10, i32 noundef 1) #8
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %124, label %122

122:                                              ; preds = %112
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 9) #10
  br label %124

124:                                              ; preds = %122, %112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  call void @msleep(i32 noundef 25) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i8 23, ptr %8, align 2
  %125 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 109, ptr %125, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %126 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %126, align 4, !annotation !8
  %127 = load ptr, ptr %0, align 4
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i16
  store i16 %129, ptr %9, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %130, align 2
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %131, align 4
  %132 = load ptr, ptr %30, align 4
  %133 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %9, i32 noundef 1) #8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %137

137:                                              ; preds = %135, %124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i8 28, ptr %6, align 2
  %138 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %139 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %139, align 4, !annotation !8
  %140 = load ptr, ptr %0, align 4
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %7, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %144, align 4
  %145 = load ptr, ptr %30, align 4
  %146 = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %7, i32 noundef 1) #8
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %150, label %148

148:                                              ; preds = %137
  %149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %150

150:                                              ; preds = %148, %137
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  call void @msleep(i32 noundef 75) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 23, ptr %4, align 2
  %151 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 109, ptr %151, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %152 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %152, align 4, !annotation !8
  %153 = load ptr, ptr %0, align 4
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %5, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %156, align 2
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %157, align 4
  %158 = load ptr, ptr %30, align 4
  %159 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %5, i32 noundef 1) #8
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %163, label %161

161:                                              ; preds = %150
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %163

163:                                              ; preds = %161, %150
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 28, ptr %2, align 2
  %164 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -1, ptr %164, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %165 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %165, align 4, !annotation !8
  %166 = load ptr, ptr %0, align 4
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i16
  store i16 %168, ptr %3, align 4
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %169, align 2
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %170, align 4
  %171 = load ptr, ptr %30, align 4
  %172 = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %3, i32 noundef 1) #8
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %176, label %174

174:                                              ; preds = %163
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %176

176:                                              ; preds = %174, %163
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mt2266_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2266_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 23, ptr %4, align 2
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 109, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = load ptr, ptr %7, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mt2266_priv, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %35

21:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 28, ptr %2, align 2
  %22 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -1, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %23 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %23, align 4, !annotation !8
  %24 = load ptr, ptr %7, align 4
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %3, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %28, align 4
  %29 = load ptr, ptr %15, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 1) #8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %35

33:                                               ; preds = %21
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %35

35:                                               ; preds = %33, %32, %19
  %36 = phi i32 [ -121, %19 ], [ -121, %33 ], [ 0, %32 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2266_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 23, ptr %4, align 2
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 109, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = load ptr, ptr %7, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mt2266_priv, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %21

21:                                               ; preds = %19, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 28, ptr %2, align 2
  %22 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %23 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %23, align 4, !annotation !8
  %24 = load ptr, ptr %7, align 4
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %3, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %28, align 4
  %29 = load ptr, ptr %15, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 1) #8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %34

34:                                               ; preds = %32, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2266_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %21) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %21, i8 0, i32 10, i1 false), !annotation !8
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -230001000
  %27 = icmp ult i32 %26, 239999000
  br i1 %27, label %326, label %28

28:                                               ; preds = %1
  %29 = udiv i32 %25, 1000
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %24, align 4
  %32 = shl i32 %29, 10
  %33 = udiv i32 %32, 1875
  %34 = icmp ult i32 %25, 300000000
  %35 = zext i1 %34 to i8
  %36 = zext i1 %34 to i32
  %37 = shl nuw nsw i32 %33, %36
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %68 [
    i32 6000000, label %40
    i32 8000000, label %54
  ]

40:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #8
  %41 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 0, ptr %41, align 4, !annotation !8
  %42 = load ptr, ptr %23, align 4
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %20, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %45, align 2
  store i16 9, ptr %41, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr @mt2266_init_6mhz, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %20, i32 noundef 1) #8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 9) #10
  br label %53

53:                                               ; preds = %51, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #8
  br label %82

54:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  %55 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 0, ptr %55, align 4, !annotation !8
  %56 = load ptr, ptr %23, align 4
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %19, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %59, align 2
  store i16 9, ptr %55, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr @mt2266_init_8mhz, ptr %60, align 4
  %61 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %19, i32 noundef 1) #8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 9) #10
  br label %67

67:                                               ; preds = %65, %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  br label %82

68:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #8
  %69 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 0, ptr %69, align 4, !annotation !8
  %70 = load ptr, ptr %23, align 4
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %18, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %73, align 2
  store i16 9, ptr %69, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr @mt2266_init_7mhz, ptr %74, align 4
  %75 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %18, i32 noundef 1) #8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %81, label %79

79:                                               ; preds = %68
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 9) #10
  br label %81

81:                                               ; preds = %79, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #8
  br label %82

82:                                               ; preds = %81, %67, %53
  %83 = load i32, ptr %38, align 4
  %84 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 3
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 4
  %86 = load i8, ptr %85, align 4
  br i1 %34, label %87, label %135

87:                                               ; preds = %82
  %88 = icmp eq i8 %86, 0
  br i1 %88, label %89, label %183

89:                                               ; preds = %87
  %90 = load i32, ptr @debug, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %95

95:                                               ; preds = %92, %89
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #8
  store i8 5, ptr %16, align 2
  %96 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 4, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  %97 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %97, align 4, !annotation !8
  %98 = load ptr, ptr %23, align 4
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %17, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %102, align 4
  %103 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %17, i32 noundef 1) #8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %109, label %107

107:                                              ; preds = %95
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %109

109:                                              ; preds = %107, %95
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  store i8 25, ptr %14, align 2
  %110 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 97, ptr %110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  %111 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %111, align 4, !annotation !8
  %112 = load ptr, ptr %23, align 4
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %15, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %116, align 4
  %117 = load ptr, ptr %103, align 4
  %118 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %15, i32 noundef 1) #8
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %122

122:                                              ; preds = %120, %109
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #8
  %123 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 16, ptr %123, align 4, !annotation !8
  %124 = load ptr, ptr %23, align 4
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i16
  store i16 %126, ptr %13, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %127, align 2
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr @mt2266_vhf, ptr %128, align 4
  %129 = load ptr, ptr %103, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %13, i32 noundef 1) #8
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %134, label %132

132:                                              ; preds = %122
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 16) #10
  br label %134

134:                                              ; preds = %132, %122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #8
  br label %183

135:                                              ; preds = %82
  %136 = icmp eq i8 %86, 1
  br i1 %136, label %137, label %184

137:                                              ; preds = %135
  %138 = load i32, ptr @debug, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %143

143:                                              ; preds = %140, %137
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i8 5, ptr %11, align 2
  %144 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 82, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  %145 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 0, ptr %145, align 4, !annotation !8
  %146 = load ptr, ptr %23, align 4
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %12, align 4
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %149, align 2
  store i16 2, ptr %145, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %150, align 4
  %151 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %12, i32 noundef 1) #8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %157, label %155

155:                                              ; preds = %143
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %157

157:                                              ; preds = %155, %143
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i8 25, ptr %9, align 2
  %158 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 97, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  %159 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 0, ptr %159, align 4, !annotation !8
  %160 = load ptr, ptr %23, align 4
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %10, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %163, align 2
  store i16 2, ptr %159, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %164, align 4
  %165 = load ptr, ptr %151, align 4
  %166 = call i32 @i2c_transfer(ptr noundef %165, ptr noundef nonnull %10, i32 noundef 1) #8
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %170, label %168

168:                                              ; preds = %157
  %169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %170

170:                                              ; preds = %168, %157
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %171 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 0, ptr %171, align 4, !annotation !8
  %172 = load ptr, ptr %23, align 4
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i16
  store i16 %174, ptr %8, align 4
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %175, align 2
  store i16 16, ptr %171, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr @mt2266_uhf, ptr %176, align 4
  %177 = load ptr, ptr %151, align 4
  %178 = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %8, i32 noundef 1) #8
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %182, label %180

180:                                              ; preds = %170
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 16) #10
  br label %182

182:                                              ; preds = %180, %170
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  br label %184

183:                                              ; preds = %134, %87
  call void @msleep(i32 noundef 10) #8
  br label %211

184:                                              ; preds = %182, %135
  call void @msleep(i32 noundef 10) #8
  %185 = icmp ult i32 %25, 495001000
  br i1 %185, label %211, label %186

186:                                              ; preds = %184
  %187 = icmp ult i32 %25, 525001000
  br i1 %187, label %211, label %188

188:                                              ; preds = %186
  %189 = icmp ult i32 %25, 550001000
  br i1 %189, label %211, label %190

190:                                              ; preds = %188
  %191 = icmp ult i32 %25, 580001000
  br i1 %191, label %211, label %192

192:                                              ; preds = %190
  %193 = icmp ult i32 %25, 605001000
  br i1 %193, label %211, label %194

194:                                              ; preds = %192
  %195 = icmp ult i32 %25, 630001000
  br i1 %195, label %211, label %196

196:                                              ; preds = %194
  %197 = icmp ult i32 %25, 655001000
  br i1 %197, label %211, label %198

198:                                              ; preds = %196
  %199 = icmp ult i32 %25, 685001000
  br i1 %199, label %211, label %200

200:                                              ; preds = %198
  %201 = icmp ult i32 %25, 710001000
  br i1 %201, label %211, label %202

202:                                              ; preds = %200
  %203 = icmp ult i32 %25, 735001000
  br i1 %203, label %211, label %204

204:                                              ; preds = %202
  %205 = icmp ult i32 %25, 765001000
  br i1 %205, label %211, label %206

206:                                              ; preds = %204
  %207 = icmp ult i32 %25, 802001000
  br i1 %207, label %211, label %208

208:                                              ; preds = %206
  %209 = icmp ult i32 %25, 840001000
  %210 = select i1 %209, i8 34, i8 17
  br label %211

211:                                              ; preds = %208, %206, %204, %202, %200, %198, %196, %194, %192, %190, %188, %186, %184, %183
  %212 = phi i8 [ -18, %184 ], [ -35, %186 ], [ -52, %188 ], [ -69, %190 ], [ -86, %192 ], [ -103, %194 ], [ -120, %196 ], [ 119, %198 ], [ 102, %200 ], [ 85, %202 ], [ 68, %204 ], [ 51, %206 ], [ %210, %208 ], [ -18, %183 ]
  store i8 1, ptr %21, align 1
  %213 = lshr i32 %37, 8
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 31
  %216 = getelementptr inbounds [10 x i8], ptr %21, i32 0, i32 1
  store i8 %215, ptr %216, align 1
  %217 = trunc i32 %37 to i8
  %218 = getelementptr inbounds [10 x i8], ptr %21, i32 0, i32 2
  store i8 %217, ptr %218, align 1
  %219 = lshr i32 %37, 13
  %220 = trunc i32 %219 to i8
  %221 = getelementptr inbounds [10 x i8], ptr %21, i32 0, i32 3
  store i8 %220, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %222 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %222, align 4, !annotation !8
  %223 = load ptr, ptr %23, align 4
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i16
  store i16 %225, ptr %7, align 4
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %226, align 2
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %21, ptr %227, align 4
  %228 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %7, i32 noundef 1) #8
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %234, label %232

232:                                              ; preds = %211
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 4) #10
  br label %234

234:                                              ; preds = %232, %211
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  %235 = load i32, ptr @debug, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %253, label %237

237:                                              ; preds = %234
  %238 = zext i8 %212 to i32
  %239 = select i1 %34, ptr @.str.8, ptr @.str.7
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %37, i32 noundef %238, ptr noundef nonnull %239) #10
  %241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  %242 = load i32, ptr @debug, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %237
  %245 = load i8, ptr %216, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8, ptr %218, align 1
  %248 = zext i8 %247 to i32
  %249 = load i8, ptr %221, align 1
  %250 = zext i8 %249 to i32
  %251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %246, i32 noundef %248, i32 noundef %250) #10
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %253

253:                                              ; preds = %244, %237, %234
  br i1 %34, label %271, label %254

254:                                              ; preds = %253
  store i8 5, ptr %21, align 1
  %255 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 4
  %256 = load i8, ptr %255, align 4
  %257 = icmp eq i8 %256, 1
  %258 = select i1 %257, i8 82, i8 98
  store i8 %258, ptr %216, align 1
  store i8 %212, ptr %218, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %259 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %259, align 4, !annotation !8
  %260 = load ptr, ptr %23, align 4
  %261 = load i8, ptr %260, align 1
  %262 = zext i8 %261 to i16
  store i16 %262, ptr %6, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %263, align 2
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %21, ptr %264, align 4
  %265 = load ptr, ptr %228, align 4
  %266 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %6, i32 noundef 1) #8
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %270, label %268

268:                                              ; preds = %254
  %269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 3) #10
  br label %270

270:                                              ; preds = %268, %254
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  br label %271

271:                                              ; preds = %270, %253
  %272 = getelementptr inbounds i8, ptr %5, i32 4
  %273 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %274 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %275 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %276 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %277 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  br label %279

279:                                              ; preds = %295, %271
  %280 = phi i32 [ 0, %271 ], [ %296, %295 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 18, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %272, i8 0, i32 16, i1 false) #8, !annotation !8
  %281 = load ptr, ptr %23, align 4
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i16
  store i16 %283, ptr %5, align 4
  store i16 0, ptr %273, align 2
  store i16 1, ptr %272, align 4
  store ptr %4, ptr %274, align 4
  %284 = load i8, ptr %281, align 1
  %285 = zext i8 %284 to i16
  store i16 %285, ptr %275, align 4
  store i16 1, ptr %276, align 2
  store i16 1, ptr %277, align 4
  store ptr %21, ptr %278, align 4
  %286 = load ptr, ptr %228, align 4
  %287 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %5, i32 noundef 2) #8
  %288 = icmp eq i32 %287, 2
  br i1 %288, label %291, label %289

289:                                              ; preds = %279
  %290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %291

291:                                              ; preds = %289, %279
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %292 = load i8, ptr %21, align 1
  %293 = and i8 %292, 64
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  call void @msleep(i32 noundef 10) #8
  %296 = add nuw nsw i32 %280, 1
  %297 = icmp eq i32 %296, 10
  br i1 %297, label %298, label %279

298:                                              ; preds = %295, %291
  %299 = phi i32 [ %280, %291 ], [ 10, %295 ]
  %300 = load i32, ptr @debug, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %298
  %303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %299) #10
  %304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %305

305:                                              ; preds = %302, %298
  br i1 %34, label %324, label %306

306:                                              ; preds = %305
  %307 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 4
  %308 = load i8, ptr %307, align 4
  %309 = icmp eq i8 %308, 1
  br i1 %309, label %310, label %324

310:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 5, ptr %2, align 2
  %311 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 98, ptr %311, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %312 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %312, align 4, !annotation !8
  %313 = load ptr, ptr %23, align 4
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i16
  store i16 %315, ptr %3, align 4
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %316, align 2
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %317, align 4
  %318 = load ptr, ptr %228, align 4
  %319 = call i32 @i2c_transfer(ptr noundef %318, ptr noundef nonnull %3, i32 noundef 1) #8
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %323, label %321

321:                                              ; preds = %310
  %322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %323

323:                                              ; preds = %321, %310
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %324

324:                                              ; preds = %323, %306, %305
  %325 = getelementptr inbounds %struct.mt2266_priv, ptr %23, i32 0, i32 4
  store i8 %35, ptr %325, align 4
  br label %326

326:                                              ; preds = %324, %1
  %327 = phi i32 [ 0, %324 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %21) #8
  ret i32 %327
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mt2266_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mt2266_priv, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mt2266_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mt2266_priv, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
