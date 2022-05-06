; ModuleID = '/llk/IR/drivers/media/dvb-frontends/sp887x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/sp887x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sp887x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22sp887x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_sp887x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.sp887x_state = type { ptr, ptr, %struct.dvb_frontend, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.sp887x_config = type { i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@sp887x_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Spase SP887x DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 50500000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1073753774 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @sp887x_release, ptr null, ptr @sp887x_init, ptr @sp887x_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sp887x_setup_frontend_parameters, ptr @sp887x_get_tune_settings, ptr null, ptr @sp887x_read_status, ptr @sp887x_read_ber, ptr @sp887x_read_signal_strength, ptr @sp887x_read_snr, ptr @sp887x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sp887x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [50 x i8] c"description=Spase sp887x DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_sp887x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_sp887x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_sp887x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sp887x_attach to i32), ptr @__kstrtab_sp887x_attach, ptr @__kstrtabns_sp887x_attach }, section "___ksymtab+sp887x_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: readreg error (ret == %i)\0A\00", align 1
@__func__.sp887x_readreg = private unnamed_addr constant [15 x i8] c"sp887x_readreg\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"sp887x: waiting for firmware upload (%s)...\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"dvb-fe-sp887x.fw\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"sp887x: no firmware upload (timeout or file not found?)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"sp887x: writing firmware to device failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"sp887x: firmware upload complete\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"\017sp887x: %s\0A\00", align 1
@__func__.sp887x_initial_setup = private unnamed_addr constant [21 x i8] c"sp887x_initial_setup\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s: firmware upload... \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"failed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%s: i2c error (err == %i)\0A\00", align 1
@__func__.sp887x_microcontroller_stop = private unnamed_addr constant [28 x i8] c"sp887x_microcontroller_stop\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"%s: i2c write error (addr %02x, err == %i)\0A\00", align 1
@__func__.i2c_writebytes = private unnamed_addr constant [15 x i8] c"i2c_writebytes\00", align 1
@__func__.sp887x_setup_agc = private unnamed_addr constant [17 x i8] c"sp887x_setup_agc\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"%s: writereg error (reg %03x, data %03x, ret == %i)\0A\00", align 1
@__func__.sp887x_writereg = private unnamed_addr constant [16 x i8] c"sp887x_writereg\00", align 1
@sp887x_correct_offsets.srate_correction = internal unnamed_addr constant [3 x i32] [i32 1879617, i32 4544878, i32 8098561], align 4
@__func__.sp887x_microcontroller_start = private unnamed_addr constant [29 x i8] c"sp887x_microcontroller_start\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"\017sp887x: sp887x: implement tuner adjustment (%+i steps)!!\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license252, ptr @__ksymtab_sp887x_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.sp887x_setup_frontend_parameters = private unnamed_addr constant [7 x i16] [i16 0, i16 1024, i16 0, i16 2048, i16 0, i16 0, i16 0], align 2
@switch.table.sp887x_setup_frontend_parameters.13 = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sp887x_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1052) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sp887x_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  %11 = getelementptr inbounds %struct.sp887x_state, ptr %7, i32 0, i32 3
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, -2
  store i8 %13, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 2, ptr %3, align 2
  %14 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #10, !annotation !8
  %16 = load i8, ptr %0, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %5, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %18, align 2
  store i16 2, ptr %15, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %23, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #10
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %28, label %26

26:                                               ; preds = %9
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %24) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %32

28:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %29 = getelementptr inbounds %struct.sp887x_state, ptr %7, i32 0, i32 2
  %30 = getelementptr inbounds %struct.sp887x_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %30, ptr noundef nonnull align 4 dereferenceable(544) @sp887x_ops, i32 544, i1 false)
  %31 = getelementptr inbounds %struct.sp887x_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %31, align 8
  br label %33

32:                                               ; preds = %26, %2
  call void @kfree(ptr noundef %7) #10
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi ptr [ null, %32 ], [ %29, %28 ]
  ret ptr %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sp887x_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp887x_init(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [4 x i8], align 4
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [4 x i8], align 4
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [4 x i8], align 4
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [4 x i8], align 4
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [4 x i8], align 4
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [4 x i8], align 4
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [4 x i8], align 4
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [4 x i8], align 4
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [4 x i8], align 4
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [4 x i8], align 4
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [4 x i8], align 4
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [4 x i8], align 4
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [4 x i8], align 4
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [4 x i8], align 4
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [4 x i8], align 4
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [4 x i8], align 4
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [4 x i8], align 4
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [4 x i8], align 4
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [4 x i8], align 4
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [4 x i8], align 4
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca [4 x i8], align 4
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca [4 x i8], align 4
  %56 = alloca %struct.i2c_msg, align 4
  %57 = alloca [32 x i8], align 1
  %58 = alloca ptr, align 4
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %58) #10
  store ptr null, ptr %58, align 4
  %61 = getelementptr inbounds %struct.sp887x_state, ptr %60, i32 0, i32 3
  %62 = load i8, ptr %61, align 4
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %523

65:                                               ; preds = %1
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #11
  %67 = getelementptr inbounds %struct.sp887x_state, ptr %60, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sp887x_config, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %0, ptr noundef nonnull %58, ptr noundef nonnull @.str.2) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %540

75:                                               ; preds = %65
  %76 = load ptr, ptr %58, align 4
  %77 = load ptr, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %57) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %57, i8 0, i32 32, i1 false) #10, !annotation !8
  %78 = load i32, ptr %76, align 4
  %79 = getelementptr inbounds %struct.firmware, ptr %76, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 10
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %75
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sp887x_initial_setup) #11
  br label %86

86:                                               ; preds = %84, %75
  %87 = icmp slt i32 %78, 16394
  br i1 %87, label %514, label %88

88:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %55) #10
  store i8 15, ptr %55, align 4
  %89 = getelementptr inbounds i8, ptr %55, i32 1
  store i8 26, ptr %89, align 1
  %90 = getelementptr inbounds i8, ptr %55, i32 2
  store i8 0, ptr %90, align 2
  %91 = getelementptr inbounds i8, ptr %55, i32 3
  store i8 0, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #10
  %92 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 0, ptr %92, align 4, !annotation !8
  %93 = getelementptr inbounds %struct.sp887x_state, ptr %77, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %56, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %97, align 2
  store i16 4, ptr %92, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %98, align 4
  %99 = load ptr, ptr %77, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %56, i32 noundef 1) #10
  switch i32 %100, label %101 [
    i32 1, label %103
    i32 -14, label %103
    i32 -121, label %103
  ]

101:                                              ; preds = %88
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3866, i32 noundef 0, i32 noundef %100) #11
  br label %103

103:                                              ; preds = %101, %88, %88, %88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %55) #10
  call fastcc void @sp887x_microcontroller_stop(ptr noundef %77) #10
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.sp887x_initial_setup) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %53) #10
  store i8 -113, ptr %53, align 4
  %105 = getelementptr inbounds i8, ptr %53, i32 1
  store i8 8, ptr %105, align 1
  %106 = getelementptr inbounds i8, ptr %53, i32 2
  store i8 31, ptr %106, align 2
  %107 = getelementptr inbounds i8, ptr %53, i32 3
  store i8 -1, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #10
  %108 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 0, ptr %108, align 4, !annotation !8
  %109 = load ptr, ptr %93, align 4
  %110 = load i8, ptr %109, align 4
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %54, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %112, align 2
  store i16 4, ptr %108, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %113, align 4
  %114 = load ptr, ptr %77, align 4
  %115 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %54, i32 noundef 1) #10
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %119, label %117

117:                                              ; preds = %103
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 36616, i32 noundef 8191, i32 noundef %115) #11
  br label %119

