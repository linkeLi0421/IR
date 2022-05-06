; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cx24113.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24113.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24113_agc_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24113_agc_callback\22\09\09\09\09\09"
module asm "__kstrtabns_cx24113_agc_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24113_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24113_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24113_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.cx24113_state = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16, i8, i32, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx24113_config = type { i8, i32 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\017CX24113: %s: \00", align 1
@__func__.cx24113_agc_callback = private unnamed_addr constant [21 x i8] c"cx24113_agc_callback\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"signal strength: %d\0A\00", align 1
@cx24113_agc_table = internal unnamed_addr constant [2 x [10 x i8]] [[10 x i8] c"\CA\D7\DD\E2\E7\EB\F0\F6\FA\FE", [10 x i8] c"\D9\DD\E2\E7\ED\F1\F5\FB\01\09"], align 1
@__kstrtab_cx24113_agc_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24113_agc_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24113_agc_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24113_agc_callback to i32), ptr @__kstrtab_cx24113_agc_callback, ptr @__kstrtabns_cx24113_agc_callback }, section "___ksymtab+cx24113_agc_callback", align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\016CX24113: trying to detect myself\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\016CX24113: CX24113 not found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\016CX24113: detected CX24113 variant\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\016CX24113: successfully detected\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\013CX24113: unsupported device id: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\016CX24113: version: %x\0A\00", align 1
@cx24113_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Conexant CX24113\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 0, i32 0 }, ptr @cx24113_release, ptr @cx24113_init, ptr null, ptr null, ptr null, ptr @cx24113_set_params, ptr null, ptr null, ptr @cx24113_get_frequency, ptr null, ptr null, ptr @cx24113_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_cx24113_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24113_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24113_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24113_attach to i32), ptr @__kstrtab_cx24113_attach, ptr @__kstrtabns_cx24113_attach }, section "___ksymtab+cx24113_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [52 x i8] c"parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [42 x i8] c"author=Patrick Boettcher <pb@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [69 x i8] c"description=DVB Frontend module for Conexant CX24113/CX24128hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__func__.cx24113_set_gain_settings = private unnamed_addr constant [26 x i8] c"cx24113_set_gain_settings\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"power estimation: %d, thres: %d, gain_level: %d/%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"\017%s: writereg error(err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.cx24113_writereg = private unnamed_addr constant [17 x i8] c"cx24113_writereg\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"\017%s: reg=0x%x (error=%d)\0A\00", align 1
@__func__.cx24113_readreg = private unnamed_addr constant [16 x i8] c"cx24113_readreg\00", align 1
@__func__.cx24113_release = private unnamed_addr constant [16 x i8] c"cx24113_release\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.cx24113_set_bandwidth = private unnamed_addr constant [22 x i8] c"cx24113_set_bandwidth\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"bandwidth to be set: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"bandwidth: %d %d\0A\00", align 1
@__func__.cx24113_set_frequency = private unnamed_addr constant [22 x i8] c"cx24113_set_frequency\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"tuning to frequency: %d\0A\00", align 1
@__func__.cx24113_calc_pll_nf = private unnamed_addr constant [20 x i8] c"cx24113_calc_pll_nf\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"calculating N/F for %dHz with vcodiv %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\013CX24113: strange frequency: N < 6\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"1 N: %d, F: %lld, R: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"2 N: %d, F: %lld, R: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"3 N: %d, F: %lld, R: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"4 N: %d, F: %lld, R: %d\0A\00", align 1
@__func__.cx24113_get_status = private unnamed_addr constant [19 x i8] c"cx24113_get_status\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"PLL locked: %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_cx24113_agc_callback, ptr @__ksymtab_cx24113_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cx24113_agc_callback(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i16 0, ptr %2, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %83, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cx24113_state, ptr %4, i32 0, i32 16
  br label %10

10:                                               ; preds = %81, %8
  %11 = phi ptr [ %82, %81 ], [ %6, %8 ]
  %12 = call i32 %11(ptr noundef %0, ptr noundef nonnull %2) #9
  %13 = load i16, ptr %2, align 2
  %14 = ashr i16 %13, 8
  store i16 %14, ptr %2, align 2
  %15 = load i32, ptr @debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_agc_callback) #10
  %19 = load i16, ptr %2, align 2
  %20 = sext i16 %19 to i32
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %20) #10
  %22 = load i16, ptr %2, align 2
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i16 [ %22, %17 ], [ %14, %10 ]
  %25 = load i8, ptr %9, align 2
  %26 = zext i8 %25 to i32
  %27 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 0
  %28 = load i8, ptr %27, align 1
  %29 = sext i8 %28 to i16
  %30 = icmp slt i16 %24, %29
  br i1 %30, label %77, label %31

31:                                               ; preds = %23
  %32 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i16
  %35 = icmp slt i16 %24, %34
  br i1 %35, label %77, label %36

36:                                               ; preds = %31
  %37 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i16
  %40 = icmp slt i16 %24, %39
  br i1 %40, label %77, label %41

41:                                               ; preds = %36
  %42 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i16
  %45 = icmp slt i16 %24, %44
  br i1 %45, label %77, label %46

46:                                               ; preds = %41
  %47 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 4
  %48 = load i8, ptr %47, align 1
  %49 = sext i8 %48 to i16
  %50 = icmp slt i16 %24, %49
  br i1 %50, label %77, label %51

51:                                               ; preds = %46
  %52 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 5
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i16
  %55 = icmp slt i16 %24, %54
  br i1 %55, label %77, label %56

56:                                               ; preds = %51
  %57 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 6
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i16
  %60 = icmp slt i16 %24, %59
  br i1 %60, label %77, label %61

61:                                               ; preds = %56
  %62 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 7
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i16
  %65 = icmp slt i16 %24, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 8
  %68 = load i8, ptr %67, align 1
  %69 = sext i8 %68 to i16
  %70 = icmp slt i16 %24, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %26, i32 9
  %73 = load i8, ptr %72, align 1
  %74 = sext i8 %73 to i16
  %75 = icmp slt i16 %24, %74
  %76 = select i1 %75, i16 -70, i16 -75
  br label %77

77:                                               ; preds = %71, %66, %61, %56, %51, %46, %41, %36, %31, %23
  %78 = phi i16 [ -25, %23 ], [ -30, %31 ], [ -35, %36 ], [ -40, %41 ], [ -45, %46 ], [ -50, %51 ], [ -55, %56 ], [ -60, %61 ], [ -65, %66 ], [ %76, %71 ]
  store i16 %78, ptr %2, align 2
  %79 = call fastcc i32 @cx24113_set_gain_settings(ptr noundef %4, i16 noundef signext %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %5, align 4
  br label %10

83:                                               ; preds = %77, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cx24113_set_gain_settings(ptr nocapture noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15)
  store i8 29, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 0, ptr %16, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #9
  %18 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %18, i8 0, i32 16, i1 false) #9, !annotation !8
  %19 = getelementptr inbounds %struct.cx24113_state, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %17, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %23, align 2
  store i16 1, ptr %18, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %26 = load i8, ptr %20, align 4
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %30, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %17, i32 noundef 2) #9
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i8, ptr %15, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %36, i32 noundef %32) #10
  br label %41

38:                                               ; preds = %2
  %39 = load i8, ptr %16, align 1
  %40 = zext i8 %39 to i32
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %32, %34 ], [ %40, %38 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12)
  store i8 31, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 0, ptr %13, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %43 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %43, i8 0, i32 16, i1 false) #9, !annotation !8
  %44 = load ptr, ptr %19, align 4
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %14, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %47, align 2
  store i16 1, ptr %43, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %50 = load i8, ptr %44, align 4
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %54, align 4
  %55 = load ptr, ptr %0, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %14, i32 noundef 2) #9
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %62, label %58

58:                                               ; preds = %41
  %59 = load i8, ptr %12, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %60, i32 noundef %56) #10
  br label %65

62:                                               ; preds = %41
  %63 = load i8, ptr %13, align 1
  %64 = zext i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i32 [ %56, %58 ], [ %64, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12)
  %67 = and i32 %66, 37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 32, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %68 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %68, i8 0, i32 16, i1 false) #9, !annotation !8
  %69 = load ptr, ptr %19, align 4
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %11, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %72, align 2
  store i16 1, ptr %68, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %73, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %75 = load i8, ptr %69, align 4
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %74, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %77, align 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %78, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %79, align 4
  %80 = load ptr, ptr %0, align 4
  %81 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %11, i32 noundef 2) #9
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %87, label %83

83:                                               ; preds = %65
  %84 = load i8, ptr %9, align 1
  %85 = zext i8 %84 to i32
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %85, i32 noundef %81) #10
  br label %90

87:                                               ; preds = %65
  %88 = load i8, ptr %10, align 1
  %89 = zext i8 %88 to i32
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i32 [ %81, %83 ], [ %89, %87 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, -13
  %94 = getelementptr inbounds %struct.cx24113_state, ptr %0, i32 0, i32 15
  %95 = load i16, ptr %94, align 4
  %96 = icmp sle i16 %95, %1
  %97 = zext i1 %96 to i8
  %98 = load i32, ptr @debug, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = sext i16 %1 to i32
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_set_gain_settings) #10
  %103 = load i16, ptr %94, align 4
  %104 = sext i16 %103 to i32
  %105 = getelementptr inbounds %struct.cx24113_state, ptr %0, i32 0, i32 16
  %106 = load i8, ptr %105, align 2
  %107 = zext i8 %106 to i32
  %108 = zext i1 %96 to i32
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %101, i32 noundef %104, i32 noundef %107, i32 noundef %108) #10
  br label %110

