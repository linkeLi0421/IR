; ModuleID = '/llk/IR/drivers/media/dvb-frontends/s5h1432.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s5h1432.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1432_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1432_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1432_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
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
%struct.s5h1432_state = type { ptr, ptr, %struct.dvb_frontend, i32, i8, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.s5h1432_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@.str = private unnamed_addr constant [44 x i8] c"\016 Enter s5h1432_attach(). attach success!\0A\00", align 1
@s5h1432_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Samsung s5h1432 DVB-T Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 177000000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @s5h1432_release, ptr null, ptr @s5h1432_init, ptr @s5h1432_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1432_set_frontend, ptr @s5h1432_get_tune_settings, ptr null, ptr @s5h1432_read_status, ptr @s5h1432_read_ber, ptr @s5h1432_read_signal_strength, ptr @s5h1432_read_snr, ptr @s5h1432_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_s5h1432_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1432_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1432_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1432_attach to i32), ptr @__kstrtab_s5h1432_attach, ptr @__kstrtabns_s5h1432_attach }, section "___ksymtab+s5h1432_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [53 x i8] c"description=Samsung s5h1432 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [16 x i8] c"author=Bill Liu\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"\016 s5h1432_init().\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\013%s: writereg error 0x%02x 0x%02x 0x%04x, ret == %i)\0A\00", align 1
@__func__.s5h1432_writereg = private unnamed_addr constant [17 x i8] c"s5h1432_writereg\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\013%s: readreg error (ret == %i)\0A\00", align 1
@__func__.s5h1432_readreg = private unnamed_addr constant [16 x i8] c"s5h1432_readreg\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_s5h1432_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @s5h1432_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1068) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.s5h1432_state, ptr %5, i32 0, i32 1
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %5, align 8
  %9 = getelementptr inbounds %struct.s5h1432_state, ptr %5, i32 0, i32 3
  store i32 1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.s5h1432_config, ptr %0, i32 0, i32 5
  %11 = load i8, ptr %10, align 2
  %12 = getelementptr inbounds %struct.s5h1432_state, ptr %5, i32 0, i32 7
  store i8 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.s5h1432_state, ptr %5, i32 0, i32 2
  %14 = getelementptr inbounds %struct.s5h1432_state, ptr %5, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %14, ptr noundef nonnull align 4 dereferenceable(544) @s5h1432_ops, i32 544, i1 false)
  %15 = getelementptr inbounds %struct.s5h1432_state, ptr %5, i32 0, i32 2, i32 3
  store ptr %5, ptr %15, align 8
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %13, %7 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5h1432_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1432_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [2 x i8], align 2
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [2 x i8], align 2
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [2 x i8], align 2
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [2 x i8], align 2
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [2 x i8], align 2
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [2 x i8], align 2
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [2 x i8], align 2
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [2 x i8], align 2
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [2 x i8], align 2
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [2 x i8], align 2
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [2 x i8], align 2
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [2 x i8], align 2
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [2 x i8], align 2
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca [2 x i8], align 2
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca [2 x i8], align 2
  %56 = alloca %struct.i2c_msg, align 4
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.s5h1432_state, ptr %58, i32 0, i32 5
  store i32 0, ptr %59, align 4
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #10
  store i8 4, ptr %55, align 2
  %61 = getelementptr inbounds i8, ptr %55, i32 1
  store i8 -88, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #10
  %62 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 2, ptr %62, align 4, !annotation !8
  store i16 1, ptr %56, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %64, align 4
  %65 = load ptr, ptr %58, align 4
  %66 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %56, i32 noundef 1) #10
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %70, label %68

68:                                               ; preds = %1
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 4, i32 noundef 168, i32 noundef %66) #8
  br label %70

70:                                               ; preds = %68, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #10
  store i8 5, ptr %53, align 2
  %71 = getelementptr inbounds i8, ptr %53, i32 1
  store i8 1, ptr %71, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #10
  %72 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 2, ptr %72, align 4, !annotation !8
  store i16 1, ptr %54, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %74, align 4
  %75 = load ptr, ptr %58, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %54, i32 noundef 1) #10
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %80, label %78

78:                                               ; preds = %70
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 5, i32 noundef 1, i32 noundef %76) #8
  br label %80

80:                                               ; preds = %78, %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #10
  store i8 7, ptr %51, align 2
  %81 = getelementptr inbounds i8, ptr %51, i32 1
  store i8 112, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #10
  %82 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 2, ptr %82, align 4, !annotation !8
  store i16 1, ptr %52, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %83, align 2
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %51, ptr %84, align 4
  %85 = load ptr, ptr %58, align 4
  %86 = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %52, i32 noundef 1) #10
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 7, i32 noundef 112, i32 noundef %86) #8
  br label %90

