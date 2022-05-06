; ModuleID = '/llk/IR/drivers/media/dvb-frontends/itd1000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/itd1000.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_itd1000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22itd1000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_itd1000_attach:\09\09\09\09\09"
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
%struct.anon.73 = type { i32, [10 x i8] }
%struct.anon.74 = type { i8, i32 }
%struct.anon.75 = type { i32, i8 }
%struct.itd1000_state = type { ptr, ptr, i32, [256 x i8] }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [48 x i8] c"parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [45 x i8] c"\016ITD1000: successfully identified (ID: %d)\0A\00", align 1
@itd1000_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Integrant ITD1000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 0, i32 0 }, ptr @itd1000_release, ptr @itd1000_init, ptr @itd1000_sleep, ptr null, ptr null, ptr @itd1000_set_parameters, ptr null, ptr null, ptr @itd1000_get_frequency, ptr @itd1000_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_itd1000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_itd1000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_itd1000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @itd1000_attach to i32), ptr @__kstrtab_itd1000_attach, ptr @__kstrtabns_itd1000_attach }, section "___ksymtab+itd1000_attach", align 4
@__UNIQUE_ID_author251 = internal constant [42 x i8] c"author=Patrick Boettcher <pb@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [37 x i8] c"description=Integrant ITD1000 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\014ITD1000: itd1000 I2C read failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\014itd1000 I2C write failed\0A\00", align 1
@itd1000_init_tab = internal unnamed_addr constant [28 x [2 x i8]] [[2 x i8] c"ge", [2 x i8] c"h\80", [2 x i8] c"m;", [2 x i8] c"o\12", [2 x i8] c"r\F9", [2 x i8] c"s\FF", [2 x i8] c"t\B2", [2 x i8] c"u\C7", [2 x i8] c"y\F0", [2 x i8] c"z\80", [2 x i8] c"{\A0", [2 x i8] c"~O", [2 x i8] c"\82\88", [2 x i8] c"\83\80", [2 x i8] c"\84\80", [2 x i8] c"\85t", [2 x i8] c"\86\FF", [2 x i8] c"\88\02", [2 x i8] c"\89\16", [2 x i8] c"\8A\1F", [2 x i8] c"\94f", [2 x i8] c"\95f", [2 x i8] c"\96w", [2 x i8] c"\97\99", [2 x i8] c"\98\FF", [2 x i8] c"\99\FC", [2 x i8] c"\9A\BA", [2 x i8] c"\9B\AA"], align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"\017ITD1000: frequency: %dkHz (wanted) %dkHz (set), PLLF = %d, PLLN = %d\0A\00", align 1
@itd1000_fre_values = internal unnamed_addr constant [10 x %struct.anon.73] [%struct.anon.73 { i32 1075000, [10 x i8] c"Y\1D\1C\17\16\0F\0E\0C\0B\0A" }, %struct.anon.73 { i32 1250000, [10 x i8] c"\89\1E\1D\17\15\0F\0E\0C\0B\0A" }, %struct.anon.73 { i32 1450000, [10 x i8] c"\89\1E\1D\17\15\0F\0E\0C\0B\0A" }, %struct.anon.73 { i32 1650000, [10 x i8] c"i\1E\1D\17\15\0F\0E\0C\0B\0A" }, %struct.anon.73 { i32 1750000, [10 x i8] c"i\1E\17\15\14\0F\0E\0C\0B\0A" }, %struct.anon.73 { i32 1850000, [10 x i8] c"i\1D\17\16\14\0F\0E\0D\0B\0A" }, %struct.anon.73 { i32 1900000, [10 x i8] c"i\1D\17\15\14\0F\0E\0D\0B\0A" }, %struct.anon.73 { i32 1950000, [10 x i8] c"i\1D\17\16\14\13\0E\0D\0B\0A" }, %struct.anon.73 { i32 2050000, [10 x i8] c"i\1E\1D\17\16\14\13\0E\0B\0A" }, %struct.anon.73 { i32 2150000, [10 x i8] c"i\1D\1C\17\15\14\13\0F\0E\0B" }], align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"\017ITD1000: fre_values: %d\0A\00", align 1
@itd1000_vcorg = internal unnamed_addr constant [15 x %struct.anon.74] [%struct.anon.74 { i8 1, i32 920000 }, %struct.anon.74 { i8 2, i32 971000 }, %struct.anon.74 { i8 3, i32 1031000 }, %struct.anon.74 { i8 4, i32 1091000 }, %struct.anon.74 { i8 5, i32 1171000 }, %struct.anon.74 { i8 6, i32 1281000 }, %struct.anon.74 { i8 7, i32 1381000 }, %struct.anon.74 { i8 8, i32 500000 }, %struct.anon.74 { i8 9, i32 1451000 }, %struct.anon.74 { i8 10, i32 1531000 }, %struct.anon.74 { i8 11, i32 1631000 }, %struct.anon.74 { i8 12, i32 1741000 }, %struct.anon.74 { i8 13, i32 1891000 }, %struct.anon.74 { i8 14, i32 2071000 }, %struct.anon.74 { i8 15, i32 2250000 }], align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"\017ITD1000: VCO: %dkHz: %d -> ADCOUT: %d %02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\017ITD1000: symbol_rate = %d\0A\00", align 1
@itd1000_lpf_pga = internal unnamed_addr constant [15 x %struct.anon.75] [%struct.anon.75 { i32 0, i8 56 }, %struct.anon.75 { i32 5200000, i8 56 }, %struct.anon.75 { i32 12200000, i8 52 }, %struct.anon.75 { i32 15400000, i8 50 }, %struct.anon.75 { i32 19800000, i8 50 }, %struct.anon.75 { i32 21500000, i8 50 }, %struct.anon.75 { i32 24500000, i8 50 }, %struct.anon.75 { i32 28400000, i8 50 }, %struct.anon.75 { i32 33400000, i8 50 }, %struct.anon.75 { i32 34400000, i8 65 }, %struct.anon.75 { i32 34400000, i8 65 }, %struct.anon.75 { i32 38400000, i8 65 }, %struct.anon.75 { i32 38400000, i8 65 }, %struct.anon.75 { i32 40400000, i8 65 }, %struct.anon.75 { i32 45400000, i8 65 }], align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"\017ITD1000: symrate: index: %d pgaext: %x, bbgvmin: %x\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_itd1000_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @itd1000_attach(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 268) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  store ptr %2, ptr %5, align 8
  %8 = getelementptr inbounds %struct.itd1000_state, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = tail call fastcc i32 @itd1000_read_reg(ptr noundef nonnull %5, i8 noundef zeroext 0)
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %27