110:                                              ; preds = %100, %90
  %111 = getelementptr inbounds %struct.cx24113_state, ptr %0, i32 0, i32 16
  %112 = load i8, ptr %111, align 2
  %113 = icmp eq i8 %112, %97
  br i1 %113, label %163, label %114

114:                                              ; preds = %110
  %115 = or i8 %93, 8
  %116 = or i32 %67, 26
  %117 = select i1 %96, i32 63, i32 %116
  %118 = select i1 %96, i8 %93, i8 %115
  store i8 %97, ptr %111, align 2
  %119 = and i32 %42, 240
  %120 = or i32 %119, 15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 29, ptr %7, align 2
  %121 = getelementptr inbounds i8, ptr %7, i32 1
  %122 = trunc i32 %120 to i8
  store i8 %122, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %123 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %123, align 4, !annotation !8
  %124 = load ptr, ptr %19, align 4
  %125 = load i8, ptr %124, align 4
  %126 = zext i8 %125 to i16
  store i16 %126, ptr %8, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %127, align 2
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %128, align 4
  %129 = load ptr, ptr %0, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %8, i32 noundef 1) #9
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %134, label %132

132:                                              ; preds = %114
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %130, i32 noundef 29, i32 noundef %120) #10
  br label %134

134:                                              ; preds = %132, %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 31, ptr %5, align 2
  %135 = getelementptr inbounds i8, ptr %5, i32 1
  %136 = trunc i32 %117 to i8
  store i8 %136, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %137 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %137, align 4, !annotation !8
  %138 = load ptr, ptr %19, align 4
  %139 = load i8, ptr %138, align 4
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %6, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %141, align 2
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %142, align 4
  %143 = load ptr, ptr %0, align 4
  %144 = call i32 @i2c_transfer(ptr noundef %143, ptr noundef nonnull %6, i32 noundef 1) #9
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %148, label %146

146:                                              ; preds = %134
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %144, i32 noundef 31, i32 noundef %117) #10
  br label %148

148:                                              ; preds = %146, %134
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 32, ptr %3, align 2
  %149 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %118, ptr %149, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %150 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %150, align 4, !annotation !8
  %151 = load ptr, ptr %19, align 4
  %152 = load i8, ptr %151, align 4
  %153 = zext i8 %152 to i16
  store i16 %153, ptr %4, align 4
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %154, align 2
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %155, align 4
  %156 = load ptr, ptr %0, align 4
  %157 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %4, i32 noundef 1) #9
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %162, label %159

159:                                              ; preds = %148
  %160 = zext i8 %118 to i32
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %157, i32 noundef 32, i32 noundef %160) #10
  br label %162

162:                                              ; preds = %159, %148
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %163

163:                                              ; preds = %162, %110
  %164 = phi i32 [ 1, %162 ], [ 0, %110 ]
  ret i32 %164
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cx24113_attach(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 36) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %94, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.cx24113_state, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  store ptr %2, ptr %14, align 8
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10)
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 0, ptr %11, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  %19 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #9, !annotation !8
  %20 = load i8, ptr %1, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %12, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %19, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  store i16 %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %27, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %12, i32 noundef 2) #9
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %34, label %30

30:                                               ; preds = %16
  %31 = load i8, ptr %10, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %32, i32 noundef %28) #10
  br label %34

34:                                               ; preds = %30, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  %35 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %35, i8 0, i32 16, i1 false) #9, !annotation !8
  %36 = load i8, ptr %1, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %9, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %38, align 2
  store i16 1, ptr %35, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %37, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %43, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %9, i32 noundef 2) #9
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i8, ptr %8, align 1
  %48 = zext i8 %47 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  br label %56

49:                                               ; preds = %34
  %50 = load i8, ptr %7, align 1
  %51 = zext i8 %50 to i32
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %51, i32 noundef %44) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %53 = icmp slt i32 %44, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %93

56:                                               ; preds = %49, %46
  %57 = phi i32 [ %48, %46 ], [ %44, %49 ]
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds %struct.cx24113_state, ptr %14, i32 0, i32 2
  store i8 %58, ptr %59, align 8
  switch i32 %57, label %61 [
    i32 67, label %64
    i32 35, label %60
  ]

60:                                               ; preds = %56
  br label %64

61:                                               ; preds = %56
  %62 = and i32 %57, 255
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %62) #10
  br label %93

64:                                               ; preds = %60, %56
  %65 = phi ptr [ @.str.5, %60 ], [ @.str.4, %56 ]
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %65) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %67 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %67, i8 0, i32 16, i1 false) #9, !annotation !8
  %68 = load i8, ptr %1, align 4
  %69 = zext i8 %68 to i16
  store i16 %69, ptr %6, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %70, align 2
  store i16 1, ptr %67, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %71, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %69, ptr %72, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %75, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 2) #9
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %82, label %78

78:                                               ; preds = %64
  %79 = load i8, ptr %4, align 1
  %80 = zext i8 %79 to i32
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %80, i32 noundef %76) #10
  br label %85

82:                                               ; preds = %64
  %83 = load i8, ptr %5, align 1
  %84 = zext i8 %83 to i32
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i32 [ %76, %78 ], [ %84, %82 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds %struct.cx24113_state, ptr %14, i32 0, i32 3
  store i8 %87, ptr %88, align 1
  %89 = and i32 %86, 255
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %89) #10
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %91, ptr noundef nonnull align 4 dereferenceable(220) @cx24113_tuner_ops, i32 220, i1 false)
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %14, ptr %92, align 4
  br label %94

93:                                               ; preds = %61, %54
  call void @kfree(ptr noundef nonnull %14) #9
  br label %94

94:                                               ; preds = %93, %85, %3
  %95 = phi ptr [ null, %93 ], [ %0, %85 ], [ null, %3 ]
  ret ptr %95
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cx24113_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_release) #10
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %9

9:                                                ; preds = %6, %1
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24113_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca [2 x %struct.i2c_msg], align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca [2 x %struct.i2c_msg], align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca [2 x %struct.i2c_msg], align 4
  %36 = alloca [2 x i8], align 2
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca i8, align 1
  %39 = alloca i8, align 1
  %40 = alloca [2 x %struct.i2c_msg], align 4
  %41 = alloca [2 x i8], align 2
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca i8, align 1
  %44 = alloca i8, align 1
  %45 = alloca [2 x %struct.i2c_msg], align 4
  %46 = alloca [2 x i8], align 2
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [2 x i8], align 2
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca i8, align 1
  %51 = alloca i8, align 1
  %52 = alloca [2 x %struct.i2c_msg], align 4
  %53 = alloca [2 x i8], align 2
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca i8, align 1
  %56 = alloca i8, align 1
  %57 = alloca [2 x %struct.i2c_msg], align 4
  %58 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 15
  store i16 -50, ptr %60, align 4
  %61 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 16
  store i8 -1, ptr %61, align 2
  %62 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 4
  %63 = load i8, ptr %62, align 2
  %64 = and i8 %63, -2
  store i8 %64, ptr %62, align 2
  %65 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.cx24113_config, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i32 %68, 11000
  %70 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 5
  %71 = load i8, ptr %70, align 1
  %72 = or i8 %71, 15
  store i8 %72, ptr %70, align 1
  %73 = and i8 %63, -128
  %74 = select i1 %69, i8 80, i8 72
  %75 = or i8 %73, %74
  %76 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 6
  store i8 2, ptr %76, align 4
  store i8 %75, ptr %62, align 2
  %77 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 7
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 8
  store i8 16, ptr %79, align 2
  %80 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 10
  %81 = load i8, ptr %80, align 4
  %82 = and i8 %81, -16
  %83 = or i8 %82, 8
  store i8 %83, ptr %80, align 4
  %84 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 11
  %85 = load i16, ptr %84, align 2
  %86 = and i16 %85, -8192
  %87 = or i16 %86, 4095
  store i16 %87, ptr %84, align 2
  %88 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 12
  store i16 4095, ptr %88, align 4
  %89 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 13
  %90 = load i8, ptr %89, align 2
  %91 = and i8 %90, -2
  store i8 %91, ptr %89, align 2
  %92 = and i8 %78, -64
  %93 = or i8 %92, 6
  store i8 %93, ptr %77, align 1
  %94 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 14
  store i8 1, ptr %94, align 1
  %95 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 19
  store i8 1, ptr %95, align 1
  tail call fastcc void @cx24113_set_Fref(ptr noundef %59, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %55) #9
  store i8 33, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %56) #9
  store i8 0, ptr %56, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %57) #9
  %96 = getelementptr inbounds i8, ptr %57, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %96, i8 0, i32 16, i1 false) #9, !annotation !8
  %97 = load ptr, ptr %65, align 4
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %57, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %100, align 2
  store i16 1, ptr %96, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %55, ptr %101, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 1
  %103 = load i8, ptr %97, align 4
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %102, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 1, i32 1
  store i16 1, ptr %105, align 2
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 1, i32 2
  store i16 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 1, i32 3
  store ptr %56, ptr %107, align 4
  %108 = load ptr, ptr %59, align 4
  %109 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %57, i32 noundef 2) #9
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %115, label %111