119:                                              ; preds = %117, %103
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %53) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %51) #10
  store i8 -113, ptr %51, align 4
  %120 = getelementptr inbounds i8, ptr %51, i32 1
  store i8 10, ptr %120, align 1
  %121 = getelementptr inbounds i8, ptr %51, i32 2
  store i8 0, ptr %121, align 2
  %122 = getelementptr inbounds i8, ptr %51, i32 3
  store i8 0, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #10
  %123 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 0, ptr %123, align 4, !annotation !8
  %124 = load ptr, ptr %93, align 4
  %125 = load i8, ptr %124, align 4
  %126 = zext i8 %125 to i16
  store i16 %126, ptr %52, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %127, align 2
  store i16 4, ptr %123, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %51, ptr %128, align 4
  %129 = load ptr, ptr %77, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %52, i32 noundef 1) #10
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %134, label %132

132:                                              ; preds = %119
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 36618, i32 noundef 0, i32 noundef %130) #11
  br label %134

134:                                              ; preds = %132, %119
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #10
  %135 = getelementptr inbounds [32 x i8], ptr %57, i32 0, i32 1
  %136 = getelementptr inbounds [32 x i8], ptr %57, i32 0, i32 2
  %137 = getelementptr inbounds i8, ptr %50, i32 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  br label %140

140:                                              ; preds = %161, %134
  %141 = phi i32 [ 0, %134 ], [ %162, %161 ]
  %142 = sub nuw nsw i32 16384, %141
  %143 = call i32 @llvm.smin.i32(i32 %142, i32 30) #10
  store i8 -49, ptr %57, align 1
  store i8 10, ptr %135, align 1
  %144 = getelementptr i8, ptr %81, i32 %141
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %136, ptr align 1 %144, i32 %143, i1 false) #10
  %145 = trunc i32 %143 to i8
  %146 = add nuw nsw i8 %145, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #10
  store i32 0, ptr %137, align 4, !annotation !8
  %147 = load ptr, ptr %93, align 4
  %148 = load i8, ptr %147, align 4
  %149 = zext i8 %148 to i16
  store i16 %149, ptr %50, align 4
  store i16 0, ptr %138, align 2
  %150 = zext i8 %146 to i16
  store i16 %150, ptr %137, align 4
  store ptr %57, ptr %139, align 4
  %151 = load ptr, ptr %77, align 4
  %152 = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %50, i32 noundef 1) #10
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %161, label %154

154:                                              ; preds = %140
  %155 = load ptr, ptr %93, align 4
  %156 = load i8, ptr %155, align 4
  %157 = zext i8 %156 to i32
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %157, i32 noundef %152) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #10
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.sp887x_initial_setup, i32 noundef -121) #11
  br label %514

161:                                              ; preds = %140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #10
  %162 = add nuw nsw i32 %141, 30
  %163 = icmp ult i32 %141, 16354
  br i1 %163, label %140, label %164

164:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %48) #10
  store i8 12, ptr %48, align 4
  %165 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 19, ptr %165, align 1
  %166 = getelementptr inbounds i8, ptr %48, i32 2
  store i8 0, ptr %166, align 2
  %167 = getelementptr inbounds i8, ptr %48, i32 3
  store i8 1, ptr %167, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  %168 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 0, ptr %168, align 4, !annotation !8
  %169 = load ptr, ptr %93, align 4
  %170 = load i8, ptr %169, align 4
  %171 = zext i8 %170 to i16
  store i16 %171, ptr %49, align 4
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %172, align 2
  store i16 4, ptr %168, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %173, align 4
  %174 = load ptr, ptr %77, align 4
  %175 = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %49, i32 noundef 1) #10
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %179, label %177

177:                                              ; preds = %164
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3091, i32 noundef 1, i32 noundef %175) #11
  br label %179

179:                                              ; preds = %177, %164
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %46) #10
  store i8 12, ptr %46, align 4
  %180 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 20, ptr %180, align 1
  %181 = getelementptr inbounds i8, ptr %46, i32 2
  store i8 0, ptr %181, align 2
  %182 = getelementptr inbounds i8, ptr %46, i32 3
  store i8 0, ptr %182, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  %183 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 0, ptr %183, align 4, !annotation !8
  %184 = load ptr, ptr %93, align 4
  %185 = load i8, ptr %184, align 4
  %186 = zext i8 %185 to i16
  store i16 %186, ptr %47, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %187, align 2
  store i16 4, ptr %183, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %188, align 4
  %189 = load ptr, ptr %77, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %47, i32 noundef 1) #10
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %194, label %192

192:                                              ; preds = %179
  %193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3092, i32 noundef 0, i32 noundef %190) #11
  br label %194

194:                                              ; preds = %192, %179
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %46) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #10
  store i8 12, ptr %44, align 4
  %195 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 26, ptr %195, align 1
  %196 = getelementptr inbounds i8, ptr %44, i32 2
  store i8 8, ptr %196, align 2
  %197 = getelementptr inbounds i8, ptr %44, i32 3
  store i8 114, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  %198 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 0, ptr %198, align 4, !annotation !8
  %199 = load ptr, ptr %93, align 4
  %200 = load i8, ptr %199, align 4
  %201 = zext i8 %200 to i16
  store i16 %201, ptr %45, align 4
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %202, align 2
  store i16 4, ptr %198, align 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %203, align 4
  %204 = load ptr, ptr %77, align 4
  %205 = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %45, i32 noundef 1) #10
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %209, label %207

207:                                              ; preds = %194
  %208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3098, i32 noundef 2162, i32 noundef %205) #11
  br label %209

209:                                              ; preds = %207, %194
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #10
  store i8 12, ptr %42, align 4
  %210 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 27, ptr %210, align 1
  %211 = getelementptr inbounds i8, ptr %42, i32 2
  store i8 0, ptr %211, align 2
  %212 = getelementptr inbounds i8, ptr %42, i32 3
  store i8 1, ptr %212, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  %213 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 0, ptr %213, align 4, !annotation !8
  %214 = load ptr, ptr %93, align 4
  %215 = load i8, ptr %214, align 4
  %216 = zext i8 %215 to i16
  store i16 %216, ptr %43, align 4
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %217, align 2
  store i16 4, ptr %213, align 4
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %218, align 4
  %219 = load ptr, ptr %77, align 4
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %43, i32 noundef 1) #10
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %224, label %222

222:                                              ; preds = %209
  %223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3099, i32 noundef 1, i32 noundef %220) #11
  br label %224

224:                                              ; preds = %222, %209
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40) #10
  store i8 12, ptr %40, align 4
  %225 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 28, ptr %225, align 1
  %226 = getelementptr inbounds i8, ptr %40, i32 2
  store i8 0, ptr %226, align 2
  %227 = getelementptr inbounds i8, ptr %40, i32 3
  store i8 0, ptr %227, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  %228 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 0, ptr %228, align 4, !annotation !8
  %229 = load ptr, ptr %93, align 4
  %230 = load i8, ptr %229, align 4
  %231 = zext i8 %230 to i16
  store i16 %231, ptr %41, align 4
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %232, align 2
  store i16 4, ptr %228, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %233, align 4
  %234 = load ptr, ptr %77, align 4
  %235 = call i32 @i2c_transfer(ptr noundef %234, ptr noundef nonnull %41, i32 noundef 1) #10
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %239, label %237

237:                                              ; preds = %224
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3100, i32 noundef 0, i32 noundef %235) #11
  br label %239

239:                                              ; preds = %237, %224
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #10
  store i8 12, ptr %38, align 4
  %240 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 26, ptr %240, align 1
  %241 = getelementptr inbounds i8, ptr %38, i32 2
  store i8 8, ptr %241, align 2
  %242 = getelementptr inbounds i8, ptr %38, i32 3
  store i8 113, ptr %242, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %243 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 0, ptr %243, align 4, !annotation !8
  %244 = load ptr, ptr %93, align 4
  %245 = load i8, ptr %244, align 4
  %246 = zext i8 %245 to i16
  store i16 %246, ptr %39, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %247, align 2
  store i16 4, ptr %243, align 4
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %248, align 4
  %249 = load ptr, ptr %77, align 4
  %250 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %39, i32 noundef 1) #10
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %254, label %252