13:                                               ; preds = %7
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 0) #11
  %15 = getelementptr inbounds %struct.itd1000_state, ptr %5, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %15, i8 -1, i32 256, i1 false)
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ 101, %13 ], [ %22, %16 ]
  %18 = trunc i32 %17 to i8
  %19 = tail call fastcc i32 @itd1000_read_reg(ptr noundef nonnull %5, i8 noundef zeroext %18)
  %20 = trunc i32 %19 to i8
  %21 = getelementptr %struct.itd1000_state, ptr %5, i32 0, i32 3, i32 %17
  store i8 %20, ptr %21, align 1
  %22 = add nuw nsw i32 %17, 1
  %23 = icmp eq i32 %22, 156
  br i1 %23, label %24, label %16

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %25, ptr noundef nonnull align 4 dereferenceable(220) @itd1000_tuner_ops, i32 220, i1 false)
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %5, ptr %26, align 4
  br label %27

27:                                               ; preds = %24, %12, %3
  %28 = phi ptr [ null, %12 ], [ %0, %24 ], [ null, %3 ]
  ret ptr %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @itd1000_read_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [64 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  store i8 %1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false), !annotation !8
  %9 = load ptr, ptr %0, align 4
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  store i16 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %16 = load i8, ptr %9, align 1
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %20, align 4
  %21 = add i8 %1, -1
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.itd1000_state, ptr %0, i32 0, i32 3, i32 %22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %24 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %24, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %25 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %25, align 4, !annotation !8
  %26 = load i8, ptr %9, align 1
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %4, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %29, align 4
  store i8 %21, ptr %3, align 1
  %30 = getelementptr inbounds [64 x i8], ptr %3, i32 0, i32 1
  %31 = load i8, ptr %23, align 1
  store i8 %31, ptr %30, align 1
  %32 = getelementptr inbounds %struct.itd1000_state, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %4, i32 noundef 1) #10
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %38

38:                                               ; preds = %36, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  %39 = load ptr, ptr %32, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %7, i32 noundef 2) #10
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %47

44:                                               ; preds = %38
  %45 = load i8, ptr %6, align 1
  %46 = zext i8 %45 to i32
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ -121, %42 ], [ %46, %44 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @itd1000_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @itd1000_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %4, i32 2
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %12 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.itd1000_state, ptr %7, i32 0, i32 1
  br label %26

14:                                               ; preds = %40
  %15 = getelementptr inbounds i8, ptr %2, i32 2
  %16 = getelementptr inbounds i8, ptr %3, i32 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %19 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %15, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %16, align 4, !annotation !8
  %20 = load ptr, ptr %7, align 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %3, align 4
  store i16 0, ptr %17, align 2
  store ptr %2, ptr %18, align 4
  store i8 112, ptr %2, align 1
  store i8 -118, ptr %19, align 1
  %23 = load ptr, ptr %13, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %3, i32 noundef 1) #10
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %47, label %45

26:                                               ; preds = %40, %1
  %27 = phi i32 [ 0, %1 ], [ %43, %40 ]
  %28 = getelementptr [28 x [2 x i8]], ptr @itd1000_init_tab, i32 0, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr [28 x [2 x i8]], ptr @itd1000_init_tab, i32 0, i32 %27, i32 1
  %31 = load i8, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %8, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  store i32 2, ptr %9, align 4, !annotation !8
  %32 = load ptr, ptr %7, align 4
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %5, align 4
  store i16 0, ptr %10, align 2
  store ptr %4, ptr %11, align 4
  store i8 %29, ptr %4, align 1
  store i8 %31, ptr %12, align 1
  %35 = load ptr, ptr %13, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %5, i32 noundef 1) #10
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %40