111:                                              ; preds = %1
  %112 = load i8, ptr %55, align 1
  %113 = zext i8 %112 to i32
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %113, i32 noundef %109) #10
  br label %118

115:                                              ; preds = %1
  %116 = load i8, ptr %56, align 1
  %117 = zext i8 %116 to i32
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi i32 [ %109, %111 ], [ %117, %115 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %57) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %56) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %55) #9
  %120 = and i32 %119, 192
  %121 = or i32 %120, 61
  %122 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 2
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, 35
  %125 = or i32 %119, 63
  %126 = select i1 %124, i32 %125, i32 %121
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #9
  store i8 33, ptr %53, align 2
  %127 = getelementptr inbounds i8, ptr %53, i32 1
  %128 = trunc i32 %126 to i8
  store i8 %128, ptr %127, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #9
  %129 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 2, ptr %129, align 4, !annotation !8
  %130 = load ptr, ptr %65, align 4
  %131 = load i8, ptr %130, align 4
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %54, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %134, align 4
  %135 = load ptr, ptr %59, align 4
  %136 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %54, i32 noundef 1) #9
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %141, label %138

138:                                              ; preds = %118
  %139 = and i32 %126, 255
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %136, i32 noundef 33, i32 noundef %139) #10
  br label %141

141:                                              ; preds = %138, %118
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %50) #9
  store i8 16, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %51) #9
  store i8 0, ptr %51, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %52) #9
  %142 = getelementptr inbounds i8, ptr %52, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %142, i8 0, i32 16, i1 false) #9, !annotation !8
  %143 = load ptr, ptr %65, align 4
  %144 = load i8, ptr %143, align 4
  %145 = zext i8 %144 to i16
  store i16 %145, ptr %52, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %146, align 2
  store i16 1, ptr %142, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %50, ptr %147, align 4
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 1
  %149 = load i8, ptr %143, align 4
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %148, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 1, i32 1
  store i16 1, ptr %151, align 2
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 1, i32 2
  store i16 1, ptr %152, align 4
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 1, i32 3
  store ptr %51, ptr %153, align 4
  %154 = load ptr, ptr %59, align 4
  %155 = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %52, i32 noundef 2) #9
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %161, label %157

157:                                              ; preds = %141
  %158 = load i8, ptr %50, align 1
  %159 = zext i8 %158 to i32
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %159, i32 noundef %155) #10
  br label %164

161:                                              ; preds = %141
  %162 = load i8, ptr %51, align 1
  %163 = zext i8 %162 to i32
  br label %164

164:                                              ; preds = %161, %157
  %165 = phi i32 [ %155, %157 ], [ %163, %161 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %52) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %51) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %50) #9
  %166 = load i8, ptr %62, align 2
  %167 = and i8 %166, 1
  %168 = trunc i32 %165 to i8
  %169 = and i8 %168, -126
  %170 = or i8 %167, %169
  %171 = shl i8 %166, 3
  %172 = and i8 %171, 48
  %173 = or i8 %170, %172
  %174 = load i8, ptr %76, align 4
  %175 = shl i8 %174, 2
  %176 = or i8 %173, %175
  %177 = load i8, ptr %89, align 2
  %178 = shl i8 %177, 5
  %179 = and i8 %178, 32
  %180 = or i8 %176, %179
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #9
  store i8 16, ptr %48, align 2
  %181 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 %180, ptr %181, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #9
  %182 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 0, ptr %182, align 4, !annotation !8
  %183 = load ptr, ptr %65, align 4
  %184 = load i8, ptr %183, align 4
  %185 = zext i8 %184 to i16
  store i16 %185, ptr %49, align 4
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %186, align 2
  store i16 2, ptr %182, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %187, align 4
  %188 = load ptr, ptr %59, align 4
  %189 = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %49, i32 noundef 1) #9
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %194, label %191

191:                                              ; preds = %164
  %192 = zext i8 %180 to i32
  %193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %189, i32 noundef 16, i32 noundef %192) #10
  br label %194

194:                                              ; preds = %191, %164
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #9
  %195 = load i8, ptr %62, align 2
  %196 = lshr i8 %195, 3
  %197 = and i8 %196, 15
  %198 = getelementptr inbounds %struct.cx24113_state, ptr %59, i32 0, i32 5
  %199 = load i8, ptr %198, align 1
  %200 = shl i8 %199, 4
  %201 = and i8 %200, 48
  %202 = or i8 %201, %197
  %203 = and i8 %200, -64
  %204 = or i8 %202, %203
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #9
  store i8 17, ptr %46, align 2
  %205 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 %204, ptr %205, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #9
  %206 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 0, ptr %206, align 4, !annotation !8
  %207 = load ptr, ptr %65, align 4
  %208 = load i8, ptr %207, align 4
  %209 = zext i8 %208 to i16
  store i16 %209, ptr %47, align 4
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %210, align 2
  store i16 2, ptr %206, align 4
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %211, align 4
  %212 = load ptr, ptr %59, align 4
  %213 = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %47, i32 noundef 1) #9
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %218, label %215

215:                                              ; preds = %194
  %216 = zext i8 %204 to i32
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %213, i32 noundef 17, i32 noundef %216) #10
  br label %218

218:                                              ; preds = %215, %194
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #9
  %219 = load i8, ptr %122, align 4
  %220 = icmp eq i8 %219, 35
  br i1 %220, label %221, label %268

221:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %43) #9
  store i8 32, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %44) #9
  store i8 0, ptr %44, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %45) #9
  %222 = getelementptr inbounds i8, ptr %45, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %222, i8 0, i32 16, i1 false) #9, !annotation !8
  %223 = load ptr, ptr %65, align 4
  %224 = load i8, ptr %223, align 4
  %225 = zext i8 %224 to i16
  store i16 %225, ptr %45, align 4
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %226, align 2
  store i16 1, ptr %222, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %43, ptr %227, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1
  %229 = load i8, ptr %223, align 4
  %230 = zext i8 %229 to i16
  store i16 %230, ptr %228, align 4
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 1
  store i16 1, ptr %231, align 2
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 2
  store i16 1, ptr %232, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 3
  store ptr %44, ptr %233, align 4
  %234 = load ptr, ptr %59, align 4
  %235 = call i32 @i2c_transfer(ptr noundef %234, ptr noundef nonnull %45, i32 noundef 2) #9
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %241, label %237

237:                                              ; preds = %221
  %238 = load i8, ptr %43, align 1
  %239 = zext i8 %238 to i32
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %239, i32 noundef %235) #10
  br label %244

241:                                              ; preds = %221
  %242 = load i8, ptr %44, align 1
  %243 = zext i8 %242 to i32
  br label %244

244:                                              ; preds = %241, %237
  %245 = phi i32 [ %235, %237 ], [ %243, %241 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %45) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %44) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %43) #9
  %246 = load i8, ptr %77, align 1
  %247 = and i8 %246, 3
  %248 = trunc i32 %245 to i8
  %249 = and i8 %248, -20
  %250 = or i8 %247, %249
  %251 = load i8, ptr %94, align 1
  %252 = shl i8 %251, 4
  %253 = or i8 %250, %252
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #9
  store i8 32, ptr %41, align 2
  %254 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 %253, ptr %254, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #9
  %255 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 2, ptr %255, align 4, !annotation !8
  %256 = load ptr, ptr %65, align 4
  %257 = load i8, ptr %256, align 4
  %258 = zext i8 %257 to i16
  store i16 %258, ptr %42, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %259, align 2
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %260, align 4
  %261 = load ptr, ptr %59, align 4
  %262 = call i32 @i2c_transfer(ptr noundef %261, ptr noundef nonnull %42, i32 noundef 1) #9
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %267, label %264

264:                                              ; preds = %244
  %265 = zext i8 %253 to i32
  %266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %262, i32 noundef 32, i32 noundef %265) #10
  br label %267

267:                                              ; preds = %264, %244
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #9
  br label %268

268:                                              ; preds = %267, %218
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %38) #9
  store i8 18, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %39) #9
  store i8 0, ptr %39, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %40) #9
  %269 = getelementptr inbounds i8, ptr %40, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %269, i8 0, i32 16, i1 false) #9, !annotation !8
  %270 = load ptr, ptr %65, align 4
  %271 = load i8, ptr %270, align 4
  %272 = zext i8 %271 to i16
  store i16 %272, ptr %40, align 4
  %273 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %273, align 2
  store i16 1, ptr %269, align 4
  %274 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %38, ptr %274, align 4
  %275 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1
  %276 = load i8, ptr %270, align 4
  %277 = zext i8 %276 to i16
  store i16 %277, ptr %275, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1, i32 1
  store i16 1, ptr %278, align 2
  %279 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1, i32 2
  store i16 1, ptr %279, align 4
  %280 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1, i32 3
  store ptr %39, ptr %280, align 4
  %281 = load ptr, ptr %59, align 4
  %282 = call i32 @i2c_transfer(ptr noundef %281, ptr noundef nonnull %40, i32 noundef 2) #9
  %283 = icmp eq i32 %282, 2
  br i1 %283, label %288, label %284

284:                                              ; preds = %268
  %285 = load i8, ptr %38, align 1
  %286 = zext i8 %285 to i32
  %287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %286, i32 noundef %282) #10
  br label %291

288:                                              ; preds = %268
  %289 = load i8, ptr %39, align 1
  %290 = zext i8 %289 to i32
  br label %291