90:                                               ; preds = %88, %80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #10
  store i8 25, ptr %49, align 2
  %91 = getelementptr inbounds i8, ptr %49, i32 1
  store i8 -128, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #10
  %92 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 2, ptr %92, align 4, !annotation !8
  store i16 1, ptr %50, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %93, align 2
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %94, align 4
  %95 = load ptr, ptr %58, align 4
  %96 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %50, i32 noundef 1) #10
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %100, label %98

98:                                               ; preds = %90
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 25, i32 noundef 128, i32 noundef %96) #8
  br label %100

100:                                              ; preds = %98, %90
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #10
  store i8 27, ptr %47, align 2
  %101 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 -99, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #10
  %102 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 2, ptr %102, align 4, !annotation !8
  store i16 1, ptr %48, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %104, align 4
  %105 = load ptr, ptr %58, align 4
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %48, i32 noundef 1) #10
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %110, label %108

108:                                              ; preds = %100
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 27, i32 noundef 157, i32 noundef %106) #8
  br label %110

110:                                              ; preds = %108, %100
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #10
  store i8 28, ptr %45, align 2
  %111 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 48, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  %112 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 2, ptr %112, align 4, !annotation !8
  store i16 1, ptr %46, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %113, align 2
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %114, align 4
  %115 = load ptr, ptr %58, align 4
  %116 = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %46, i32 noundef 1) #10
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %120, label %118

118:                                              ; preds = %110
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 28, i32 noundef 48, i32 noundef %116) #8
  br label %120

120:                                              ; preds = %118, %110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #10
  store i8 29, ptr %43, align 2
  %121 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 32, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #10
  %122 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 2, ptr %122, align 4, !annotation !8
  store i16 1, ptr %44, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %123, align 2
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %124, align 4
  %125 = load ptr, ptr %58, align 4
  %126 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %44, i32 noundef 1) #10
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %130, label %128

128:                                              ; preds = %120
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 29, i32 noundef 32, i32 noundef %126) #8
  br label %130

130:                                              ; preds = %128, %120
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #10
  store i8 30, ptr %41, align 2
  %131 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 27, ptr %131, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #10
  %132 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 2, ptr %132, align 4, !annotation !8
  store i16 1, ptr %42, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %134, align 4
  %135 = load ptr, ptr %58, align 4
  %136 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %42, i32 noundef 1) #10
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %140, label %138

138:                                              ; preds = %130
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 30, i32 noundef 27, i32 noundef %136) #8
  br label %140

140:                                              ; preds = %138, %130
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #10
  store i8 46, ptr %39, align 2
  %141 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 64, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  %142 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 2, ptr %142, align 4, !annotation !8
  store i16 1, ptr %40, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %39, ptr %144, align 4
  %145 = load ptr, ptr %58, align 4
  %146 = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %40, i32 noundef 1) #10
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %150, label %148

148:                                              ; preds = %140
  %149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 46, i32 noundef 64, i32 noundef %146) #8
  br label %150

150:                                              ; preds = %148, %140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #10
  store i8 66, ptr %37, align 2
  %151 = getelementptr inbounds i8, ptr %37, i32 1
  store i8 -124, ptr %151, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  %152 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 2, ptr %152, align 4, !annotation !8
  store i16 1, ptr %38, align 4
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %153, align 2
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %37, ptr %154, align 4
  %155 = load ptr, ptr %58, align 4
  %156 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %38, i32 noundef 1) #10
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 66, i32 noundef 132, i32 noundef %156) #8
  br label %160

160:                                              ; preds = %158, %150
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #10
  store i8 80, ptr %35, align 2
  %161 = getelementptr inbounds i8, ptr %35, i32 1
  store i8 90, ptr %161, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  %162 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 2, ptr %162, align 4, !annotation !8
  store i16 1, ptr %36, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %163, align 2
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %35, ptr %164, align 4
  %165 = load ptr, ptr %58, align 4
  %166 = call i32 @i2c_transfer(ptr noundef %165, ptr noundef nonnull %36, i32 noundef 1) #10
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %170, label %168

168:                                              ; preds = %160
  %169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 80, i32 noundef 90, i32 noundef %166) #8
  br label %170