252:                                              ; preds = %239
  %253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3098, i32 noundef 2161, i32 noundef %250) #11
  br label %254

254:                                              ; preds = %252, %239
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #10
  store i8 3, ptr %36, align 4
  %255 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 1, ptr %255, align 1
  %256 = getelementptr inbounds i8, ptr %36, i32 2
  store i8 0, ptr %256, align 2
  %257 = getelementptr inbounds i8, ptr %36, i32 3
  store i8 2, ptr %257, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %258 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 0, ptr %258, align 4, !annotation !8
  %259 = load ptr, ptr %93, align 4
  %260 = load i8, ptr %259, align 4
  %261 = zext i8 %260 to i16
  store i16 %261, ptr %37, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %262, align 2
  store i16 4, ptr %258, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %263, align 4
  %264 = load ptr, ptr %77, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %37, i32 noundef 1) #10
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %269, label %267

267:                                              ; preds = %254
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 769, i32 noundef 2, i32 noundef %265) #11
  br label %269

269:                                              ; preds = %267, %254
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #10
  %270 = load i32, ptr @debug, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %269
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sp887x_setup_agc) #11
  br label %274

274:                                              ; preds = %272, %269
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #10
  store i8 3, ptr %34, align 4
  %275 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 60, ptr %275, align 1
  %276 = getelementptr inbounds i8, ptr %34, i32 2
  store i8 0, ptr %276, align 2
  %277 = getelementptr inbounds i8, ptr %34, i32 3
  store i8 84, ptr %277, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %278 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 4, ptr %278, align 4, !annotation !8
  %279 = load ptr, ptr %93, align 4
  %280 = load i8, ptr %279, align 4
  %281 = zext i8 %280 to i16
  store i16 %281, ptr %35, align 4
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %282, align 2
  %283 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %283, align 4
  %284 = load ptr, ptr %77, align 4
  %285 = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %35, i32 noundef 1) #10
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %289, label %287

287:                                              ; preds = %274
  %288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 828, i32 noundef 84, i32 noundef %285) #11
  br label %289

289:                                              ; preds = %287, %274
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #10
  store i8 3, ptr %32, align 4
  %290 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 59, ptr %290, align 1
  %291 = getelementptr inbounds i8, ptr %32, i32 2
  store i8 0, ptr %291, align 2
  %292 = getelementptr inbounds i8, ptr %32, i32 3
  store i8 76, ptr %292, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %293 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 4, ptr %293, align 4, !annotation !8
  %294 = load ptr, ptr %93, align 4
  %295 = load i8, ptr %294, align 4
  %296 = zext i8 %295 to i16
  store i16 %296, ptr %33, align 4
  %297 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %297, align 2
  %298 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %298, align 4
  %299 = load ptr, ptr %77, align 4
  %300 = call i32 @i2c_transfer(ptr noundef %299, ptr noundef nonnull %33, i32 noundef 1) #10
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %304, label %302

302:                                              ; preds = %289
  %303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 827, i32 noundef 76, i32 noundef %300) #11
  br label %304

304:                                              ; preds = %302, %289
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #10
  store i8 3, ptr %30, align 4
  %305 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 40, ptr %305, align 1
  %306 = getelementptr inbounds i8, ptr %30, i32 2
  store i8 0, ptr %306, align 2
  %307 = getelementptr inbounds i8, ptr %30, i32 3
  store i8 0, ptr %307, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %308 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 4, ptr %308, align 4, !annotation !8
  %309 = load ptr, ptr %93, align 4
  %310 = load i8, ptr %309, align 4
  %311 = zext i8 %310 to i16
  store i16 %311, ptr %31, align 4
  %312 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %312, align 2
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %313, align 4
  %314 = load ptr, ptr %77, align 4
  %315 = call i32 @i2c_transfer(ptr noundef %314, ptr noundef nonnull %31, i32 noundef 1) #10
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %319, label %317

317:                                              ; preds = %304
  %318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 808, i32 noundef 0, i32 noundef %315) #11
  br label %319

319:                                              ; preds = %317, %304
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #10
  store i8 3, ptr %28, align 4
  %320 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 39, ptr %320, align 1
  %321 = getelementptr inbounds i8, ptr %28, i32 2
  store i8 0, ptr %321, align 2
  %322 = getelementptr inbounds i8, ptr %28, i32 3
  store i8 5, ptr %322, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %323 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 4, ptr %323, align 4, !annotation !8
  %324 = load ptr, ptr %93, align 4
  %325 = load i8, ptr %324, align 4
  %326 = zext i8 %325 to i16
  store i16 %326, ptr %29, align 4
  %327 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %327, align 2
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %328, align 4
  %329 = load ptr, ptr %77, align 4
  %330 = call i32 @i2c_transfer(ptr noundef %329, ptr noundef nonnull %29, i32 noundef 1) #10
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %334, label %332

332:                                              ; preds = %319
  %333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 807, i32 noundef 5, i32 noundef %330) #11
  br label %334

334:                                              ; preds = %332, %319
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #10
  store i8 3, ptr %26, align 4
  %335 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 38, ptr %335, align 1
  %336 = getelementptr inbounds i8, ptr %26, i32 2
  store i8 0, ptr %336, align 2
  %337 = getelementptr inbounds i8, ptr %26, i32 3
  store i8 1, ptr %337, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %338 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 4, ptr %338, align 4, !annotation !8
  %339 = load ptr, ptr %93, align 4
  %340 = load i8, ptr %339, align 4
  %341 = zext i8 %340 to i16
  store i16 %341, ptr %27, align 4
  %342 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %342, align 2
  %343 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %343, align 4
  %344 = load ptr, ptr %77, align 4
  %345 = call i32 @i2c_transfer(ptr noundef %344, ptr noundef nonnull %27, i32 noundef 1) #10
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %349, label %347

347:                                              ; preds = %334
  %348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 806, i32 noundef 1, i32 noundef %345) #11
  br label %349

349:                                              ; preds = %347, %334
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #10
  store i8 3, ptr %24, align 4
  %350 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 37, ptr %350, align 1
  %351 = getelementptr inbounds i8, ptr %24, i32 2
  store i8 0, ptr %351, align 2
  %352 = getelementptr inbounds i8, ptr %24, i32 3
  store i8 1, ptr %352, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %353 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 4, ptr %353, align 4, !annotation !8
  %354 = load ptr, ptr %93, align 4
  %355 = load i8, ptr %354, align 4
  %356 = zext i8 %355 to i16
  store i16 %356, ptr %25, align 4
  %357 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %357, align 2
  %358 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %358, align 4
  %359 = load ptr, ptr %77, align 4
  %360 = call i32 @i2c_transfer(ptr noundef %359, ptr noundef nonnull %25, i32 noundef 1) #10
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %364, label %362

362:                                              ; preds = %349
  %363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 805, i32 noundef 1, i32 noundef %360) #11
  br label %364

364:                                              ; preds = %362, %349
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #10
  store i8 3, ptr %22, align 4
  %365 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 36, ptr %365, align 1
  %366 = getelementptr inbounds i8, ptr %22, i32 2
  store i8 0, ptr %366, align 2
  %367 = getelementptr inbounds i8, ptr %22, i32 3
  store i8 1, ptr %367, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %368 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 4, ptr %368, align 4, !annotation !8
  %369 = load ptr, ptr %93, align 4
  %370 = load i8, ptr %369, align 4
  %371 = zext i8 %370 to i16
  store i16 %371, ptr %23, align 4
  %372 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %372, align 2
  %373 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %373, align 4
  %374 = load ptr, ptr %77, align 4
  %375 = call i32 @i2c_transfer(ptr noundef %374, ptr noundef nonnull %23, i32 noundef 1) #10
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %379, label %377

377:                                              ; preds = %364
  %378 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 804, i32 noundef 1, i32 noundef %375) #11
  br label %379