291:                                              ; preds = %288, %284
  %292 = phi i32 [ %282, %284 ], [ %290, %288 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %40) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %39) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %38) #9
  %293 = load i8, ptr %77, align 1
  %294 = and i8 %293, 4
  %295 = trunc i32 %292 to i8
  %296 = and i8 %295, 3
  %297 = or i8 %296, %294
  %298 = load i8, ptr %80, align 4
  %299 = shl i8 %298, 4
  %300 = or i8 %297, %299
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #9
  store i8 18, ptr %36, align 2
  %301 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 %300, ptr %301, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #9
  %302 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 2, ptr %302, align 4, !annotation !8
  %303 = load ptr, ptr %65, align 4
  %304 = load i8, ptr %303, align 4
  %305 = zext i8 %304 to i16
  store i16 %305, ptr %37, align 4
  %306 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %306, align 2
  %307 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %307, align 4
  %308 = load ptr, ptr %59, align 4
  %309 = call i32 @i2c_transfer(ptr noundef %308, ptr noundef nonnull %37, i32 noundef 1) #9
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %314, label %311

311:                                              ; preds = %291
  %312 = zext i8 %300 to i32
  %313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %309, i32 noundef 18, i32 noundef %312) #10
  br label %314

314:                                              ; preds = %311, %291
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %33) #9
  store i8 24, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %34) #9
  store i8 0, ptr %34, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %35) #9
  %315 = getelementptr inbounds i8, ptr %35, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %315, i8 0, i32 16, i1 false) #9, !annotation !8
  %316 = load ptr, ptr %65, align 4
  %317 = load i8, ptr %316, align 4
  %318 = zext i8 %317 to i16
  store i16 %318, ptr %35, align 4
  %319 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %319, align 2
  store i16 1, ptr %315, align 4
  %320 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %33, ptr %320, align 4
  %321 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1
  %322 = load i8, ptr %316, align 4
  %323 = zext i8 %322 to i16
  store i16 %323, ptr %321, align 4
  %324 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 1
  store i16 1, ptr %324, align 2
  %325 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 2
  store i16 1, ptr %325, align 4
  %326 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 3
  store ptr %34, ptr %326, align 4
  %327 = load ptr, ptr %59, align 4
  %328 = call i32 @i2c_transfer(ptr noundef %327, ptr noundef nonnull %35, i32 noundef 2) #9
  %329 = icmp eq i32 %328, 2
  br i1 %329, label %334, label %330

330:                                              ; preds = %314
  %331 = load i8, ptr %33, align 1
  %332 = zext i8 %331 to i32
  %333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %332, i32 noundef %328) #10
  br label %337

334:                                              ; preds = %314
  %335 = load i8, ptr %34, align 1
  %336 = zext i8 %335 to i32
  br label %337

337:                                              ; preds = %334, %330
  %338 = phi i32 [ %328, %330 ], [ %336, %334 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %35) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #9
  %339 = load i8, ptr %77, align 1
  %340 = lshr i8 %339, 5
  %341 = and i8 %340, 1
  %342 = trunc i32 %338 to i8
  %343 = and i8 %342, 64
  %344 = or i8 %341, %343
  %345 = load i8, ptr %79, align 2
  %346 = icmp eq i8 %345, -128
  %347 = shl i8 %345, 1
  %348 = select i1 %346, i8 -128, i8 %347
  %349 = or i8 %344, %348
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #9
  store i8 24, ptr %31, align 2
  %350 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 %349, ptr %350, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #9
  %351 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 2, ptr %351, align 4, !annotation !8
  %352 = load ptr, ptr %65, align 4
  %353 = load i8, ptr %352, align 4
  %354 = zext i8 %353 to i16
  store i16 %354, ptr %32, align 4
  %355 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %355, align 2
  %356 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %356, align 4
  %357 = load ptr, ptr %59, align 4
  %358 = call i32 @i2c_transfer(ptr noundef %357, ptr noundef nonnull %32, i32 noundef 1) #9
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %363, label %360

360:                                              ; preds = %337
  %361 = zext i8 %349 to i32
  %362 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %358, i32 noundef 24, i32 noundef %361) #10
  br label %363

363:                                              ; preds = %360, %337
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #9
  store i8 20, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #9
  store i8 0, ptr %29, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #9
  %364 = getelementptr inbounds i8, ptr %30, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %364, i8 0, i32 16, i1 false) #9, !annotation !8
  %365 = load ptr, ptr %65, align 4
  %366 = load i8, ptr %365, align 4
  %367 = zext i8 %366 to i16
  store i16 %367, ptr %30, align 4
  %368 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %368, align 2
  store i16 1, ptr %364, align 4
  %369 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %28, ptr %369, align 4
  %370 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1
  %371 = load i8, ptr %365, align 4
  %372 = zext i8 %371 to i16
  store i16 %372, ptr %370, align 4
  %373 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 1
  store i16 1, ptr %373, align 2
  %374 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 2
  store i16 1, ptr %374, align 4
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 3
  store ptr %29, ptr %375, align 4
  %376 = load ptr, ptr %59, align 4
  %377 = call i32 @i2c_transfer(ptr noundef %376, ptr noundef nonnull %30, i32 noundef 2) #9
  %378 = icmp eq i32 %377, 2
  br i1 %378, label %383, label %379

379:                                              ; preds = %363
  %380 = load i8, ptr %28, align 1
  %381 = zext i8 %380 to i32
  %382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %381, i32 noundef %377) #10
  br label %386

383:                                              ; preds = %363
  %384 = load i8, ptr %29, align 1
  %385 = zext i8 %384 to i32
  br label %386

386:                                              ; preds = %383, %379
  %387 = phi i32 [ %377, %379 ], [ %385, %383 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #9
  %388 = and i32 %387, 32
  %389 = load i8, ptr %77, align 1
  %390 = shl i8 %389, 3
  %391 = and i8 %390, -64
  %392 = zext i8 %391 to i32
  %393 = load i16, ptr %84, align 2
  %394 = lshr i16 %393, 8
  %395 = and i16 %394, 31
  %396 = zext i16 %395 to i32
  %397 = or i32 %388, %392
  %398 = or i32 %397, %396
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #9
  store i8 20, ptr %26, align 2
  %399 = getelementptr inbounds i8, ptr %26, i32 1
  %400 = trunc i32 %398 to i8
  store i8 %400, ptr %399, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #9
  %401 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %401, align 4, !annotation !8
  %402 = load ptr, ptr %65, align 4
  %403 = load i8, ptr %402, align 4
  %404 = zext i8 %403 to i16
  store i16 %404, ptr %27, align 4
  %405 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %405, align 2
  %406 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %406, align 4
  %407 = load ptr, ptr %59, align 4
  %408 = call i32 @i2c_transfer(ptr noundef %407, ptr noundef nonnull %27, i32 noundef 1) #9
  %409 = icmp eq i32 %408, 1
  br i1 %409, label %412, label %410

410:                                              ; preds = %386
  %411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %408, i32 noundef 20, i32 noundef %398) #10
  br label %412

412:                                              ; preds = %410, %386
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #9
  %413 = load i16, ptr %84, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #9
  store i8 21, ptr %24, align 2
  %414 = getelementptr inbounds i8, ptr %24, i32 1
  %415 = trunc i16 %413 to i8
  store i8 %415, ptr %414, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  %416 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %416, align 4, !annotation !8
  %417 = load ptr, ptr %65, align 4
  %418 = load i8, ptr %417, align 4
  %419 = zext i8 %418 to i16
  store i16 %419, ptr %25, align 4
  %420 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %420, align 2
  %421 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %421, align 4
  %422 = load ptr, ptr %59, align 4
  %423 = call i32 @i2c_transfer(ptr noundef %422, ptr noundef nonnull %25, i32 noundef 1) #9
  %424 = icmp eq i32 %423, 1
  br i1 %424, label %429, label %425

425:                                              ; preds = %412
  %426 = and i16 %413, 255
  %427 = zext i16 %426 to i32
  %428 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %423, i32 noundef 21, i32 noundef %427) #10
  br label %429

429:                                              ; preds = %425, %412
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  %430 = load i16, ptr %88, align 4
  %431 = lshr i16 %430, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #9
  store i8 22, ptr %22, align 2
  %432 = getelementptr inbounds i8, ptr %22, i32 1
  %433 = trunc i16 %431 to i8
  store i8 %433, ptr %432, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %434 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %434, align 4, !annotation !8
  %435 = load ptr, ptr %65, align 4
  %436 = load i8, ptr %435, align 4
  %437 = zext i8 %436 to i16
  store i16 %437, ptr %23, align 4
  %438 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %438, align 2
  %439 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %439, align 4
  %440 = load ptr, ptr %59, align 4
  %441 = call i32 @i2c_transfer(ptr noundef %440, ptr noundef nonnull %23, i32 noundef 1) #9
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %447, label %443

443:                                              ; preds = %429
  %444 = and i16 %431, 255
  %445 = zext i16 %444 to i32
  %446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %441, i32 noundef 22, i32 noundef %445) #10
  br label %447