40:                                               ; preds = %38, %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  %41 = zext i8 %29 to i32
  %42 = getelementptr %struct.itd1000_state, ptr %7, i32 0, i32 3, i32 %41
  store i8 %31, ptr %42, align 1
  %43 = add nuw nsw i32 %27, 1
  %44 = icmp eq i32 %43, 28
  br i1 %44, label %14, label %26

45:                                               ; preds = %14
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %47

47:                                               ; preds = %45, %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  %48 = getelementptr %struct.itd1000_state, ptr %7, i32 0, i32 3, i32 112
  store i8 -118, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %15, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %16, align 4, !annotation !8
  %49 = load ptr, ptr %7, align 4
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %3, align 4
  store i16 0, ptr %17, align 2
  store ptr %2, ptr %18, align 4
  store i8 113, ptr %2, align 1
  store i8 -121, ptr %19, align 1
  %52 = load ptr, ptr %13, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %3, i32 noundef 1) #10
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %57

57:                                               ; preds = %55, %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  %58 = getelementptr %struct.itd1000_state, ptr %7, i32 0, i32 3, i32 113
  store i8 -121, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %15, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %16, align 4, !annotation !8
  %59 = load ptr, ptr %7, align 4
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %3, align 4
  store i16 0, ptr %17, align 2
  store ptr %2, ptr %18, align 4
  store i8 120, ptr %2, align 1
  store i8 3, ptr %19, align 1
  %62 = load ptr, ptr %13, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %3, i32 noundef 1) #10
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %67, label %65

65:                                               ; preds = %57
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %67

67:                                               ; preds = %65, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  %68 = getelementptr %struct.itd1000_state, ptr %7, i32 0, i32 3, i32 120
  store i8 3, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %15, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %16, align 4, !annotation !8
  %69 = load ptr, ptr %7, align 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %3, align 4
  store i16 0, ptr %17, align 2
  store ptr %2, ptr %18, align 4
  store i8 125, ptr %2, align 1
  store i8 3, ptr %19, align 1
  %72 = load ptr, ptr %13, align 4
  %73 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %3, i32 noundef 1) #10
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %77, label %75

75:                                               ; preds = %67
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %77

77:                                               ; preds = %75, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  %78 = getelementptr %struct.itd1000_state, ptr %7, i32 0, i32 3, i32 125
  store i8 3, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %15, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %16, align 4, !annotation !8
  %79 = load ptr, ptr %7, align 4
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %3, align 4
  store i16 0, ptr %17, align 2
  store ptr %2, ptr %18, align 4
  store i8 -121, ptr %2, align 1
  store i8 46, ptr %19, align 1
  %82 = load ptr, ptr %13, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %3, i32 noundef 1) #10
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %87, label %85

85:                                               ; preds = %77
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %87

87:                                               ; preds = %85, %77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  %88 = getelementptr %struct.itd1000_state, ptr %7, i32 0, i32 3, i32 135
  store i8 46, ptr %88, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @itd1000_sleep(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @itd1000_set_parameters(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [64 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [64 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [64 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [64 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [64 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [64 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [64 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [64 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [64 x i8], align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [64 x i8], align 1
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [64 x i8], align 1
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [64 x i8], align 1
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [64 x i8], align 1
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [64 x i8], align 1
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [64 x i8], align 1
  %37 = alloca %struct.i2c_msg, align 4
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %38, align 4
  %42 = mul i32 %41, 1000
  %43 = lshr i32 %42, 5
  %44 = urem i32 %43, 1000000
  %45 = zext i32 %44 to i64
  %46 = udiv i32 %42, 32000000
  %47 = shl nuw nsw i64 %45, 20
  %48 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %47) #12, !srcloc !9
  %49 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %47, i64 %48, i32 0) #12, !srcloc !10
  %50 = extractvalue { i64, i32 } %49, 0
  %51 = lshr i64 %50, 18
  %52 = trunc i64 %51 to i32
  %53 = mul nuw nsw i32 %46, 1000
  %54 = mul i32 %52, 1000
  %55 = lshr i32 %54, 20
  %56 = add nuw nsw i32 %55, %53
  %57 = shl nuw nsw i32 %56, 5
  %58 = getelementptr inbounds %struct.itd1000_state, ptr %40, i32 0, i32 2
  store i32 %57, ptr %58, align 4
  %59 = load i32, ptr @debug, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %1
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %41, i32 noundef %57, i32 noundef %52, i32 noundef %46) #11
  br label %63

63:                                               ; preds = %61, %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %36) #10
  %64 = getelementptr inbounds i8, ptr %36, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %64, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %65 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 2, ptr %65, align 4, !annotation !8
  %66 = load ptr, ptr %40, align 4
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %37, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %70, align 4
  store i8 104, ptr %36, align 1
  %71 = getelementptr inbounds [64 x i8], ptr %36, i32 0, i32 1
  store i8 -128, ptr %71, align 1
  %72 = getelementptr inbounds %struct.itd1000_state, ptr %40, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %37, i32 noundef 1) #10
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %78, label %76

76:                                               ; preds = %63
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %78

78:                                               ; preds = %76, %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %36) #10
  %79 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 104
  store i8 -128, ptr %79, align 1
  %80 = trunc i32 %46 to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %34) #10
  %81 = getelementptr inbounds i8, ptr %34, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %81, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %82 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 2, ptr %82, align 4, !annotation !8
  %83 = load ptr, ptr %40, align 4
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i16
  store i16 %85, ptr %35, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %86, align 2
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %87, align 4
  store i8 105, ptr %34, align 1
  %88 = getelementptr inbounds [64 x i8], ptr %34, i32 0, i32 1
  store i8 %80, ptr %88, align 1
  %89 = load ptr, ptr %72, align 4
  %90 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %35, i32 noundef 1) #10
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %94, label %92

92:                                               ; preds = %78
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %94

94:                                               ; preds = %92, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %34) #10
  %95 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 105
  store i8 %80, ptr %95, align 1
  %96 = call fastcc i32 @itd1000_read_reg(ptr noundef %40, i8 noundef zeroext 106) #10
  %97 = and i32 %96, 240
  %98 = lshr i32 %52, 16
  %99 = and i32 %98, 15
  %100 = or i32 %97, %99
  %101 = trunc i32 %100 to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %32) #10
  %102 = getelementptr inbounds i8, ptr %32, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %102, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %103 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 2, ptr %103, align 4, !annotation !8
  %104 = load ptr, ptr %40, align 4
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %33, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %108, align 4
  store i8 106, ptr %32, align 1
  %109 = getelementptr inbounds [64 x i8], ptr %32, i32 0, i32 1
  store i8 %101, ptr %109, align 1
  %110 = load ptr, ptr %72, align 4
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %33, i32 noundef 1) #10
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %115, label %113