379:                                              ; preds = %377, %364
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #10
  store i8 3, ptr %20, align 4
  %380 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 24, ptr %380, align 1
  %381 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 0, ptr %381, align 2
  %382 = getelementptr inbounds i8, ptr %20, i32 3
  store i8 80, ptr %382, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %383 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 4, ptr %383, align 4, !annotation !8
  %384 = load ptr, ptr %93, align 4
  %385 = load i8, ptr %384, align 4
  %386 = zext i8 %385 to i16
  store i16 %386, ptr %21, align 4
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %387, align 2
  %388 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %388, align 4
  %389 = load ptr, ptr %77, align 4
  %390 = call i32 @i2c_transfer(ptr noundef %389, ptr noundef nonnull %21, i32 noundef 1) #10
  %391 = icmp eq i32 %390, 1
  br i1 %391, label %394, label %392

392:                                              ; preds = %379
  %393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 792, i32 noundef 80, i32 noundef %390) #11
  br label %394

394:                                              ; preds = %392, %379
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  store i8 3, ptr %18, align 4
  %395 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 23, ptr %395, align 1
  %396 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 3, ptr %396, align 2
  %397 = getelementptr inbounds i8, ptr %18, i32 3
  store i8 -2, ptr %397, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %398 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 4, ptr %398, align 4, !annotation !8
  %399 = load ptr, ptr %93, align 4
  %400 = load i8, ptr %399, align 4
  %401 = zext i8 %400 to i16
  store i16 %401, ptr %19, align 4
  %402 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %402, align 2
  %403 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %403, align 4
  %404 = load ptr, ptr %77, align 4
  %405 = call i32 @i2c_transfer(ptr noundef %404, ptr noundef nonnull %19, i32 noundef 1) #10
  %406 = icmp eq i32 %405, 1
  br i1 %406, label %409, label %407

407:                                              ; preds = %394
  %408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 791, i32 noundef 1022, i32 noundef %405) #11
  br label %409

409:                                              ; preds = %407, %394
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  store i8 3, ptr %16, align 4
  %410 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 22, ptr %410, align 1
  %411 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 0, ptr %411, align 2
  %412 = getelementptr inbounds i8, ptr %16, i32 3
  store i8 1, ptr %412, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %413 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 4, ptr %413, align 4, !annotation !8
  %414 = load ptr, ptr %93, align 4
  %415 = load i8, ptr %414, align 4
  %416 = zext i8 %415 to i16
  store i16 %416, ptr %17, align 4
  %417 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %417, align 2
  %418 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %418, align 4
  %419 = load ptr, ptr %77, align 4
  %420 = call i32 @i2c_transfer(ptr noundef %419, ptr noundef nonnull %17, i32 noundef 1) #10
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %424, label %422

422:                                              ; preds = %409
  %423 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 790, i32 noundef 1, i32 noundef %420) #11
  br label %424

424:                                              ; preds = %422, %409
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i8 3, ptr %14, align 4
  %425 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 19, ptr %425, align 1
  %426 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 0, ptr %426, align 2
  %427 = getelementptr inbounds i8, ptr %14, i32 3
  store i8 5, ptr %427, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %428 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 4, ptr %428, align 4, !annotation !8
  %429 = load ptr, ptr %93, align 4
  %430 = load i8, ptr %429, align 4
  %431 = zext i8 %430 to i16
  store i16 %431, ptr %15, align 4
  %432 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %432, align 2
  %433 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %433, align 4
  %434 = load ptr, ptr %77, align 4
  %435 = call i32 @i2c_transfer(ptr noundef %434, ptr noundef nonnull %15, i32 noundef 1) #10
  %436 = icmp eq i32 %435, 1
  br i1 %436, label %439, label %437

437:                                              ; preds = %424
  %438 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 787, i32 noundef 5, i32 noundef %435) #11
  br label %439

439:                                              ; preds = %437, %424
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i8 3, ptr %12, align 4
  %440 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 18, ptr %440, align 1
  %441 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 0, ptr %441, align 2
  %442 = getelementptr inbounds i8, ptr %12, i32 3
  store i8 2, ptr %442, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %443 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 4, ptr %443, align 4, !annotation !8
  %444 = load ptr, ptr %93, align 4
  %445 = load i8, ptr %444, align 4
  %446 = zext i8 %445 to i16
  store i16 %446, ptr %13, align 4
  %447 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %447, align 2
  %448 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %448, align 4
  %449 = load ptr, ptr %77, align 4
  %450 = call i32 @i2c_transfer(ptr noundef %449, ptr noundef nonnull %13, i32 noundef 1) #10
  %451 = icmp eq i32 %450, 1
  br i1 %451, label %454, label %452

452:                                              ; preds = %439
  %453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 786, i32 noundef 2, i32 noundef %450) #11
  br label %454

454:                                              ; preds = %452, %439
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i8 3, ptr %10, align 4
  %455 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 6, ptr %455, align 1
  %456 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 0, ptr %456, align 2
  %457 = getelementptr inbounds i8, ptr %10, i32 3
  store i8 0, ptr %457, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %458 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 4, ptr %458, align 4, !annotation !8
  %459 = load ptr, ptr %93, align 4
  %460 = load i8, ptr %459, align 4
  %461 = zext i8 %460 to i16
  store i16 %461, ptr %11, align 4
  %462 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %462, align 2
  %463 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %463, align 4
  %464 = load ptr, ptr %77, align 4
  %465 = call i32 @i2c_transfer(ptr noundef %464, ptr noundef nonnull %11, i32 noundef 1) #10
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %469, label %467

467:                                              ; preds = %454
  %468 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 774, i32 noundef 0, i32 noundef %465) #11
  br label %469

469:                                              ; preds = %467, %454
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i8 3, ptr %8, align 4
  %470 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 3, ptr %470, align 1
  %471 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 0, ptr %471, align 2
  %472 = getelementptr inbounds i8, ptr %8, i32 3
  store i8 0, ptr %472, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %473 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %473, align 4, !annotation !8
  %474 = load ptr, ptr %93, align 4
  %475 = load i8, ptr %474, align 4
  %476 = zext i8 %475 to i16
  store i16 %476, ptr %9, align 4
  %477 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %477, align 2
  %478 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %478, align 4
  %479 = load ptr, ptr %77, align 4
  %480 = call i32 @i2c_transfer(ptr noundef %479, ptr noundef nonnull %9, i32 noundef 1) #10
  %481 = icmp eq i32 %480, 1
  br i1 %481, label %484, label %482

482:                                              ; preds = %469
  %483 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 771, i32 noundef 0, i32 noundef %480) #11
  br label %484

484:                                              ; preds = %482, %469
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i8 13, ptr %6, align 4
  %485 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %485, align 1
  %486 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 0, ptr %486, align 2
  %487 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 16, ptr %487, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %488 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %488, align 4, !annotation !8
  %489 = load ptr, ptr %93, align 4
  %490 = load i8, ptr %489, align 4
  %491 = zext i8 %490 to i16
  store i16 %491, ptr %7, align 4
  %492 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %492, align 2
  %493 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %493, align 4
  %494 = load ptr, ptr %77, align 4
  %495 = call i32 @i2c_transfer(ptr noundef %494, ptr noundef nonnull %7, i32 noundef 1) #10
  %496 = icmp eq i32 %495, 1
  br i1 %496, label %499, label %497

497:                                              ; preds = %484
  %498 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3328, i32 noundef 16, i32 noundef %495) #11
  br label %499

499:                                              ; preds = %497, %484
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i8 0, ptr %4, align 4
  %500 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -47, ptr %500, align 1
  %501 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %501, align 2
  %502 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %502, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %503 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %503, align 4, !annotation !8
  %504 = load ptr, ptr %93, align 4
  %505 = load i8, ptr %504, align 4
  %506 = zext i8 %505 to i16
  store i16 %506, ptr %5, align 4
  %507 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %507, align 2
  %508 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %508, align 4
  %509 = load ptr, ptr %77, align 4
  %510 = call i32 @i2c_transfer(ptr noundef %509, ptr noundef nonnull %5, i32 noundef 1) #10
  %511 = icmp eq i32 %510, 1
  br i1 %511, label %518, label %512