447:                                              ; preds = %443, %429
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #9
  store i8 23, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #9
  store i8 0, ptr %20, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #9
  %448 = getelementptr inbounds i8, ptr %21, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %448, i8 0, i32 16, i1 false) #9, !annotation !8
  %449 = load ptr, ptr %65, align 4
  %450 = load i8, ptr %449, align 4
  %451 = zext i8 %450 to i16
  store i16 %451, ptr %21, align 4
  %452 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %452, align 2
  store i16 1, ptr %448, align 4
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %19, ptr %453, align 4
  %454 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1
  %455 = load i8, ptr %449, align 4
  %456 = zext i8 %455 to i16
  store i16 %456, ptr %454, align 4
  %457 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 1
  store i16 1, ptr %457, align 2
  %458 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 2
  store i16 1, ptr %458, align 4
  %459 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 3
  store ptr %20, ptr %459, align 4
  %460 = load ptr, ptr %59, align 4
  %461 = call i32 @i2c_transfer(ptr noundef %460, ptr noundef nonnull %21, i32 noundef 2) #9
  %462 = icmp eq i32 %461, 2
  br i1 %462, label %467, label %463

463:                                              ; preds = %447
  %464 = load i8, ptr %19, align 1
  %465 = zext i8 %464 to i32
  %466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %465, i32 noundef %461) #10
  br label %470

467:                                              ; preds = %447
  %468 = load i8, ptr %20, align 1
  %469 = zext i8 %468 to i32
  br label %470

470:                                              ; preds = %467, %463
  %471 = phi i32 [ %461, %463 ], [ %469, %467 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #9
  %472 = and i32 %471, 15
  %473 = load i16, ptr %88, align 4
  %474 = shl i16 %473, 4
  %475 = and i16 %474, 240
  %476 = zext i16 %475 to i32
  %477 = or i32 %472, %476
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #9
  store i8 23, ptr %17, align 2
  %478 = getelementptr inbounds i8, ptr %17, i32 1
  %479 = trunc i32 %477 to i8
  store i8 %479, ptr %478, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #9
  %480 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %480, align 4, !annotation !8
  %481 = load ptr, ptr %65, align 4
  %482 = load i8, ptr %481, align 4
  %483 = zext i8 %482 to i16
  store i16 %483, ptr %18, align 4
  %484 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %484, align 2
  %485 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %485, align 4
  %486 = load ptr, ptr %59, align 4
  %487 = call i32 @i2c_transfer(ptr noundef %486, ptr noundef nonnull %18, i32 noundef 1) #9
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %491, label %489

489:                                              ; preds = %470
  %490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %487, i32 noundef 23, i32 noundef %477) #10
  br label %491

491:                                              ; preds = %489, %470
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #9
  %492 = call fastcc i32 @cx24113_set_gain_settings(ptr noundef %59, i16 noundef signext -30)
  call fastcc void @cx24113_set_bandwidth(ptr noundef %59, i32 noundef 18025)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #9
  store i8 16, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #9
  store i8 0, ptr %15, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #9
  %493 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %493, i8 0, i32 16, i1 false) #9, !annotation !8
  %494 = load ptr, ptr %65, align 4
  %495 = load i8, ptr %494, align 4
  %496 = zext i8 %495 to i16
  store i16 %496, ptr %16, align 4
  %497 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %497, align 2
  store i16 1, ptr %493, align 4
  %498 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %498, align 4
  %499 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  %500 = load i8, ptr %494, align 4
  %501 = zext i8 %500 to i16
  store i16 %501, ptr %499, align 4
  %502 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %502, align 2
  %503 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %503, align 4
  %504 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %504, align 4
  %505 = load ptr, ptr %59, align 4
  %506 = call i32 @i2c_transfer(ptr noundef %505, ptr noundef nonnull %16, i32 noundef 2) #9
  %507 = icmp eq i32 %506, 2
  br i1 %507, label %512, label %508

508:                                              ; preds = %491
  %509 = load i8, ptr %14, align 1
  %510 = zext i8 %509 to i32
  %511 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %510, i32 noundef %506) #10
  br label %515

512:                                              ; preds = %491
  %513 = load i8, ptr %15, align 1
  %514 = zext i8 %513 to i32
  br label %515

515:                                              ; preds = %512, %508
  %516 = phi i32 [ %506, %508 ], [ %514, %512 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #9
  %517 = and i32 %516, 127
  %518 = or i32 %517, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 16, ptr %12, align 2
  %519 = getelementptr inbounds i8, ptr %12, i32 1
  %520 = trunc i32 %518 to i8
  store i8 %520, ptr %519, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %521 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %521, align 4, !annotation !8
  %522 = load ptr, ptr %65, align 4
  %523 = load i8, ptr %522, align 4
  %524 = zext i8 %523 to i16
  store i16 %524, ptr %13, align 4
  %525 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %525, align 2
  %526 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %526, align 4
  %527 = load ptr, ptr %59, align 4
  %528 = call i32 @i2c_transfer(ptr noundef %527, ptr noundef nonnull %13, i32 noundef 1) #9
  %529 = icmp eq i32 %528, 1
  br i1 %529, label %532, label %530

530:                                              ; preds = %515
  %531 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %528, i32 noundef 16, i32 noundef %518) #10
  br label %532

532:                                              ; preds = %530, %515
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  %533 = load ptr, ptr %65, align 4
  %534 = getelementptr inbounds %struct.cx24113_config, ptr %533, i32 0, i32 1
  %535 = load i32, ptr %534, align 4
  %536 = icmp ugt i32 %535, 39999
  br i1 %536, label %537, label %579

537:                                              ; preds = %532
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 2, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %538 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %538, i8 0, i32 16, i1 false) #9, !annotation !8
  %539 = load ptr, ptr %65, align 4
  %540 = load i8, ptr %539, align 4
  %541 = zext i8 %540 to i16
  store i16 %541, ptr %11, align 4
  %542 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %542, align 2
  store i16 1, ptr %538, align 4
  %543 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %543, align 4
  %544 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %545 = load i8, ptr %539, align 4
  %546 = zext i8 %545 to i16
  store i16 %546, ptr %544, align 4
  %547 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %547, align 2
  %548 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %548, align 4
  %549 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %549, align 4
  %550 = load ptr, ptr %59, align 4
  %551 = call i32 @i2c_transfer(ptr noundef %550, ptr noundef nonnull %11, i32 noundef 2) #9
  %552 = icmp eq i32 %551, 2
  br i1 %552, label %557, label %553

553:                                              ; preds = %537
  %554 = load i8, ptr %9, align 1
  %555 = zext i8 %554 to i32
  %556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %555, i32 noundef %551) #10
  br label %560

557:                                              ; preds = %537
  %558 = load i8, ptr %10, align 1
  %559 = zext i8 %558 to i32
  br label %560

560:                                              ; preds = %557, %553
  %561 = phi i32 [ %551, %553 ], [ %559, %557 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %562 = and i32 %561, 251
  %563 = or i32 %562, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 2, ptr %7, align 2
  %564 = getelementptr inbounds i8, ptr %7, i32 1
  %565 = trunc i32 %563 to i8
  store i8 %565, ptr %564, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %566 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %566, align 4, !annotation !8
  %567 = load ptr, ptr %65, align 4
  %568 = load i8, ptr %567, align 4
  %569 = zext i8 %568 to i16
  store i16 %569, ptr %8, align 4
  %570 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %570, align 2
  %571 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %571, align 4
  %572 = load ptr, ptr %59, align 4
  %573 = call i32 @i2c_transfer(ptr noundef %572, ptr noundef nonnull %8, i32 noundef 1) #9
  %574 = icmp eq i32 %573, 1
  br i1 %574, label %577, label %575

575:                                              ; preds = %560
  %576 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %573, i32 noundef 2, i32 noundef %563) #10
  br label %577

577:                                              ; preds = %575, %560
  %578 = phi i32 [ %573, %575 ], [ 0, %560 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  br label %620

579:                                              ; preds = %532
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 2, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %580 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %580, i8 0, i32 16, i1 false) #9, !annotation !8
  %581 = load ptr, ptr %65, align 4
  %582 = load i8, ptr %581, align 4
  %583 = zext i8 %582 to i16
  store i16 %583, ptr %6, align 4
  %584 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %584, align 2
  store i16 1, ptr %580, align 4
  %585 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %585, align 4
  %586 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %587 = load i8, ptr %581, align 4
  %588 = zext i8 %587 to i16
  store i16 %588, ptr %586, align 4
  %589 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %589, align 2
  %590 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %590, align 4
  %591 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %591, align 4
  %592 = load ptr, ptr %59, align 4
  %593 = call i32 @i2c_transfer(ptr noundef %592, ptr noundef nonnull %6, i32 noundef 2) #9
  %594 = icmp eq i32 %593, 2
  br i1 %594, label %599, label %595

595:                                              ; preds = %579
  %596 = load i8, ptr %4, align 1
  %597 = zext i8 %596 to i32
  %598 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %597, i32 noundef %593) #10
  br label %602

599:                                              ; preds = %579
  %600 = load i8, ptr %5, align 1
  %601 = zext i8 %600 to i32
  br label %602

602:                                              ; preds = %599, %595
  %603 = phi i32 [ %593, %595 ], [ %601, %599 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %604 = and i32 %603, 251
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 2, ptr %2, align 2
  %605 = getelementptr inbounds i8, ptr %2, i32 1
  %606 = trunc i32 %604 to i8
  store i8 %606, ptr %605, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %607 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %607, align 4, !annotation !8
  %608 = load ptr, ptr %65, align 4
  %609 = load i8, ptr %608, align 4
  %610 = zext i8 %609 to i16
  store i16 %610, ptr %3, align 4
  %611 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %611, align 2
  %612 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %612, align 4
  %613 = load ptr, ptr %59, align 4
  %614 = call i32 @i2c_transfer(ptr noundef %613, ptr noundef nonnull %3, i32 noundef 1) #9
  %615 = icmp eq i32 %614, 1
  br i1 %615, label %618, label %616

616:                                              ; preds = %602
  %617 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %614, i32 noundef 2, i32 noundef %604) #10
  br label %618