113:                                              ; preds = %94
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %115

115:                                              ; preds = %113, %94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %32) #10
  %116 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 106
  store i8 %101, ptr %116, align 1
  %117 = lshr i64 %50, 26
  %118 = trunc i64 %117 to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %30) #10
  %119 = getelementptr inbounds i8, ptr %30, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %119, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %120 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 2, ptr %120, align 4, !annotation !8
  %121 = load ptr, ptr %40, align 4
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i16
  store i16 %123, ptr %31, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %124, align 2
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %125, align 4
  store i8 107, ptr %30, align 1
  %126 = getelementptr inbounds [64 x i8], ptr %30, i32 0, i32 1
  store i8 %118, ptr %126, align 1
  %127 = load ptr, ptr %72, align 4
  %128 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %31, i32 noundef 1) #10
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %132, label %130

130:                                              ; preds = %115
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %132

132:                                              ; preds = %130, %115
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %30) #10
  %133 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 107
  store i8 %118, ptr %133, align 1
  %134 = trunc i64 %51 to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #10
  %135 = getelementptr inbounds i8, ptr %28, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %135, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %136 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %136, align 4, !annotation !8
  %137 = load ptr, ptr %40, align 4
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %29, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %140, align 2
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %141, align 4
  store i8 108, ptr %28, align 1
  %142 = getelementptr inbounds [64 x i8], ptr %28, i32 0, i32 1
  store i8 %134, ptr %142, align 1
  %143 = load ptr, ptr %72, align 4
  %144 = call i32 @i2c_transfer(ptr noundef %143, ptr noundef nonnull %29, i32 noundef 1) #10
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %148, label %146

146:                                              ; preds = %132
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %148

148:                                              ; preds = %146, %132
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #10
  %149 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 108
  store i8 %134, ptr %149, align 1
  %150 = icmp ugt i32 %41, 1075000
  br i1 %150, label %199, label %151

151:                                              ; preds = %215, %213, %211, %209, %207, %205, %203, %201, %199, %148
  %152 = phi i32 [ 0, %148 ], [ 1, %199 ], [ 2, %201 ], [ 3, %203 ], [ 4, %205 ], [ 5, %207 ], [ 6, %209 ], [ 7, %211 ], [ 8, %213 ], [ 9, %215 ]
  %153 = load i32, ptr @debug, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %152) #11
  br label %157

157:                                              ; preds = %155, %151
  %158 = getelementptr [10 x %struct.anon.73], ptr @itd1000_fre_values, i32 0, i32 %152, i32 1
  %159 = load i8, ptr %158, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #10
  %160 = getelementptr inbounds i8, ptr %26, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %160, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %161 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %161, align 4, !annotation !8
  %162 = load ptr, ptr %40, align 4
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i16
  store i16 %164, ptr %27, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %165, align 2
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %166, align 4
  store i8 124, ptr %26, align 1
  %167 = getelementptr inbounds [64 x i8], ptr %26, i32 0, i32 1
  store i8 %159, ptr %167, align 1
  %168 = load ptr, ptr %72, align 4
  %169 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %27, i32 noundef 1) #10
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %173, label %171

171:                                              ; preds = %157
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %173

173:                                              ; preds = %171, %157
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #10
  %174 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 124
  store i8 %159, ptr %174, align 1
  %175 = getelementptr inbounds i8, ptr %24, i32 2
  %176 = getelementptr inbounds i8, ptr %25, i32 4
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  %179 = getelementptr inbounds [64 x i8], ptr %24, i32 0, i32 1
  br label %180