170:                                              ; preds = %168, %160
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #10
  store i8 90, ptr %33, align 2
  %171 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 -45, ptr %171, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %172 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 2, ptr %172, align 4, !annotation !8
  store i16 1, ptr %34, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %173, align 2
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %174, align 4
  %175 = load ptr, ptr %58, align 4
  %176 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %34, i32 noundef 1) #10
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %180, label %178

178:                                              ; preds = %170
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 90, i32 noundef 211, i32 noundef %176) #8
  br label %180

180:                                              ; preds = %178, %170
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #10
  store i8 104, ptr %31, align 2
  %181 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 80, ptr %181, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  %182 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 2, ptr %182, align 4, !annotation !8
  store i16 1, ptr %32, align 4
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %183, align 2
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %184, align 4
  %185 = load ptr, ptr %58, align 4
  %186 = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %32, i32 noundef 1) #10
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %190, label %188

188:                                              ; preds = %180
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 104, i32 noundef 80, i32 noundef %186) #8
  br label %190

190:                                              ; preds = %188, %180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #10
  store i8 -72, ptr %29, align 2
  %191 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 60, ptr %191, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  %192 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 2, ptr %192, align 4, !annotation !8
  store i16 1, ptr %30, align 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %193, align 2
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %194, align 4
  %195 = load ptr, ptr %58, align 4
  %196 = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %30, i32 noundef 1) #10
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %200, label %198

198:                                              ; preds = %190
  %199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 184, i32 noundef 60, i32 noundef %196) #8
  br label %200

200:                                              ; preds = %198, %190
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #10
  store i8 -60, ptr %27, align 2
  %201 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 16, ptr %201, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #10
  %202 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 2, ptr %202, align 4, !annotation !8
  store i16 1, ptr %28, align 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %203, align 2
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %27, ptr %204, align 4
  %205 = load ptr, ptr %58, align 4
  %206 = call i32 @i2c_transfer(ptr noundef %205, ptr noundef nonnull %28, i32 noundef 1) #10
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %210, label %208

208:                                              ; preds = %200
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 196, i32 noundef 16, i32 noundef %206) #8
  br label %210

210:                                              ; preds = %208, %200
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #10
  store i8 -52, ptr %25, align 2
  %211 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 -100, ptr %211, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %212 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %212, align 4, !annotation !8
  store i16 1, ptr %26, align 4
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %213, align 2
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %214, align 4
  %215 = load ptr, ptr %58, align 4
  %216 = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %26, i32 noundef 1) #10
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %220, label %218

218:                                              ; preds = %210
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 204, i32 noundef 156, i32 noundef %216) #8
  br label %220

220:                                              ; preds = %218, %210
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #10
  store i8 -38, ptr %23, align 2
  %221 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 0, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %222 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 2, ptr %222, align 4, !annotation !8
  store i16 1, ptr %24, align 4
  %223 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %223, align 2
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %224, align 4
  %225 = load ptr, ptr %58, align 4
  %226 = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %24, i32 noundef 1) #10
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %230, label %228

228:                                              ; preds = %220
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 218, i32 noundef 0, i32 noundef %226) #8
  br label %230

230:                                              ; preds = %228, %220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #10
  store i8 -31, ptr %21, align 2
  %231 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 -108, ptr %231, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %232 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %232, align 4, !annotation !8
  store i16 1, ptr %22, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %233, align 2
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %234, align 4
  %235 = load ptr, ptr %58, align 4
  %236 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %22, i32 noundef 1) #10
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %240, label %238

238:                                              ; preds = %230
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 225, i32 noundef 148, i32 noundef %236) #8
  br label %240

240:                                              ; preds = %238, %230
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #10
  store i8 -7, ptr %19, align 2
  %241 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 0, ptr %241, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %242 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 2, ptr %242, align 4, !annotation !8
  store i16 1, ptr %20, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %243, align 2
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %244, align 4
  %245 = load ptr, ptr %58, align 4
  %246 = call i32 @i2c_transfer(ptr noundef %245, ptr noundef nonnull %20, i32 noundef 1) #10
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %250, label %248

248:                                              ; preds = %240
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 249, i32 noundef 0, i32 noundef %246) #8
  br label %250

250:                                              ; preds = %248, %240
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #10
  store i8 -28, ptr %17, align 2
  %251 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 102, ptr %251, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %252 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %252, align 4, !annotation !8
  store i16 1, ptr %18, align 4
  %253 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %253, align 2
  %254 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %254, align 4
  %255 = load ptr, ptr %58, align 4
  %256 = call i32 @i2c_transfer(ptr noundef %255, ptr noundef nonnull %18, i32 noundef 1) #10
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %260, label %258