618:                                              ; preds = %616, %602
  %619 = phi i32 [ %614, %616 ], [ 0, %602 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br label %620

620:                                              ; preds = %618, %577
  %621 = phi i32 [ %578, %577 ], [ %619, %618 ]
  ret i32 %621
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24113_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca [2 x %struct.i2c_msg], align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca [2 x %struct.i2c_msg], align 4
  %33 = alloca [2 x i8], align 2
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  %37 = alloca [2 x %struct.i2c_msg], align 4
  %38 = alloca i32, align 4
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #9
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = udiv i32 %43, 100
  %45 = mul i32 %44, 675
  %46 = udiv i32 %45, 1000
  %47 = add nuw nsw i32 %46, 100005
  %48 = udiv i32 %47, 10
  %49 = add nuw nsw i32 %48, 1000
  store i32 %49, ptr %38, align 4
  tail call fastcc void @cx24113_set_bandwidth(ptr noundef %41, i32 noundef %49)
  %50 = load i32, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #9
  store i8 20, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %36) #9
  store i8 0, ptr %36, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %37) #9
  %51 = getelementptr inbounds i8, ptr %37, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %51, i8 0, i32 16, i1 false) #9, !annotation !8
  %52 = getelementptr inbounds %struct.cx24113_state, ptr %41, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %37, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %56, align 2
  store i16 1, ptr %51, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %35, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1
  %59 = load i8, ptr %53, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %58, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1, i32 1
  store i16 1, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1, i32 2
  store i16 1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1, i32 3
  store ptr %36, ptr %63, align 4
  %64 = load ptr, ptr %41, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %37, i32 noundef 2) #9
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %71, label %67

67:                                               ; preds = %1
  %68 = load i8, ptr %35, align 1
  %69 = zext i8 %68 to i32
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %69, i32 noundef %65) #10
  br label %74

71:                                               ; preds = %1
  %72 = load i8, ptr %36, align 1
  %73 = zext i8 %72 to i32
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i32 [ %65, %67 ], [ %73, %71 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %36) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #9
  %76 = and i32 %75, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #9
  store i8 20, ptr %33, align 2
  %77 = getelementptr inbounds i8, ptr %33, i32 1
  %78 = trunc i32 %76 to i8
  store i8 %78, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #9
  %79 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 0, ptr %79, align 4, !annotation !8
  %80 = load ptr, ptr %52, align 4
  %81 = load i8, ptr %80, align 4
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %34, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %83, align 2
  store i16 2, ptr %79, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %84, align 4
  %85 = load ptr, ptr %41, align 4
  %86 = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %34, i32 noundef 1) #9
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %90, label %88

88:                                               ; preds = %74
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %86, i32 noundef 20, i32 noundef %76) #10
  br label %90

90:                                               ; preds = %88, %74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %30) #9
  store i8 16, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %31) #9
  store i8 0, ptr %31, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #9
  %91 = getelementptr inbounds i8, ptr %32, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %91, i8 0, i32 16, i1 false) #9, !annotation !8
  %92 = load ptr, ptr %52, align 4
  %93 = load i8, ptr %92, align 4
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %32, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %95, align 2
  store i16 1, ptr %91, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %30, ptr %96, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1
  %98 = load i8, ptr %92, align 4
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %97, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 1
  store i16 1, ptr %100, align 2
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 2
  store i16 1, ptr %101, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 3
  store ptr %31, ptr %102, align 4
  %103 = load ptr, ptr %41, align 4
  %104 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %32, i32 noundef 2) #9
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %110, label %106

106:                                              ; preds = %90
  %107 = load i8, ptr %30, align 1
  %108 = zext i8 %107 to i32
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %108, i32 noundef %104) #10
  br label %113

110:                                              ; preds = %90
  %111 = load i8, ptr %31, align 1
  %112 = zext i8 %111 to i32
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i32 [ %104, %106 ], [ %112, %110 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %30) #9
  %115 = and i32 %114, 191
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #9
  store i8 16, ptr %28, align 2
  %116 = getelementptr inbounds i8, ptr %28, i32 1
  %117 = trunc i32 %115 to i8
  store i8 %117, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #9
  %118 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 0, ptr %118, align 4, !annotation !8
  %119 = load ptr, ptr %52, align 4
  %120 = load i8, ptr %119, align 4
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %29, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %122, align 2
  store i16 2, ptr %118, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %123, align 4
  %124 = load ptr, ptr %41, align 4
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %29, i32 noundef 1) #9
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %129, label %127

127:                                              ; preds = %113
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %125, i32 noundef 16, i32 noundef %115) #10
  br label %129

129:                                              ; preds = %127, %113
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #9
  %130 = getelementptr inbounds %struct.cx24113_state, ptr %41, i32 0, i32 17
  store i32 %50, ptr %130, align 4
  %131 = load i32, ptr @debug, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %129
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_set_frequency) #10
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %50) #10
  %136 = load i32, ptr %130, align 4
  %137 = load i32, ptr @debug, align 4
  br label %138

138:                                              ; preds = %133, %129
  %139 = phi i32 [ %137, %133 ], [ 0, %129 ]
  %140 = phi i32 [ %136, %133 ], [ %50, %129 ]
  %141 = mul i32 %140, 1000
  %142 = load ptr, ptr %52, align 4
  %143 = getelementptr inbounds %struct.cx24113_config, ptr %142, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = icmp ult i32 %144, 20000
  %146 = select i1 %145, i32 1, i32 2
  %147 = getelementptr inbounds %struct.cx24113_state, ptr %41, i32 0, i32 2
  %148 = load i8, ptr %147, align 4
  %149 = icmp eq i8 %148, 35
  %150 = icmp ugt i32 %140, 1099999
  %151 = select i1 %150, i8 2, i8 4
  %152 = icmp ugt i32 %140, 1164999
  %153 = select i1 %152, i8 2, i8 4
  %154 = select i1 %149, i8 %151, i8 %153
  %155 = getelementptr inbounds %struct.cx24113_state, ptr %41, i32 0, i32 9
  store i8 %154, ptr %155, align 1
  %156 = icmp eq i32 %139, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %138
  %158 = zext i8 %154 to i32
  br label %165

159:                                              ; preds = %138
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_calc_pll_nf) #10
  %161 = zext i8 %154 to i32
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %141, i32 noundef %161) #10
  %163 = load i8, ptr %147, align 4
  %164 = load ptr, ptr %52, align 4
  br label %165

165:                                              ; preds = %159, %157
  %166 = phi i32 [ %158, %157 ], [ %161, %159 ]
  %167 = phi ptr [ %142, %157 ], [ %164, %159 ]
  %168 = phi i8 [ %148, %157 ], [ %163, %159 ]
  %169 = icmp eq i8 %168, 67
  %170 = getelementptr inbounds %struct.cx24113_state, ptr %41, i32 0, i32 18
  %171 = sdiv i32 %141, 100
  %172 = getelementptr inbounds %struct.cx24113_config, ptr %167, i32 0, i32 1
  %173 = shl nuw nsw i32 %146, 1
  br label %174

174:                                              ; preds = %181, %165
  %175 = phi i8 [ 0, %165 ], [ %182, %181 ]
  %176 = add nuw nsw i8 %175, 1
  br i1 %169, label %177, label %181

177:                                              ; preds = %174
  %178 = load i8, ptr %155, align 1
  %179 = icmp eq i8 %178, 4
  %180 = select i1 %179, i8 2, i8 %176
  br label %181

181:                                              ; preds = %177, %174
  %182 = phi i8 [ %176, %174 ], [ %180, %177 ]
  store i8 %182, ptr %170, align 4
  %183 = zext i8 %182 to i32
  %184 = mul nuw nsw i32 %166, %183
  %185 = mul i32 %184, %171
  %186 = load i32, ptr %172, align 4
  %187 = mul i32 %173, %186
  %188 = udiv i32 %185, %187
  %189 = add i32 %188, 5
  %190 = icmp slt i32 %189, 380
  %191 = icmp ult i8 %182, 3
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %174, label %193

193:                                              ; preds = %181
  %194 = sdiv i32 %189, 10
  %195 = add nsw i32 %194, -32
  br i1 %190, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %305

198:                                              ; preds = %193
  %199 = sext i32 %141 to i64
  %200 = shl nuw nsw i32 %184, 18
  %201 = zext i32 %200 to i64
  %202 = mul nsw i64 %201, %199
  %203 = load i32, ptr @debug, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %198
  %206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_calc_pll_nf) #10
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %195, i64 noundef %202, i32 noundef %183) #10
  %208 = load ptr, ptr %52, align 4
  %209 = getelementptr inbounds %struct.cx24113_config, ptr %208, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  br label %211

211:                                              ; preds = %205, %198
  %212 = phi i32 [ %210, %205 ], [ %186, %198 ]
  %213 = mul nuw nsw i32 %146, 2000
  %214 = mul i32 %213, %212
  %215 = icmp ult i64 %202, 4294967296
  br i1 %215, label %216, label %220, !prof !9