180:                                              ; preds = %195, %173
  %181 = phi i32 [ 0, %173 ], [ %184, %195 ]
  %182 = trunc i32 %181 to i8
  %183 = add i8 %182, -117
  %184 = add nuw nsw i32 %181, 1
  %185 = getelementptr [10 x %struct.anon.73], ptr @itd1000_fre_values, i32 0, i32 %152, i32 1, i32 %184
  %186 = load i8, ptr %185, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %24) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %175, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  store i32 2, ptr %176, align 4, !annotation !8
  %187 = load ptr, ptr %40, align 4
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i16
  store i16 %189, ptr %25, align 4
  store i16 0, ptr %177, align 2
  store ptr %24, ptr %178, align 4
  store i8 %183, ptr %24, align 1
  store i8 %186, ptr %179, align 1
  %190 = load ptr, ptr %72, align 4
  %191 = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %25, i32 noundef 1) #10
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %195, label %193

193:                                              ; preds = %180
  %194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %195

195:                                              ; preds = %193, %180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %24) #10
  %196 = zext i8 %183 to i32
  %197 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 %196
  store i8 %186, ptr %197, align 1
  %198 = icmp eq i32 %184, 9
  br i1 %198, label %217, label %180

199:                                              ; preds = %148
  %200 = icmp ugt i32 %41, 1250000
  br i1 %200, label %201, label %151

201:                                              ; preds = %199
  %202 = icmp ugt i32 %41, 1450000
  br i1 %202, label %203, label %151

203:                                              ; preds = %201
  %204 = icmp ugt i32 %41, 1650000
  br i1 %204, label %205, label %151

205:                                              ; preds = %203
  %206 = icmp ugt i32 %41, 1750000
  br i1 %206, label %207, label %151

207:                                              ; preds = %205
  %208 = icmp ugt i32 %41, 1850000
  br i1 %208, label %209, label %151

209:                                              ; preds = %207
  %210 = icmp ugt i32 %41, 1900000
  br i1 %210, label %211, label %151

211:                                              ; preds = %209
  %212 = icmp ugt i32 %41, 1950000
  br i1 %212, label %213, label %151

213:                                              ; preds = %211
  %214 = icmp ugt i32 %41, 2050000
  br i1 %214, label %215, label %151

215:                                              ; preds = %213
  %216 = icmp ugt i32 %41, 2150000
  br i1 %216, label %217, label %151

217:                                              ; preds = %215, %195
  %218 = call fastcc i32 @itd1000_read_reg(ptr noundef %40, i8 noundef zeroext 120) #10
  %219 = call fastcc i32 @itd1000_read_reg(ptr noundef %40, i8 noundef zeroext 112) #10
  %220 = and i32 %219, 15
  %221 = trunc i32 %218 to i8
  %222 = or i8 %221, 64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #10
  %223 = getelementptr inbounds i8, ptr %22, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %223, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %224 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %224, align 4, !annotation !8
  %225 = load ptr, ptr %40, align 4
  %226 = load i8, ptr %225, align 1
  %227 = zext i8 %226 to i16
  store i16 %227, ptr %23, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %228, align 2
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %229, align 4
  store i8 120, ptr %22, align 1
  %230 = getelementptr inbounds [64 x i8], ptr %22, i32 0, i32 1
  store i8 %222, ptr %230, align 1
  %231 = load ptr, ptr %72, align 4
  %232 = call i32 @i2c_transfer(ptr noundef %231, ptr noundef nonnull %23, i32 noundef 1) #10
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %236, label %234

234:                                              ; preds = %217
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %236

236:                                              ; preds = %234, %217
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #10
  %237 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 120
  store i8 %222, ptr %237, align 1
  %238 = icmp ult i32 %41, 920000
  br i1 %238, label %265, label %239

239:                                              ; preds = %236
  %240 = icmp ult i32 %41, 971000
  br i1 %240, label %265, label %241

241:                                              ; preds = %239
  %242 = icmp ult i32 %41, 1031000
  br i1 %242, label %265, label %243

243:                                              ; preds = %241
  %244 = icmp ult i32 %41, 1091000
  br i1 %244, label %265, label %245

245:                                              ; preds = %243
  %246 = icmp ult i32 %41, 1171000
  br i1 %246, label %265, label %247

247:                                              ; preds = %245
  %248 = icmp ult i32 %41, 1281000
  br i1 %248, label %265, label %249

249:                                              ; preds = %247
  %250 = icmp ult i32 %41, 1381000
  br i1 %250, label %265, label %251

251:                                              ; preds = %249
  %252 = icmp ult i32 %41, 1451000
  br i1 %252, label %265, label %253

253:                                              ; preds = %251
  %254 = icmp ult i32 %41, 1531000
  br i1 %254, label %265, label %255

255:                                              ; preds = %253
  %256 = icmp ult i32 %41, 1631000
  br i1 %256, label %265, label %257

257:                                              ; preds = %255
  %258 = icmp ult i32 %41, 1741000
  br i1 %258, label %265, label %259

259:                                              ; preds = %257
  %260 = icmp ult i32 %41, 1891000
  br i1 %260, label %265, label %261

261:                                              ; preds = %259
  %262 = icmp ult i32 %41, 2071000
  br i1 %262, label %265, label %263