512:                                              ; preds = %499
  %513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 209, i32 noundef 0, i32 noundef %510) #11
  br label %518

514:                                              ; preds = %154, %86
  %515 = phi i32 [ -121, %154 ], [ -19, %86 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %57) #10
  %516 = load ptr, ptr %58, align 4
  call void @release_firmware(ptr noundef %516) #10
  %517 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %540

518:                                              ; preds = %512, %499
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %57) #10
  %519 = load ptr, ptr %58, align 4
  call void @release_firmware(ptr noundef %519) #10
  %520 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  %521 = load i8, ptr %61, align 4
  %522 = or i8 %521, 1
  store i8 %522, ptr %61, align 4
  br label %523

523:                                              ; preds = %518, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i8 12, ptr %2, align 4
  %524 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 24, ptr %524, align 1
  %525 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %525, align 2
  %526 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 13, ptr %526, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %527 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %527, align 4, !annotation !8
  %528 = getelementptr inbounds %struct.sp887x_state, ptr %60, i32 0, i32 1
  %529 = load ptr, ptr %528, align 4
  %530 = load i8, ptr %529, align 4
  %531 = zext i8 %530 to i16
  store i16 %531, ptr %3, align 4
  %532 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %532, align 2
  %533 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %533, align 4
  %534 = load ptr, ptr %60, align 4
  %535 = call i32 @i2c_transfer(ptr noundef %534, ptr noundef nonnull %3, i32 noundef 1) #10
  %536 = icmp eq i32 %535, 1
  br i1 %536, label %539, label %537

537:                                              ; preds = %523
  %538 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3096, i32 noundef 13, i32 noundef %535) #11
  br label %539

539:                                              ; preds = %537, %523
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %540

540:                                              ; preds = %539, %514, %73
  %541 = phi i32 [ 0, %539 ], [ %71, %73 ], [ %515, %514 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %58) #10
  ret i32 %541
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp887x_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i8 12, ptr %2, align 4
  %6 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 24, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %7, align 2
  %8 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %9 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.sp887x_state, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %15, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 1) #10
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3096, i32 noundef 0, i32 noundef %17) #11
  br label %21

21:                                               ; preds = %19, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp887x_setup_frontend_parameters(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [4 x i8], align 4
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [4 x i8], align 4
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [4 x i8], align 4
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [4 x i8], align 4
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [4 x i8], align 4
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [4 x i8], align 4
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [4 x i8], align 4
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [4 x i8], align 4
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x %struct.i2c_msg], align 4
  %31 = alloca i32, align 4
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #10
  store i32 0, ptr %31, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %409 [
    i32 8000000, label %37
    i32 7000000, label %37
    i32 6000000, label %37
  ]

37:                                               ; preds = %1, %1, %1
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, 7
  br i1 %40, label %41, label %409

41:                                               ; preds = %37
  %42 = trunc i32 %39 to i8
  %43 = lshr i8 75, %42
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %409, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds [7 x i16], ptr @switch.table.sp887x_setup_frontend_parameters, i32 0, i32 %39
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr inbounds [7 x i32], ptr @switch.table.sp887x_setup_frontend_parameters.13, i32 0, i32 %39
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %52 = load i32, ptr %51, align 4
  switch i32 %52, label %409 [
    i32 0, label %60
    i32 1, label %53
    i32 2, label %55
    i32 3, label %57
    i32 4, label %59
  ]

53:                                               ; preds = %46
  %54 = or i16 %48, 128
  br label %60

55:                                               ; preds = %46
  %56 = or i16 %48, 256
  br label %60

57:                                               ; preds = %46
  %58 = or i16 %48, 384
  br label %60

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %57, %55, %53, %46
  %61 = phi i16 [ %48, %59 ], [ %58, %57 ], [ %56, %55 ], [ %54, %53 ], [ %48, %46 ]
  %62 = phi i32 [ 0, %59 ], [ %50, %57 ], [ %50, %55 ], [ %50, %53 ], [ %50, %46 ]
  %63 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %64 = load i32, ptr %63, align 4
  switch i32 %64, label %409 [
    i32 1, label %73
    i32 2, label %65
    i32 3, label %67
    i32 5, label %69
    i32 7, label %71
    i32 9, label %78
  ]

65:                                               ; preds = %60
  %66 = or i16 %61, 8
  br label %73

67:                                               ; preds = %60
  %68 = or i16 %61, 16
  br label %73

69:                                               ; preds = %60
  %70 = or i16 %61, 24
  br label %73

71:                                               ; preds = %60
  %72 = or i16 %61, 32
  br label %73

73:                                               ; preds = %71, %69, %67, %65, %60
  %74 = phi i16 [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %61, %60 ]
  %75 = icmp eq i32 %62, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = or i16 %74, 4
  br label %81

78:                                               ; preds = %73, %60
  %79 = phi i16 [ %61, %60 ], [ %74, %73 ]
  %80 = or i16 %79, 2
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi i16 [ %80, %78 ], [ %77, %76 ]
  tail call fastcc void @sp887x_microcontroller_stop(ptr noundef %34)
  %83 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = tail call i32 %84(ptr noundef %0) #10
  %88 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = tail call i32 %89(ptr noundef %0, i32 noundef 0) #10
  br label %93

93:                                               ; preds = %91, %86, %81
  %94 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = call i32 %95(ptr noundef %0, ptr noundef nonnull %31) #10
  %99 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = call i32 %100(ptr noundef %0, i32 noundef 0) #10
  br label %106

104:                                              ; preds = %93
  %105 = load i32, ptr %32, align 4
  store i32 %105, ptr %31, align 4
  br label %106

106:                                              ; preds = %104, %102, %97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #10
  store i8 2, ptr %28, align 2
  %107 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 0, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #10
  store i16 0, ptr %29, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #10
  %108 = getelementptr inbounds i8, ptr %30, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %108, i8 0, i32 16, i1 false) #10, !annotation !8
  %109 = getelementptr inbounds %struct.sp887x_state, ptr %34, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load i8, ptr %110, align 4
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %30, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %113, align 2
  store i16 2, ptr %108, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %28, ptr %114, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1
  %116 = load i8, ptr %110, align 4
  %117 = zext i8 %116 to i16
  store i16 %117, ptr %115, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 1
  store i16 1, ptr %118, align 2
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 2
  store i16 2, ptr %119, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 3
  store ptr %29, ptr %120, align 4
  %121 = load ptr, ptr %34, align 4
  %122 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %30, i32 noundef 2) #10
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %126, label %124

124:                                              ; preds = %106
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %122) #11
  br label %126

126:                                              ; preds = %124, %106
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #10
  %127 = load i32, ptr %31, align 4
  %128 = load i32, ptr %32, align 4
  %129 = sub i32 %127, %128
  %130 = load i32, ptr %35, align 4
  %131 = icmp eq i32 %130, 7000000
  %132 = zext i1 %131 to i32
  %133 = icmp eq i32 %130, 6000000
  %134 = select i1 %133, i32 2, i32 %132
  %135 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 1
  %138 = sub i32 0, %129
  %139 = select i1 %137, i32 %138, i32 %129
  %140 = add i32 %139, 36000000
  %141 = sdiv i32 %140, 333
  %142 = srem i32 %141, 61003
  %143 = shl nsw i32 %142, 8
  %144 = freeze i32 %143
  %145 = udiv i32 %144, 61003
  %146 = mul i32 %145, 61003
  %147 = sub i32 %144, %146
  %148 = shl nuw nsw i32 %147, 8
  %149 = freeze i32 %148
  %150 = udiv i32 %149, 61003
  %151 = mul i32 %150, 61003
  %152 = sub i32 %149, %151
  %153 = shl nuw nsw i32 %152, 8
  %154 = shl i32 %145, 16
  %155 = shl nuw nsw i32 %150, 8
  %156 = or i32 %155, %154
  %157 = udiv i32 %153, 61003
  %158 = or i32 %156, %157
  %159 = sub i32 0, %158
  %160 = select i1 %137, i32 %159, i32 %158
  %161 = getelementptr [3 x i32], ptr @sp887x_correct_offsets.srate_correction, i32 0, i32 %134
  %162 = load i32, ptr %161, align 4
  %163 = lshr i32 %162, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #10
  store i8 3, ptr %26, align 4
  %164 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 25, ptr %164, align 1
  %165 = getelementptr inbounds i8, ptr %26, i32 2
  %166 = lshr i32 %162, 20
  %167 = trunc i32 %166 to i8
  store i8 %167, ptr %165, align 2
  %168 = getelementptr inbounds i8, ptr %26, i32 3
  %169 = trunc i32 %163 to i8
  store i8 %169, ptr %168, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %170 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 4, ptr %170, align 4, !annotation !8
  %171 = load ptr, ptr %109, align 4
  %172 = load i8, ptr %171, align 4
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %27, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %174, align 2
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %175, align 4
  %176 = load ptr, ptr %34, align 4
  %177 = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %27, i32 noundef 1) #10
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %182, label %179