216:                                              ; preds = %211
  %217 = trunc i64 %202 to i32
  %218 = udiv i32 %217, %214
  %219 = zext i32 %218 to i64
  br label %223

220:                                              ; preds = %211
  %221 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %214, i64 %202) #12, !srcloc !10
  %222 = extractvalue { i64, i64 } %221, 1
  br label %223

223:                                              ; preds = %220, %216
  %224 = phi i64 [ %219, %216 ], [ %222, %220 ]
  %225 = load i32, ptr @debug, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = shl i32 %194, 18
  %229 = sext i32 %228 to i64
  %230 = sub i64 %224, %229
  br label %242

231:                                              ; preds = %223
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_calc_pll_nf) #10
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %195, i64 noundef %224, i32 noundef %183) #10
  %234 = load i32, ptr @debug, align 4
  %235 = shl i32 %194, 18
  %236 = sext i32 %235 to i64
  %237 = sub i64 %224, %236
  %238 = icmp eq i32 %234, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %231
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_calc_pll_nf) #10
  %241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %195, i64 noundef %237, i32 noundef %183) #10
  br label %242

242:                                              ; preds = %239, %231, %227
  %243 = phi i64 [ %230, %227 ], [ %237, %239 ], [ %237, %231 ]
  %244 = getelementptr inbounds %struct.cx24113_state, ptr %41, i32 0, i32 19
  %245 = load i8, ptr %244, align 1
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %295, label %247

247:                                              ; preds = %242
  %248 = call i64 @llvm.smin.i64(i64 %243, i64 129434) #9
  %249 = call i64 @llvm.smax.i64(i64 %248, i64 -129434) #9
  %250 = add nsw i64 %249, -1
  %251 = icmp ult i64 %250, 3276
  %252 = icmp ugt i64 %249, -3277
  %253 = or i1 %252, %251
  br i1 %253, label %254, label %295

254:                                              ; preds = %247
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #9
  store i8 16, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #9
  store i8 0, ptr %26, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #9
  %255 = getelementptr inbounds i8, ptr %27, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %255, i8 0, i32 16, i1 false) #9, !annotation !8
  %256 = load ptr, ptr %52, align 4
  %257 = load i8, ptr %256, align 4
  %258 = zext i8 %257 to i16
  store i16 %258, ptr %27, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %259, align 2
  store i16 1, ptr %255, align 4
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %25, ptr %260, align 4
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1
  %262 = load i8, ptr %256, align 4
  %263 = zext i8 %262 to i16
  store i16 %263, ptr %261, align 4
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 1
  store i16 1, ptr %264, align 2
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 2
  store i16 1, ptr %265, align 4
  %266 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 3
  store ptr %26, ptr %266, align 4
  %267 = load ptr, ptr %41, align 4
  %268 = call i32 @i2c_transfer(ptr noundef %267, ptr noundef nonnull %27, i32 noundef 2) #9
  %269 = icmp eq i32 %268, 2
  br i1 %269, label %274, label %270

270:                                              ; preds = %254
  %271 = load i8, ptr %25, align 1
  %272 = zext i8 %271 to i32
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %272, i32 noundef %268) #10
  br label %277

274:                                              ; preds = %254
  %275 = load i8, ptr %26, align 1
  %276 = zext i8 %275 to i32
  br label %277

277:                                              ; preds = %274, %270
  %278 = phi i32 [ %268, %270 ], [ %276, %274 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #9
  %279 = and i32 %278, 191
  %280 = or i32 %279, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #9
  store i8 16, ptr %23, align 2
  %281 = getelementptr inbounds i8, ptr %23, i32 1
  %282 = trunc i32 %280 to i8
  store i8 %282, ptr %281, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #9
  %283 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 2, ptr %283, align 4, !annotation !8
  %284 = load ptr, ptr %52, align 4
  %285 = load i8, ptr %284, align 4
  %286 = zext i8 %285 to i16
  store i16 %286, ptr %24, align 4
  %287 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %287, align 2
  %288 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %288, align 4
  %289 = load ptr, ptr %41, align 4
  %290 = call i32 @i2c_transfer(ptr noundef %289, ptr noundef nonnull %24, i32 noundef 1) #9
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %294, label %292

292:                                              ; preds = %277
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %290, i32 noundef 16, i32 noundef %280) #10
  br label %294

294:                                              ; preds = %292, %277
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #9
  br label %295

295:                                              ; preds = %294, %247, %242
  %296 = phi i64 [ 0, %294 ], [ %243, %242 ], [ %249, %247 ]
  %297 = load i32, ptr @debug, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %295
  %300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_calc_pll_nf) #10
  %301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %195, i64 noundef %296, i32 noundef %183) #10
  br label %302

302:                                              ; preds = %299, %295
  %303 = trunc i64 %296 to i32
  %304 = and i32 %195, 65535
  br label %305

305:                                              ; preds = %302, %196
  %306 = phi i32 [ 6, %196 ], [ %304, %302 ]
  %307 = phi i32 [ 0, %196 ], [ %303, %302 ]
  %308 = load i8, ptr %170, align 4
  %309 = lshr i32 %306, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #9
  store i8 25, ptr %21, align 2
  %310 = getelementptr inbounds i8, ptr %21, i32 1
  %311 = trunc i32 %309 to i8
  store i8 %311, ptr %310, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #9
  %312 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %312, align 4, !annotation !8
  %313 = load ptr, ptr %52, align 4
  %314 = load i8, ptr %313, align 4
  %315 = zext i8 %314 to i16
  store i16 %315, ptr %22, align 4
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %316, align 2
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %317, align 4
  %318 = load ptr, ptr %41, align 4
  %319 = call i32 @i2c_transfer(ptr noundef %318, ptr noundef nonnull %22, i32 noundef 1) #9
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %324, label %321

321:                                              ; preds = %305
  %322 = and i32 %309, 255
  %323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %319, i32 noundef 25, i32 noundef %322) #10
  br label %324

324:                                              ; preds = %321, %305
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #9
  %325 = shl nuw nsw i32 %306, 7
  %326 = lshr i32 %307, 11
  %327 = and i32 %326, 127
  %328 = and i32 %325, 128
  %329 = or i32 %327, %328
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #9
  store i8 26, ptr %19, align 2
  %330 = getelementptr inbounds i8, ptr %19, i32 1
  %331 = trunc i32 %329 to i8
  store i8 %331, ptr %330, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #9
  %332 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 2, ptr %332, align 4, !annotation !8
  %333 = load ptr, ptr %52, align 4
  %334 = load i8, ptr %333, align 4
  %335 = zext i8 %334 to i16
  store i16 %335, ptr %20, align 4
  %336 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %336, align 2
  %337 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %337, align 4
  %338 = load ptr, ptr %41, align 4
  %339 = call i32 @i2c_transfer(ptr noundef %338, ptr noundef nonnull %20, i32 noundef 1) #9
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %343, label %341

341:                                              ; preds = %324
  %342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %339, i32 noundef 26, i32 noundef %329) #10
  br label %343

343:                                              ; preds = %341, %324
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #9
  %344 = lshr i32 %307, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #9
  store i8 27, ptr %17, align 2
  %345 = getelementptr inbounds i8, ptr %17, i32 1
  %346 = trunc i32 %344 to i8
  store i8 %346, ptr %345, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #9
  %347 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %347, align 4, !annotation !8
  %348 = load ptr, ptr %52, align 4
  %349 = load i8, ptr %348, align 4
  %350 = zext i8 %349 to i16
  store i16 %350, ptr %18, align 4
  %351 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %351, align 2
  %352 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %352, align 4
  %353 = load ptr, ptr %41, align 4
  %354 = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %18, i32 noundef 1) #9
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %359, label %356

356:                                              ; preds = %343
  %357 = and i32 %344, 255
  %358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %354, i32 noundef 27, i32 noundef %357) #10
  br label %359

359:                                              ; preds = %356, %343
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #9
  store i8 28, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #9
  store i8 0, ptr %15, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #9
  %360 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %360, i8 0, i32 16, i1 false) #9, !annotation !8
  %361 = load ptr, ptr %52, align 4
  %362 = load i8, ptr %361, align 4
  %363 = zext i8 %362 to i16
  store i16 %363, ptr %16, align 4
  %364 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %364, align 2
  store i16 1, ptr %360, align 4
  %365 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %365, align 4
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  %367 = load i8, ptr %361, align 4
  %368 = zext i8 %367 to i16
  store i16 %368, ptr %366, align 4
  %369 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %369, align 2
  %370 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %370, align 4
  %371 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %371, align 4
  %372 = load ptr, ptr %41, align 4
  %373 = call i32 @i2c_transfer(ptr noundef %372, ptr noundef nonnull %16, i32 noundef 2) #9
  %374 = icmp eq i32 %373, 2
  br i1 %374, label %379, label %375

375:                                              ; preds = %359
  %376 = load i8, ptr %14, align 1
  %377 = zext i8 %376 to i32
  %378 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %377, i32 noundef %373) #10
  br label %382

379:                                              ; preds = %359
  %380 = load i8, ptr %15, align 1
  %381 = zext i8 %380 to i32
  br label %382