263:                                              ; preds = %261
  %264 = icmp ult i32 %41, 2250000
  br i1 %264, label %265, label %340

265:                                              ; preds = %263, %261, %259, %257, %255, %253, %251, %249, %247, %245, %243, %241, %239, %236
  %266 = phi i32 [ 0, %236 ], [ 1, %239 ], [ 2, %241 ], [ 3, %243 ], [ 4, %245 ], [ 5, %247 ], [ 6, %249 ], [ 8, %251 ], [ 9, %253 ], [ 10, %255 ], [ 11, %257 ], [ 12, %259 ], [ 13, %261 ], [ 14, %263 ]
  %267 = getelementptr [15 x %struct.anon.74], ptr @itd1000_vcorg, i32 0, i32 %266
  %268 = load i8, ptr %267, align 4
  %269 = zext i8 %268 to i32
  %270 = shl nuw nsw i32 %269, 4
  %271 = or i32 %270, %220
  %272 = trunc i32 %271 to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #10
  %273 = getelementptr inbounds i8, ptr %20, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %273, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %274 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %274, align 4, !annotation !8
  %275 = load ptr, ptr %40, align 4
  %276 = load i8, ptr %275, align 1
  %277 = zext i8 %276 to i16
  store i16 %277, ptr %21, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %278, align 2
  %279 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %279, align 4
  store i8 112, ptr %20, align 1
  %280 = getelementptr inbounds [64 x i8], ptr %20, i32 0, i32 1
  store i8 %272, ptr %280, align 1
  %281 = load ptr, ptr %72, align 4
  %282 = call i32 @i2c_transfer(ptr noundef %281, ptr noundef nonnull %21, i32 noundef 1) #10
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %286, label %284

284:                                              ; preds = %265
  %285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %286

286:                                              ; preds = %284, %265
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #10
  %287 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 112
  store i8 %272, ptr %287, align 1
  call void @msleep(i32 noundef 1) #10
  %288 = call fastcc i32 @itd1000_read_reg(ptr noundef %40, i8 noundef zeroext 110) #10
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 15
  %291 = load i32, ptr @debug, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %286
  %294 = zext i8 %290 to i32
  %295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %41, i32 noundef %269, i32 noundef %294, i32 noundef %220) #11
  br label %296

296:                                              ; preds = %293, %286
  %297 = icmp ugt i8 %290, 13
  br i1 %297, label %298, label %317

298:                                              ; preds = %296
  switch i8 %268, label %299 [
    i8 7, label %340
    i8 15, label %340
  ]

299:                                              ; preds = %298
  %300 = add nuw nsw i32 %270, 16
  %301 = or i32 %300, %220
  %302 = trunc i32 %301 to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #10
  %303 = getelementptr inbounds i8, ptr %18, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %303, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %304 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %304, align 4, !annotation !8
  %305 = load ptr, ptr %40, align 4
  %306 = load i8, ptr %305, align 1
  %307 = zext i8 %306 to i16
  store i16 %307, ptr %19, align 4
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %308, align 2
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %309, align 4
  store i8 112, ptr %18, align 1
  %310 = getelementptr inbounds [64 x i8], ptr %18, i32 0, i32 1
  store i8 %302, ptr %310, align 1
  %311 = load ptr, ptr %72, align 4
  %312 = call i32 @i2c_transfer(ptr noundef %311, ptr noundef nonnull %19, i32 noundef 1) #10
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %316, label %314

314:                                              ; preds = %299
  %315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %316

316:                                              ; preds = %314, %299
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #10
  br label %338

317:                                              ; preds = %296
  %318 = icmp ult i8 %290, 2
  br i1 %318, label %319, label %340

319:                                              ; preds = %317
  switch i8 %268, label %320 [
    i8 1, label %340
    i8 9, label %340
  ]

320:                                              ; preds = %319
  %321 = add nuw nsw i32 %270, 240
  %322 = or i32 %321, %220
  %323 = trunc i32 %322 to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #10
  %324 = getelementptr inbounds i8, ptr %16, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %324, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %325 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %325, align 4, !annotation !8
  %326 = load ptr, ptr %40, align 4
  %327 = load i8, ptr %326, align 1
  %328 = zext i8 %327 to i16
  store i16 %328, ptr %17, align 4
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %329, align 2
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %330, align 4
  store i8 112, ptr %16, align 1
  %331 = getelementptr inbounds [64 x i8], ptr %16, i32 0, i32 1
  store i8 %323, ptr %331, align 1
  %332 = load ptr, ptr %72, align 4
  %333 = call i32 @i2c_transfer(ptr noundef %332, ptr noundef nonnull %17, i32 noundef 1) #10
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %337, label %335

335:                                              ; preds = %320
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %337

337:                                              ; preds = %335, %320
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #10
  br label %338

338:                                              ; preds = %337, %316
  %339 = phi i8 [ %302, %316 ], [ %323, %337 ]
  store i8 %339, ptr %287, align 1
  br label %340