179:                                              ; preds = %126
  %180 = and i32 %163, 65535
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 793, i32 noundef %180, i32 noundef %177) #11
  br label %182

182:                                              ; preds = %179, %126
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #10
  %183 = trunc i32 %162 to i16
  %184 = and i16 %183, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #10
  store i8 3, ptr %24, align 4
  %185 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 26, ptr %185, align 1
  %186 = getelementptr inbounds i8, ptr %24, i32 2
  %187 = lshr i16 %184, 8
  %188 = trunc i16 %187 to i8
  store i8 %188, ptr %186, align 2
  %189 = getelementptr inbounds i8, ptr %24, i32 3
  %190 = trunc i32 %162 to i8
  store i8 %190, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %191 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 4, ptr %191, align 4, !annotation !8
  %192 = load ptr, ptr %109, align 4
  %193 = load i8, ptr %192, align 4
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %25, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %195, align 2
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %196, align 4
  %197 = load ptr, ptr %34, align 4
  %198 = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %25, i32 noundef 1) #10
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %203, label %200

200:                                              ; preds = %182
  %201 = zext i16 %184 to i32
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 794, i32 noundef %201, i32 noundef %198) #11
  br label %203

203:                                              ; preds = %200, %182
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #10
  %204 = lshr i32 %160, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #10
  store i8 3, ptr %22, align 4
  %205 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 9, ptr %205, align 1
  %206 = getelementptr inbounds i8, ptr %22, i32 2
  %207 = lshr i32 %160, 20
  %208 = trunc i32 %207 to i8
  store i8 %208, ptr %206, align 2
  %209 = getelementptr inbounds i8, ptr %22, i32 3
  %210 = trunc i32 %204 to i8
  store i8 %210, ptr %209, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %211 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 4, ptr %211, align 4, !annotation !8
  %212 = load ptr, ptr %109, align 4
  %213 = load i8, ptr %212, align 4
  %214 = zext i8 %213 to i16
  store i16 %214, ptr %23, align 4
  %215 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %215, align 2
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %216, align 4
  %217 = load ptr, ptr %34, align 4
  %218 = call i32 @i2c_transfer(ptr noundef %217, ptr noundef nonnull %23, i32 noundef 1) #10
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %223, label %220

220:                                              ; preds = %203
  %221 = and i32 %204, 65535
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 777, i32 noundef %221, i32 noundef %218) #11
  br label %223

223:                                              ; preds = %220, %203
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #10
  %224 = trunc i32 %160 to i16
  %225 = and i16 %224, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #10
  store i8 3, ptr %20, align 4
  %226 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 10, ptr %226, align 1
  %227 = getelementptr inbounds i8, ptr %20, i32 2
  %228 = lshr i16 %225, 8
  %229 = trunc i16 %228 to i8
  store i8 %229, ptr %227, align 2
  %230 = getelementptr inbounds i8, ptr %20, i32 3
  %231 = trunc i32 %160 to i8
  store i8 %231, ptr %230, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %232 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 4, ptr %232, align 4, !annotation !8
  %233 = load ptr, ptr %109, align 4
  %234 = load i8, ptr %233, align 4
  %235 = zext i8 %234 to i16
  store i16 %235, ptr %21, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %236, align 2
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %237, align 4
  %238 = load ptr, ptr %34, align 4
  %239 = call i32 @i2c_transfer(ptr noundef %238, ptr noundef nonnull %21, i32 noundef 1) #10
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %244, label %241

241:                                              ; preds = %223
  %242 = zext i16 %225 to i32
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 778, i32 noundef %242, i32 noundef %239) #11
  br label %244

244:                                              ; preds = %241, %223
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #10
  %245 = load i32, ptr %35, align 4
  %246 = icmp eq i32 %245, 7000000
  %247 = zext i1 %246 to i16
  %248 = icmp eq i32 %245, 6000000
  %249 = select i1 %248, i16 2, i16 %247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  store i8 3, ptr %18, align 4
  %250 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 17, ptr %250, align 1
  %251 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 0, ptr %251, align 2
  %252 = getelementptr inbounds i8, ptr %18, i32 3
  %253 = trunc i16 %249 to i8
  store i8 %253, ptr %252, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %254 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 4, ptr %254, align 4, !annotation !8
  %255 = load ptr, ptr %109, align 4
  %256 = load i8, ptr %255, align 4
  %257 = zext i8 %256 to i16
  store i16 %257, ptr %19, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %258, align 2
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %259, align 4
  %260 = load ptr, ptr %34, align 4
  %261 = call i32 @i2c_transfer(ptr noundef %260, ptr noundef nonnull %19, i32 noundef 1) #10
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %266, label %263

263:                                              ; preds = %244
  %264 = zext i16 %249 to i32
  %265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 785, i32 noundef %264, i32 noundef %261) #11
  br label %266

266:                                              ; preds = %263, %244
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  %267 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %286

270:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  store i8 3, ptr %16, align 4
  %271 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 56, ptr %271, align 1
  %272 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 0, ptr %272, align 2
  %273 = getelementptr inbounds i8, ptr %16, i32 3
  store i8 0, ptr %273, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %274 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 4, ptr %274, align 4, !annotation !8
  %275 = load ptr, ptr %109, align 4
  %276 = load i8, ptr %275, align 4
  %277 = zext i8 %276 to i16
  store i16 %277, ptr %17, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %278, align 2
  %279 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %279, align 4
  %280 = load ptr, ptr %34, align 4
  %281 = call i32 @i2c_transfer(ptr noundef %280, ptr noundef nonnull %17, i32 noundef 1) #10
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %285, label %283

283:                                              ; preds = %270
  %284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 824, i32 noundef 0, i32 noundef %281) #11
  br label %285

285:                                              ; preds = %283, %270
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  br label %302

286:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i8 3, ptr %14, align 4
  %287 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 56, ptr %287, align 1
  %288 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 0, ptr %288, align 2
  %289 = getelementptr inbounds i8, ptr %14, i32 3
  store i8 1, ptr %289, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %290 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 4, ptr %290, align 4, !annotation !8
  %291 = load ptr, ptr %109, align 4
  %292 = load i8, ptr %291, align 4
  %293 = zext i8 %292 to i16
  store i16 %293, ptr %15, align 4
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %294, align 2
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %295, align 4
  %296 = load ptr, ptr %34, align 4
  %297 = call i32 @i2c_transfer(ptr noundef %296, ptr noundef nonnull %15, i32 noundef 1) #10
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %301, label %299

299:                                              ; preds = %286
  %300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 824, i32 noundef 1, i32 noundef %297) #11
  br label %301

301:                                              ; preds = %299, %286
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  br label %302