382:                                              ; preds = %379, %375
  %383 = phi i32 [ %373, %375 ], [ %381, %379 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #9
  %384 = and i32 %383, 31
  %385 = shl i32 %307, 5
  %386 = and i32 %385, 224
  %387 = or i32 %384, %386
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 28, ptr %12, align 2
  %388 = getelementptr inbounds i8, ptr %12, i32 1
  %389 = trunc i32 %387 to i8
  store i8 %389, ptr %388, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %390 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %390, align 4, !annotation !8
  %391 = load ptr, ptr %52, align 4
  %392 = load i8, ptr %391, align 4
  %393 = zext i8 %392 to i16
  store i16 %393, ptr %13, align 4
  %394 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %394, align 2
  %395 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %395, align 4
  %396 = load ptr, ptr %41, align 4
  %397 = call i32 @i2c_transfer(ptr noundef %396, ptr noundef nonnull %13, i32 noundef 1) #9
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %401, label %399

399:                                              ; preds = %382
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %397, i32 noundef 28, i32 noundef %387) #10
  br label %401

401:                                              ; preds = %399, %382
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  %402 = add i8 %308, -1
  call fastcc void @cx24113_set_Fref(ptr noundef %41, i8 noundef zeroext %402) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 24, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %403 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %403, i8 0, i32 16, i1 false) #9, !annotation !8
  %404 = load ptr, ptr %52, align 4
  %405 = load i8, ptr %404, align 4
  %406 = zext i8 %405 to i16
  store i16 %406, ptr %11, align 4
  %407 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %407, align 2
  store i16 1, ptr %403, align 4
  %408 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %408, align 4
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %410 = load i8, ptr %404, align 4
  %411 = zext i8 %410 to i16
  store i16 %411, ptr %409, align 4
  %412 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %412, align 2
  %413 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %413, align 4
  %414 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %414, align 4
  %415 = load ptr, ptr %41, align 4
  %416 = call i32 @i2c_transfer(ptr noundef %415, ptr noundef nonnull %11, i32 noundef 2) #9
  %417 = icmp eq i32 %416, 2
  br i1 %417, label %422, label %418

418:                                              ; preds = %401
  %419 = load i8, ptr %9, align 1
  %420 = zext i8 %419 to i32
  %421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %420, i32 noundef %416) #10
  br label %425

422:                                              ; preds = %401
  %423 = load i8, ptr %10, align 1
  %424 = zext i8 %423 to i32
  br label %425

425:                                              ; preds = %422, %418
  %426 = phi i32 [ %416, %418 ], [ %424, %422 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  %427 = and i32 %426, 191
  %428 = load i8, ptr %155, align 1
  %429 = icmp eq i8 %428, 2
  %430 = or i32 %426, 64
  %431 = select i1 %429, i32 %427, i32 %430
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 24, ptr %7, align 2
  %432 = getelementptr inbounds i8, ptr %7, i32 1
  %433 = trunc i32 %431 to i8
  store i8 %433, ptr %432, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %434 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %434, align 4, !annotation !8
  %435 = load ptr, ptr %52, align 4
  %436 = load i8, ptr %435, align 4
  %437 = zext i8 %436 to i16
  store i16 %437, ptr %8, align 4
  %438 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %438, align 2
  %439 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %439, align 4
  %440 = load ptr, ptr %41, align 4
  %441 = call i32 @i2c_transfer(ptr noundef %440, ptr noundef nonnull %8, i32 noundef 1) #9
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %446, label %443

443:                                              ; preds = %425
  %444 = and i32 %431, 255
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %441, i32 noundef 24, i32 noundef %444) #10
  br label %446

446:                                              ; preds = %443, %425
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @msleep(i32 noundef 5) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 28, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %447 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %447, i8 0, i32 16, i1 false) #9, !annotation !8
  %448 = load ptr, ptr %52, align 4
  %449 = load i8, ptr %448, align 4
  %450 = zext i8 %449 to i16
  store i16 %450, ptr %6, align 4
  %451 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %451, align 2
  store i16 1, ptr %447, align 4
  %452 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %452, align 4
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %454 = load i8, ptr %448, align 4
  %455 = zext i8 %454 to i16
  store i16 %455, ptr %453, align 4
  %456 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %456, align 2
  %457 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %457, align 4
  %458 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %458, align 4
  %459 = load ptr, ptr %41, align 4
  %460 = call i32 @i2c_transfer(ptr noundef %459, ptr noundef nonnull %6, i32 noundef 2) #9
  %461 = icmp eq i32 %460, 2
  br i1 %461, label %466, label %462

462:                                              ; preds = %446
  %463 = load i8, ptr %4, align 1
  %464 = zext i8 %463 to i32
  %465 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %464, i32 noundef %460) #10
  br label %469

466:                                              ; preds = %446
  %467 = load i8, ptr %5, align 1
  %468 = zext i8 %467 to i32
  br label %469

469:                                              ; preds = %466, %462
  %470 = phi i32 [ %460, %462 ], [ %468, %466 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %471 = and i32 %470, 239
  %472 = or i32 %471, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 28, ptr %2, align 2
  %473 = getelementptr inbounds i8, ptr %2, i32 1
  %474 = trunc i32 %472 to i8
  store i8 %474, ptr %473, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %475 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %475, align 4, !annotation !8
  %476 = load ptr, ptr %52, align 4
  %477 = load i8, ptr %476, align 4
  %478 = zext i8 %477 to i16
  store i16 %478, ptr %3, align 4
  %479 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %479, align 2
  %480 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %480, align 4
  %481 = load ptr, ptr %41, align 4
  %482 = call i32 @i2c_transfer(ptr noundef %481, ptr noundef nonnull %3, i32 noundef 1) #9
  %483 = icmp eq i32 %482, 1
  br i1 %483, label %486, label %484

484:                                              ; preds = %469
  %485 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %482, i32 noundef 28, i32 noundef %472) #10
  br label %486

486:                                              ; preds = %484, %469
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  call void @msleep(i32 noundef 5) #9
  %487 = call i32 @cx24113_get_status(ptr noundef %0, ptr noundef nonnull %38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cx24113_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cx24113_state, ptr %4, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24113_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 16, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.cx24113_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #9
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i8, ptr %3, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %26, i32 noundef %22) #10
  br label %31

28:                                               ; preds = %2
  %29 = load i8, ptr %4, align 1
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %22, %24 ], [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %33 = trunc i32 %32 to i8
  %34 = lshr i8 %33, 1
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4
  %39 = or i32 %38, 1
  store i32 %39, ptr %1, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_get_status) #10
  %45 = zext i8 %35 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %45) #10
  br label %47

47:                                               ; preds = %43, %40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cx24113_set_Fref(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 2, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.cx24113_state, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %20, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %7, i32 noundef 2) #9
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i8, ptr %5, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24113_readreg, i32 noundef %26, i32 noundef %22) #10
  br label %31

28:                                               ; preds = %2
  %29 = load i8, ptr %6, align 1
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %22, %24 ], [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %33 = getelementptr inbounds %struct.cx24113_state, ptr %0, i32 0, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 67
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.cx24113_state, ptr %0, i32 0, i32 9
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 4
  %40 = select i1 %39, i8 1, i8 %1
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i8 [ %1, %31 ], [ %40, %36 ]
  %43 = trunc i32 %32 to i8
  %44 = and i8 %43, -3
  %45 = shl i8 %42, 1
  %46 = or i8 %45, %44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 2, ptr %3, align 2
  %47 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %46, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %48 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %48, align 4, !annotation !8
  %49 = load ptr, ptr %9, align 4
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %4, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %53, align 4
  %54 = load ptr, ptr %0, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %4, i32 noundef 1) #9
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %41
  %58 = zext i8 %46 to i32
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %55, i32 noundef 2, i32 noundef %58) #10
  br label %60

60:                                               ; preds = %57, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cx24113_set_bandwidth(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = icmp ult i32 %1, 19001
  %6 = icmp ult i32 %1, 25001
  %7 = select i1 %6, i32 128, i32 64
  %8 = select i1 %5, i32 192, i32 %7
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = mul i32 %1, 10
  %13 = add i32 %12, -10000
  %14 = udiv i32 %13, 1000
  %15 = add nuw nsw i32 %14, 5
  %16 = udiv i32 %15, 10
  br label %31

17:                                               ; preds = %2
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_set_bandwidth) #10
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %1) #10
  %20 = load i32, ptr @debug, align 4
  %21 = mul i32 %1, 10
  %22 = add i32 %21, -10000
  %23 = udiv i32 %22, 1000
  %24 = add nuw nsw i32 %23, 5
  %25 = udiv i32 %24, 10
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24113_set_bandwidth) #10
  %29 = lshr exact i32 %8, 6
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %29, i32 noundef %25) #10
  br label %31

31:                                               ; preds = %27, %17, %11
  %32 = phi i32 [ %16, %11 ], [ %25, %27 ], [ %25, %17 ]
  %33 = and i32 %32, 63
  %34 = or i32 %33, %8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 30, ptr %3, align 2
  %35 = getelementptr inbounds i8, ptr %3, i32 1
  %36 = trunc i32 %34 to i8
  store i8 %36, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %37 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %37, align 4, !annotation !8
  %38 = getelementptr inbounds %struct.cx24113_state, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %4, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %43, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %4, i32 noundef 1) #9
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %31
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24113_writereg, i32 noundef %45, i32 noundef 30, i32 noundef %34) #10
  br label %49

49:                                               ; preds = %47, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148118141, i64 2148118421, i64 2148118755, i64 2148119089}