340:                                              ; preds = %338, %319, %319, %317, %298, %298, %263
  %341 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %342 = load i32, ptr %341, align 4
  %343 = call fastcc i32 @itd1000_read_reg(ptr noundef %40, i8 noundef zeroext -121) #10
  %344 = call fastcc i32 @itd1000_read_reg(ptr noundef %40, i8 noundef zeroext 106) #10
  %345 = call fastcc i32 @itd1000_read_reg(ptr noundef %40, i8 noundef zeroext 125) #10
  %346 = call fastcc i32 @itd1000_read_reg(ptr noundef %40, i8 noundef zeroext 113) #10
  %347 = and i32 %346, 240
  %348 = load i32, ptr @debug, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %340
  %351 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %342) #11
  br label %352

352:                                              ; preds = %350, %340
  %353 = trunc i32 %343 to i8
  %354 = or i8 %353, 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #10
  %355 = getelementptr inbounds i8, ptr %14, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %355, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %356 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %356, align 4, !annotation !8
  %357 = load ptr, ptr %40, align 4
  %358 = load i8, ptr %357, align 1
  %359 = zext i8 %358 to i16
  store i16 %359, ptr %15, align 4
  %360 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %360, align 2
  %361 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %361, align 4
  store i8 -121, ptr %14, align 1
  %362 = getelementptr inbounds [64 x i8], ptr %14, i32 0, i32 1
  store i8 %354, ptr %362, align 1
  %363 = load ptr, ptr %72, align 4
  %364 = call i32 @i2c_transfer(ptr noundef %363, ptr noundef nonnull %15, i32 noundef 1) #10
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %368, label %366

366:                                              ; preds = %352
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %368

368:                                              ; preds = %366, %352
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #10
  %369 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 135
  store i8 %354, ptr %369, align 1
  %370 = icmp ult i32 %342, 5200000
  br i1 %370, label %393, label %371

371:                                              ; preds = %368
  %372 = icmp ult i32 %342, 12200000
  br i1 %372, label %393, label %373

373:                                              ; preds = %371
  %374 = icmp ult i32 %342, 15400000
  br i1 %374, label %393, label %375

375:                                              ; preds = %373
  %376 = icmp ult i32 %342, 19800000
  br i1 %376, label %393, label %377

377:                                              ; preds = %375
  %378 = icmp ult i32 %342, 21500000
  br i1 %378, label %393, label %379

379:                                              ; preds = %377
  %380 = icmp ult i32 %342, 24500000
  br i1 %380, label %393, label %381

381:                                              ; preds = %379
  %382 = icmp ult i32 %342, 28400000
  br i1 %382, label %393, label %383

383:                                              ; preds = %381
  %384 = icmp ult i32 %342, 33400000
  br i1 %384, label %393, label %385

385:                                              ; preds = %383
  %386 = icmp ult i32 %342, 34400000
  br i1 %386, label %393, label %387

387:                                              ; preds = %385
  %388 = icmp ult i32 %342, 38400000
  br i1 %388, label %393, label %389

389:                                              ; preds = %387
  %390 = icmp ult i32 %342, 40400000
  br i1 %390, label %393, label %391

391:                                              ; preds = %389
  %392 = icmp ult i32 %342, 45400000
  br i1 %392, label %393, label %460

393:                                              ; preds = %391, %389, %387, %385, %383, %381, %379, %377, %375, %373, %371, %368
  %394 = phi i32 [ 1, %368 ], [ 2, %371 ], [ 3, %373 ], [ 4, %375 ], [ 5, %377 ], [ 6, %379 ], [ 7, %381 ], [ 8, %383 ], [ 9, %385 ], [ 11, %387 ], [ 13, %389 ], [ 14, %391 ]
  %395 = load i32, ptr @debug, align 4
  %396 = icmp eq i32 %395, 0
  %397 = getelementptr [15 x %struct.anon.75], ptr @itd1000_lpf_pga, i32 0, i32 %394, i32 1
  %398 = load i8, ptr %397, align 4
  br i1 %396, label %405, label %399

399:                                              ; preds = %393
  %400 = and i8 %398, 15
  %401 = zext i8 %400 to i32
  %402 = lshr i8 %398, 4
  %403 = zext i8 %402 to i32
  %404 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %394, i32 noundef %401, i32 noundef %403) #11
  br label %405

405:                                              ; preds = %399, %393
  %406 = shl i8 %398, 4
  %407 = trunc i32 %344 to i8
  %408 = and i8 %407, 15
  %409 = or i8 %406, %408
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #10
  %410 = getelementptr inbounds i8, ptr %12, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %410, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %411 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %411, align 4, !annotation !8
  %412 = load ptr, ptr %40, align 4
  %413 = load i8, ptr %412, align 1
  %414 = zext i8 %413 to i16
  store i16 %414, ptr %13, align 4
  %415 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %415, align 2
  %416 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %416, align 4
  store i8 106, ptr %12, align 1
  %417 = getelementptr inbounds [64 x i8], ptr %12, i32 0, i32 1
  store i8 %409, ptr %417, align 1
  %418 = load ptr, ptr %72, align 4
  %419 = call i32 @i2c_transfer(ptr noundef %418, ptr noundef nonnull %13, i32 noundef 1) #10
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %423, label %421

421:                                              ; preds = %405
  %422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %423