302:                                              ; preds = %301, %285
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i8 12, ptr %12, align 4
  %303 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 5, ptr %303, align 1
  %304 = getelementptr inbounds i8, ptr %12, i32 2
  %305 = lshr i16 %82, 8
  %306 = trunc i16 %305 to i8
  store i8 %306, ptr %304, align 2
  %307 = getelementptr inbounds i8, ptr %12, i32 3
  %308 = trunc i16 %82 to i8
  store i8 %308, ptr %307, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %309 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 4, ptr %309, align 4, !annotation !8
  %310 = load ptr, ptr %109, align 4
  %311 = load i8, ptr %310, align 4
  %312 = zext i8 %311 to i16
  store i16 %312, ptr %13, align 4
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %313, align 2
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %314, align 4
  %315 = load ptr, ptr %34, align 4
  %316 = call i32 @i2c_transfer(ptr noundef %315, ptr noundef nonnull %13, i32 noundef 1) #10
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %321, label %318

318:                                              ; preds = %302
  %319 = zext i16 %82 to i32
  %320 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3077, i32 noundef %319, i32 noundef %316) #11
  br label %321

321:                                              ; preds = %318, %302
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  %322 = load i32, ptr %35, align 4
  %323 = icmp eq i32 %322, 7000000
  %324 = select i1 %323, i16 376, i16 352
  %325 = icmp eq i32 %322, 6000000
  %326 = select i1 %325, i16 368, i16 %324
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i8 15, ptr %10, align 4
  %327 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 20, ptr %327, align 1
  %328 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 1, ptr %328, align 2
  %329 = getelementptr inbounds i8, ptr %10, i32 3
  %330 = trunc i16 %326 to i8
  store i8 %330, ptr %329, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %331 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 4, ptr %331, align 4, !annotation !8
  %332 = load ptr, ptr %109, align 4
  %333 = load i8, ptr %332, align 4
  %334 = zext i8 %333 to i16
  store i16 %334, ptr %11, align 4
  %335 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %335, align 2
  %336 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %336, align 4
  %337 = load ptr, ptr %34, align 4
  %338 = call i32 @i2c_transfer(ptr noundef %337, ptr noundef nonnull %11, i32 noundef 1) #10
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %343, label %340

340:                                              ; preds = %321
  %341 = zext i16 %326 to i32
  %342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3860, i32 noundef %341, i32 noundef %338) #11
  br label %343

343:                                              ; preds = %340, %321
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i8 15, ptr %8, align 4
  %344 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 21, ptr %344, align 1
  %345 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 0, ptr %345, align 2
  %346 = getelementptr inbounds i8, ptr %8, i32 3
  store i8 0, ptr %346, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %347 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %347, align 4, !annotation !8
  %348 = load ptr, ptr %109, align 4
  %349 = load i8, ptr %348, align 4
  %350 = zext i8 %349 to i16
  store i16 %350, ptr %9, align 4
  %351 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %351, align 2
  %352 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %352, align 4
  %353 = load ptr, ptr %34, align 4
  %354 = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %9, i32 noundef 1) #10
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %358, label %356

356:                                              ; preds = %343
  %357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3861, i32 noundef 0, i32 noundef %354) #11
  br label %358

358:                                              ; preds = %356, %343
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %359 = load i32, ptr @debug, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %358
  %362 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sp887x_microcontroller_start) #11
  br label %363

363:                                              ; preds = %361, %358
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i8 15, ptr %6, align 4
  %364 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 8, ptr %364, align 1
  %365 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 0, ptr %365, align 2
  %366 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 0, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %367 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %367, align 4, !annotation !8
  %368 = load ptr, ptr %109, align 4
  %369 = load i8, ptr %368, align 4
  %370 = zext i8 %369 to i16
  store i16 %370, ptr %7, align 4
  %371 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %371, align 2
  %372 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %372, align 4
  %373 = load ptr, ptr %34, align 4
  %374 = call i32 @i2c_transfer(ptr noundef %373, ptr noundef nonnull %7, i32 noundef 1) #10
  %375 = icmp eq i32 %374, 1
  br i1 %375, label %378, label %376

376:                                              ; preds = %363
  %377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3848, i32 noundef 0, i32 noundef %374) #11
  br label %378

378:                                              ; preds = %376, %363
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i8 15, ptr %4, align 4
  %379 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 9, ptr %379, align 1
  %380 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %380, align 2
  %381 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %381, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %382 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %382, align 4, !annotation !8
  %383 = load ptr, ptr %109, align 4
  %384 = load i8, ptr %383, align 4
  %385 = zext i8 %384 to i16
  store i16 %385, ptr %5, align 4
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %386, align 2
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %387, align 4
  %388 = load ptr, ptr %34, align 4
  %389 = call i32 @i2c_transfer(ptr noundef %388, ptr noundef nonnull %5, i32 noundef 1) #10
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %393, label %391

391:                                              ; preds = %378
  %392 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3849, i32 noundef 0, i32 noundef %389) #11
  br label %393

393:                                              ; preds = %391, %378
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i8 15, ptr %2, align 4
  %394 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %394, align 1
  %395 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %395, align 2
  %396 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 1, ptr %396, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %397 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %397, align 4, !annotation !8
  %398 = load ptr, ptr %109, align 4
  %399 = load i8, ptr %398, align 4
  %400 = zext i8 %399 to i16
  store i16 %400, ptr %3, align 4
  %401 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %401, align 2
  %402 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %402, align 4
  %403 = load ptr, ptr %34, align 4
  %404 = call i32 @i2c_transfer(ptr noundef %403, ptr noundef nonnull %3, i32 noundef 1) #10
  %405 = icmp eq i32 %404, 1
  br i1 %405, label %408, label %406

406:                                              ; preds = %393
  %407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3840, i32 noundef 1, i32 noundef %404) #11
  br label %408

408:                                              ; preds = %406, %393
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %409

409:                                              ; preds = %408, %60, %46, %41, %37, %1
  %410 = phi i32 [ 0, %408 ], [ -22, %1 ], [ -22, %37 ], [ -22, %46 ], [ -22, %60 ], [ -22, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #10
  ret i32 %410
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sp887x_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 350, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 333332, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 333333, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp887x_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i8 15, ptr %9, align 2
  %14 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 22, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i16 0, ptr %10, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %15 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #10, !annotation !8
  %16 = getelementptr inbounds %struct.sp887x_state, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %11, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 2, ptr %15, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %23 = load i8, ptr %17, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %27, align 4
  %28 = load ptr, ptr %13, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %11, i32 noundef 2) #10
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %29) #11
  br label %42

33:                                               ; preds = %2
  %34 = load i8, ptr %10, align 2
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = and i32 %40, 4080
  br label %42

42:                                               ; preds = %33, %31
  %43 = phi i32 [ 65520, %31 ], [ %41, %33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 2, ptr %6, align 2
  %44 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %45 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #10, !annotation !8
  %46 = load ptr, ptr %16, align 4
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %8, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 2, ptr %45, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %52 = load i8, ptr %46, align 4
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %56, align 4
  %57 = load ptr, ptr %13, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %8, i32 noundef 2) #10
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %62, label %60

60:                                               ; preds = %42
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %58) #11
  br label %66

62:                                               ; preds = %42
  %63 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i32 [ -1, %60 ], [ %65, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 15, ptr %3, align 2
  %68 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 23, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %69 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %69, i8 0, i32 16, i1 false) #10, !annotation !8
  %70 = load ptr, ptr %16, align 4
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %5, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %73, align 2
  store i16 2, ptr %69, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %76 = load i8, ptr %70, align 4
  %77 = zext i8 %76 to i16
  store i16 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %78, align 2
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %79, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %80, align 4
  %81 = load ptr, ptr %13, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %5, i32 noundef 2) #10
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %88, label %84

84:                                               ; preds = %66
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %82) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %86 = icmp ne i32 %43, 0
  %87 = zext i1 %86 to i32
  br label %97

88:                                               ; preds = %66
  %89 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %90 = load i8, ptr %89, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %91 = icmp ne i32 %43, 0
  %92 = zext i1 %91 to i32
  store i32 %92, ptr %1, align 4
  %93 = and i8 %90, 15
  %94 = icmp eq i8 %93, 2
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = or i32 %92, 30
  br label %97