258:                                              ; preds = %250
  %259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 228, i32 noundef 102, i32 noundef %256) #8
  br label %260

260:                                              ; preds = %258, %250
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  store i8 -27, ptr %15, align 2
  %261 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 102, ptr %261, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %262 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %262, align 4, !annotation !8
  store i16 1, ptr %16, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %263, align 2
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %264, align 4
  %265 = load ptr, ptr %58, align 4
  %266 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %16, i32 noundef 1) #10
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %270, label %268

268:                                              ; preds = %260
  %269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 229, i32 noundef 102, i32 noundef %266) #8
  br label %270

270:                                              ; preds = %268, %260
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i8 -25, ptr %13, align 2
  %271 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 -18, ptr %271, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %272 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %272, align 4, !annotation !8
  store i16 1, ptr %14, align 4
  %273 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %273, align 2
  %274 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %274, align 4
  %275 = load ptr, ptr %58, align 4
  %276 = call i32 @i2c_transfer(ptr noundef %275, ptr noundef nonnull %14, i32 noundef 1) #10
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %280, label %278

278:                                              ; preds = %270
  %279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 231, i32 noundef 238, i32 noundef %276) #8
  br label %280

280:                                              ; preds = %278, %270
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  store i8 30, ptr %11, align 2
  %281 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 49, ptr %281, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %282 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %282, align 4, !annotation !8
  store i16 1, ptr %12, align 4
  %283 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %283, align 2
  %284 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %284, align 4
  %285 = load ptr, ptr %58, align 4
  %286 = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %12, i32 noundef 1) #10
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %290, label %288

288:                                              ; preds = %280
  %289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 30, i32 noundef 49, i32 noundef %286) #8
  br label %290

290:                                              ; preds = %288, %280
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 66, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  %291 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %291, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 1, ptr %10, align 4
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %292, align 2
  store i16 1, ptr %291, align 4
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %293, align 4
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 1, ptr %294, align 4
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %295, align 2
  %296 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %296, align 4
  %297 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %297, align 4
  %298 = load ptr, ptr %58, align 4
  %299 = call i32 @i2c_transfer(ptr noundef %298, ptr noundef nonnull %10, i32 noundef 2) #10
  %300 = icmp eq i32 %299, 2
  br i1 %300, label %303, label %301

301:                                              ; preds = %290
  %302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1432_readreg, i32 noundef %299) #8
  br label %303

303:                                              ; preds = %301, %290
  %304 = load i8, ptr %9, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %305 = or i8 %304, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 66, ptr %6, align 2
  %306 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %305, ptr %306, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %307 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %307, align 4, !annotation !8
  store i16 1, ptr %7, align 4
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %308, align 2
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %309, align 4
  %310 = load ptr, ptr %58, align 4
  %311 = call i32 @i2c_transfer(ptr noundef %310, ptr noundef nonnull %7, i32 noundef 1) #10
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %316, label %313

313:                                              ; preds = %303
  %314 = zext i8 %305 to i32
  %315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 66, i32 noundef %314, i32 noundef %311) #8
  br label %316

316:                                              ; preds = %313, %303
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 9, ptr %4, align 2
  %317 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 26, ptr %317, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %318 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %318, align 4, !annotation !8
  store i16 1, ptr %5, align 4
  %319 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %319, align 2
  %320 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %320, align 4
  %321 = load ptr, ptr %58, align 4
  %322 = call i32 @i2c_transfer(ptr noundef %321, ptr noundef nonnull %5, i32 noundef 1) #10
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %326, label %324

324:                                              ; preds = %316
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 9, i32 noundef 26, i32 noundef %322) #8
  br label %326

326:                                              ; preds = %324, %316
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 9, ptr %2, align 2
  %327 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 27, ptr %327, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %328 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %328, align 4, !annotation !8
  store i16 1, ptr %3, align 4
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %329, align 2
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %330, align 4
  %331 = load ptr, ptr %58, align 4
  %332 = call i32 @i2c_transfer(ptr noundef %331, ptr noundef nonnull %3, i32 noundef 1) #10
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %336, label %334

334:                                              ; preds = %326
  %335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 9, i32 noundef 27, i32 noundef %332) #8
  br label %336