423:                                              ; preds = %421, %405
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #10
  store i8 %409, ptr %116, align 1
  %424 = lshr i8 %398, 4
  %425 = trunc i32 %345 to i8
  %426 = and i8 %425, -16
  %427 = or i8 %424, %426
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10
  %428 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %428, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %429 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %429, align 4, !annotation !8
  %430 = load ptr, ptr %40, align 4
  %431 = load i8, ptr %430, align 1
  %432 = zext i8 %431 to i16
  store i16 %432, ptr %11, align 4
  %433 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %433, align 2
  %434 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %434, align 4
  store i8 125, ptr %10, align 1
  %435 = getelementptr inbounds [64 x i8], ptr %10, i32 0, i32 1
  store i8 %427, ptr %435, align 1
  %436 = load ptr, ptr %72, align 4
  %437 = call i32 @i2c_transfer(ptr noundef %436, ptr noundef nonnull %11, i32 noundef 1) #10
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %441, label %439

439:                                              ; preds = %423
  %440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %441

441:                                              ; preds = %439, %423
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10
  %442 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 125
  store i8 %427, ptr %442, align 1
  %443 = or i32 %394, %347
  %444 = trunc i32 %443 to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  %445 = getelementptr inbounds i8, ptr %8, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %445, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %446 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %446, align 4, !annotation !8
  %447 = load ptr, ptr %40, align 4
  %448 = load i8, ptr %447, align 1
  %449 = zext i8 %448 to i16
  store i16 %449, ptr %9, align 4
  %450 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %450, align 2
  %451 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %451, align 4
  store i8 113, ptr %8, align 1
  %452 = getelementptr inbounds [64 x i8], ptr %8, i32 0, i32 1
  store i8 %444, ptr %452, align 1
  %453 = load ptr, ptr %72, align 4
  %454 = call i32 @i2c_transfer(ptr noundef %453, ptr noundef nonnull %9, i32 noundef 1) #10
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %458, label %456

456:                                              ; preds = %441
  %457 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %458

458:                                              ; preds = %456, %441
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  %459 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 113
  store i8 %444, ptr %459, align 1
  br label %460

460:                                              ; preds = %458, %391
  %461 = and i8 %353, -3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  %462 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %462, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %463 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %463, align 4, !annotation !8
  %464 = load ptr, ptr %40, align 4
  %465 = load i8, ptr %464, align 1
  %466 = zext i8 %465 to i16
  store i16 %466, ptr %7, align 4
  %467 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %467, align 2
  %468 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %468, align 4
  store i8 -121, ptr %6, align 1
  %469 = getelementptr inbounds [64 x i8], ptr %6, i32 0, i32 1
  store i8 %461, ptr %469, align 1
  %470 = load ptr, ptr %72, align 4
  %471 = call i32 @i2c_transfer(ptr noundef %470, ptr noundef nonnull %7, i32 noundef 1) #10
  %472 = icmp eq i32 %471, 1
  br i1 %472, label %475, label %473

473:                                              ; preds = %460
  %474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %475

475:                                              ; preds = %473, %460
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  store i8 %461, ptr %369, align 1
  %476 = call fastcc i32 @itd1000_read_reg(ptr noundef %40, i8 noundef zeroext 103)
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 127
  %479 = or i8 %477, -128
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %480 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %480, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %481 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %481, align 4, !annotation !8
  %482 = load ptr, ptr %40, align 4
  %483 = load i8, ptr %482, align 1
  %484 = zext i8 %483 to i16
  store i16 %484, ptr %5, align 4
  %485 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %485, align 2
  %486 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %486, align 4
  store i8 103, ptr %4, align 1
  %487 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 %479, ptr %487, align 1
  %488 = load ptr, ptr %72, align 4
  %489 = call i32 @i2c_transfer(ptr noundef %488, ptr noundef nonnull %5, i32 noundef 1) #10
  %490 = icmp eq i32 %489, 1
  br i1 %490, label %493, label %491

491:                                              ; preds = %475
  %492 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %493

493:                                              ; preds = %491, %475
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  %494 = getelementptr %struct.itd1000_state, ptr %40, i32 0, i32 3, i32 103
  store i8 %479, ptr %494, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  %495 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %495, i8 0, i32 62, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %496 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %496, align 4, !annotation !8
  %497 = load ptr, ptr %40, align 4
  %498 = load i8, ptr %497, align 1
  %499 = zext i8 %498 to i16
  store i16 %499, ptr %3, align 4
  %500 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %500, align 2
  %501 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %501, align 4
  store i8 103, ptr %2, align 1
  %502 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  store i8 %478, ptr %502, align 1
  %503 = load ptr, ptr %72, align 4
  %504 = call i32 @i2c_transfer(ptr noundef %503, ptr noundef nonnull %3, i32 noundef 1) #10
  %505 = icmp eq i32 %504, 1
  br i1 %505, label %508, label %506

506:                                              ; preds = %493
  %507 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %508

508:                                              ; preds = %506, %493
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  store i8 %478, ptr %494, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @itd1000_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.itd1000_state, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @itd1000_get_bandwidth(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #7 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 413296, i64 413323}
!10 = !{i64 413991, i64 414018, i64 414051, i64 414072, i64 414099, i64 414125}