97:                                               ; preds = %95, %84
  %98 = phi i32 [ %87, %84 ], [ %96, %95 ]
  store i32 %98, ptr %1, align 4
  br label %99

99:                                               ; preds = %97, %88
  %100 = and i32 %67, 1
  %101 = icmp eq i32 %100, 0
  %102 = load i32, ptr @debug, align 4
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %99
  %106 = and i32 %67, 128
  %107 = icmp eq i32 %106, 0
  %108 = lshr i32 %67, 4
  %109 = and i32 %108, 15
  %110 = sub nsw i32 0, %109
  %111 = select i1 %107, i32 %109, i32 %110
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %111) #11
  br label %113

113:                                              ; preds = %105, %99
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp887x_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i8 12, ptr %10, align 2
  %15 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 8, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  store i16 0, ptr %11, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #10
  %16 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %16, i8 0, i32 16, i1 false) #10, !annotation !8
  %17 = getelementptr inbounds %struct.sp887x_state, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %12, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 2, ptr %16, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %24 = load i8, ptr %18, align 4
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %28, align 4
  %29 = load ptr, ptr %14, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %12, i32 noundef 2) #10
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %30) #11
  br label %39

34:                                               ; preds = %2
  %35 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 63
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i32 [ 63, %32 ], [ %38, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 12, ptr %7, align 2
  %41 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 7, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 0, ptr %8, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %42 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %42, i8 0, i32 16, i1 false) #10, !annotation !8
  %43 = load ptr, ptr %17, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %9, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %46, align 2
  store i16 2, ptr %42, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %49 = load i8, ptr %43, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %53, align 4
  %54 = load ptr, ptr %14, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %9, i32 noundef 2) #10
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %59, label %57

57:                                               ; preds = %39
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %55) #11
  br label %69

59:                                               ; preds = %39
  %60 = load i8, ptr %8, align 2
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %62, 3840
  %67 = or i32 %66, %65
  %68 = shl nuw nsw i32 %67, 6
  br label %69

69:                                               ; preds = %59, %57
  %70 = phi i32 [ -64, %57 ], [ %68, %59 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %71 = or i32 %70, %40
  store i32 %71, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i8 12, ptr %5, align 4
  %72 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 8, ptr %72, align 1
  %73 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %73, align 2
  %74 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %75 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %75, align 4, !annotation !8
  %76 = load ptr, ptr %17, align 4
  %77 = load i8, ptr %76, align 4
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %6, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %80, align 4
  %81 = load ptr, ptr %14, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %6, i32 noundef 1) #10
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %86, label %84

84:                                               ; preds = %69
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3080, i32 noundef 0, i32 noundef %82) #11
  br label %86

86:                                               ; preds = %84, %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i8 12, ptr %3, align 4
  %87 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 7, ptr %87, align 1
  %88 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %88, align 2
  %89 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %90 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %90, align 4, !annotation !8
  %91 = load ptr, ptr %17, align 4
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i16
  store i16 %93, ptr %4, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %94, align 2
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %95, align 4
  %96 = load ptr, ptr %14, align 4
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %4, i32 noundef 1) #10
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %101, label %99

99:                                               ; preds = %86
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3079, i32 noundef 0, i32 noundef %97) #11
  br label %101

101:                                              ; preds = %99, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %102 = load i32, ptr %1, align 4
  %103 = icmp ugt i32 %102, 262127
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 -1, ptr %1, align 4
  br label %105

105:                                              ; preds = %104, %101
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp887x_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 15, ptr %3, align 2
  %8 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 22, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false) #10, !annotation !8
  %10 = getelementptr inbounds %struct.sp887x_state, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 2, ptr %9, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %17 = load i8, ptr %11, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %21, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 2) #10
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %23) #11
  br label %37

27:                                               ; preds = %2
  %28 = load i8, ptr %4, align 2
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %30, 3840
  %35 = or i32 %34, %33
  %36 = mul nuw nsw i32 %35, 48
  br label %37

37:                                               ; preds = %27, %25
  %38 = phi i32 [ 3145680, %25 ], [ %36, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 65535)
  %40 = trunc i32 %39 to i16
  store i16 %40, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp887x_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 15, ptr %3, align 2
  %8 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 22, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false) #10, !annotation !8
  %10 = getelementptr inbounds %struct.sp887x_state, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 2, ptr %9, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %17 = load i8, ptr %11, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %21, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 2) #10
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %23) #11
  br label %36

27:                                               ; preds = %2
  %28 = load i8, ptr %4, align 2
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %30, 3840
  %35 = or i32 %34, %33
  br label %36

36:                                               ; preds = %27, %25
  %37 = phi i32 [ 65535, %25 ], [ %35, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %38 = shl nuw nsw i32 %37, 4
  %39 = lshr i32 %37, 8
  %40 = or i32 %38, %39
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp887x_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 12, ptr %3, align 2
  %8 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 12, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false) #10, !annotation !8
  %10 = getelementptr inbounds %struct.sp887x_state, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 2, ptr %9, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %17 = load i8, ptr %11, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %21, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 2) #10
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sp887x_readreg, i32 noundef %23) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %38

27:                                               ; preds = %2
  %28 = load i8, ptr %4, align 2
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %30, 3840
  %35 = or i32 %34, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %36 = icmp eq i32 %35, 4095
  %37 = select i1 %36, i32 -1, i32 %35
  br label %38

38:                                               ; preds = %27, %25
  %39 = phi i32 [ -1, %25 ], [ %37, %27 ]
  store i32 %39, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp887x_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i8 2, ptr %5, align 4
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 6, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %12, align 2
  %13 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 1, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %14 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.sp887x_state, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 1) #10
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 518, i32 noundef 1, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi i32 [ %22, %24 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %46

28:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i8 2, ptr %3, align 4
  %29 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 6, ptr %29, align 1
  %30 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %30, align 2
  %31 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %32, align 4, !annotation !8
  %33 = getelementptr inbounds %struct.sp887x_state, ptr %8, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %4, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %38, align 4
  %39 = load ptr, ptr %8, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %4, i32 noundef 1) #10
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %44, label %42

42:                                               ; preds = %28
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 518, i32 noundef 0, i32 noundef %40) #11
  br label %44

44:                                               ; preds = %42, %28
  %45 = phi i32 [ %40, %42 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %46

46:                                               ; preds = %44, %26
  %47 = phi i32 [ %27, %26 ], [ %45, %44 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sp887x_microcontroller_stop(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sp887x_microcontroller_stop) #11
  br label %12

12:                                               ; preds = %10, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i8 15, ptr %6, align 4
  %13 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 8, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 0, ptr %14, align 2
  %15 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %16 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %16, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.sp887x_state, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %7, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 1) #10
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %12
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3848, i32 noundef 0, i32 noundef %24) #11
  br label %28

28:                                               ; preds = %26, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i8 15, ptr %4, align 4
  %29 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 9, ptr %29, align 1
  %30 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %30, align 2
  %31 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %32 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %32, align 4, !annotation !8
  %33 = load ptr, ptr %17, align 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %5, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %37, align 4
  %38 = load ptr, ptr %0, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %5, i32 noundef 1) #10
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %43, label %41

41:                                               ; preds = %28
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3849, i32 noundef 0, i32 noundef %39) #11
  br label %43

43:                                               ; preds = %41, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i8 15, ptr %2, align 4
  %44 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %45, align 2
  %46 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 0, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %47 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %47, align 4, !annotation !8
  %48 = load ptr, ptr %17, align 4
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %3, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %52, align 4
  %53 = load ptr, ptr %0, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %3, i32 noundef 1) #10
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %58, label %56

56:                                               ; preds = %43
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sp887x_writereg, i32 noundef 3840, i32 noundef 0, i32 noundef %54) #11
  br label %58

58:                                               ; preds = %56, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