336:                                              ; preds = %334, %326
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_sleep(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1432_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %10, align 4
  %14 = getelementptr inbounds %struct.s5h1432_state, ptr %12, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %70, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0) #10
  tail call void @msleep(i32 noundef 300) #10
  tail call fastcc void @s5h1432_set_channel_bandwidth(ptr noundef %0, i32 noundef 8)
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %72 [
    i32 6000000, label %25
    i32 7000000, label %23
    i32 8000000, label %24
  ]

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %23, %17
  %26 = phi i32 [ 8, %24 ], [ 7, %23 ], [ 6, %17 ]
  tail call fastcc void @s5h1432_set_IF(ptr noundef %0)
  tail call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 9, ptr %8, align 2
  %27 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 26, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %28 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %28, align 4, !annotation !8
  store i16 1, ptr %9, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %30, align 4
  %31 = load ptr, ptr %12, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %9, i32 noundef 1) #10
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 9, i32 noundef 26, i32 noundef %32) #8
  br label %36

36:                                               ; preds = %34, %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 9, ptr %6, align 2
  %37 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 27, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %38 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %38, align 4, !annotation !8
  store i16 1, ptr %7, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %40, align 4
  %41 = load ptr, ptr %12, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %7, i32 noundef 1) #10
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 9, i32 noundef 27, i32 noundef %42) #8
  br label %46

46:                                               ; preds = %44, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call fastcc void @s5h1432_set_channel_bandwidth(ptr noundef %0, i32 noundef %26)
  %47 = load i32, ptr %21, align 4
  switch i32 %47, label %72 [
    i32 6000000, label %48
    i32 7000000, label %48
    i32 8000000, label %48
  ]

48:                                               ; preds = %46, %46, %46
  call fastcc void @s5h1432_set_IF(ptr noundef %0)
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 9, ptr %4, align 2
  %49 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 26, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %50 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %50, align 4, !annotation !8
  store i16 1, ptr %5, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %52, align 4
  %53 = load ptr, ptr %12, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %5, i32 noundef 1) #10
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 9, i32 noundef 26, i32 noundef %54) #8
  br label %58

58:                                               ; preds = %56, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 9, ptr %2, align 2
  %59 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 27, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %60 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %60, align 4, !annotation !8
  store i16 1, ptr %3, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %62, align 4
  %63 = load ptr, ptr %12, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %3, i32 noundef 1) #10
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 9, i32 noundef 27, i32 noundef %64) #8
  br label %68

68:                                               ; preds = %66, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %69 = load i32, ptr %10, align 4
  br label %70

70:                                               ; preds = %68, %1
  %71 = phi i32 [ %13, %1 ], [ %69, %68 ]
  store i32 %71, ptr %14, align 4
  br label %72

72:                                               ; preds = %70, %46, %17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_status(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_ber(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_signal_strength(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_snr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5h1432_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1432_set_channel_bandwidth(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 46, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %10 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 1, ptr %7, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %11, align 2
  store i16 1, ptr %10, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %16, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %7, i32 noundef 2) #10
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1432_readreg, i32 noundef %18) #8
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %24 = and i8 %23, -13
  switch i32 %1, label %42 [
    i32 6, label %25
    i32 7, label %27
    i32 8, label %29
  ]

25:                                               ; preds = %22
  %26 = or i8 %24, 8
  br label %29

27:                                               ; preds = %22
  %28 = or i8 %24, 4
  br label %29

29:                                               ; preds = %27, %25, %22
  %30 = phi i8 [ %28, %27 ], [ %26, %25 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 46, ptr %3, align 2
  %31 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %30, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %32, align 4, !annotation !8
  store i16 1, ptr %4, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %34, align 4
  %35 = load ptr, ptr %9, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %4, i32 noundef 1) #10
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = zext i8 %30 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 46, i32 noundef %39, i32 noundef %36) #8
  br label %41

41:                                               ; preds = %38, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %42

42:                                               ; preds = %41, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1432_set_IF(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 -28, ptr %6, align 2
  %10 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -86, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %11, align 4, !annotation !8
  store i16 1, ptr %7, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %13, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %7, i32 noundef 1) #10
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 228, i32 noundef 170, i32 noundef %15) #8
  br label %19

19:                                               ; preds = %17, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 -27, ptr %4, align 2
  %20 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -86, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %21 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %21, align 4, !annotation !8
  store i16 1, ptr %5, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %23, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 1) #10
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 229, i32 noundef 170, i32 noundef %25) #8
  br label %29

29:                                               ; preds = %27, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 -25, ptr %2, align 2
  %30 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -22, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %31 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %31, align 4, !annotation !8
  store i16 1, ptr %3, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %33, align 4
  %34 = load ptr, ptr %9, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %3, i32 noundef 1) #10
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1432_writereg, i32 noundef 1, i32 noundef 231, i32 noundef 234, i32 noundef %35) #8
  br label %39

39:                                               ; preds = %37, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
