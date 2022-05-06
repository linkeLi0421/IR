; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda10086.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10086.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10086_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10086_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10086_attach:\09\09\09\09\09"
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
%struct.tda10086_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda10086_config = type { i8, i8, i8, i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\017tda10086: %s\0A\00", align 1
@__func__.tda10086_attach = private unnamed_addr constant [16 x i8] c"tda10086_attach\00", align 1
@tda10086_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10086 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 0, i32 1775 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @tda10086_release, ptr null, ptr @tda10086_init, ptr @tda10086_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10086_set_frontend, ptr @tda10086_get_tune_settings, ptr @tda10086_get_frontend, ptr @tda10086_read_status, ptr @tda10086_read_ber, ptr @tda10086_read_signal_strength, ptr @tda10086_read_snr, ptr @tda10086_read_ucblocks, ptr null, ptr @tda10086_send_master_cmd, ptr null, ptr @tda10086_send_burst, ptr @tda10086_set_tone, ptr null, ptr null, ptr null, ptr @tda10086_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [47 x i8] c"description=Philips TDA10086 DVB-S Demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [25 x i8] c"author=Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda10086_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10086_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10086_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10086_attach to i32), ptr @__kstrtab_tda10086_attach, ptr @__kstrtabns_tda10086_attach }, section "___ksymtab+tda10086_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\017tda10086: %s: error reg=0x%x, ret=%i\0A\00", align 1
@__func__.tda10086_read_byte = private unnamed_addr constant [19 x i8] c"tda10086_read_byte\00", align 1
@__func__.tda10086_init = private unnamed_addr constant [14 x i8] c"tda10086_init\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\017tda10086: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", align 1
@__func__.tda10086_write_byte = private unnamed_addr constant [20 x i8] c"tda10086_write_byte\00", align 1
@__func__.tda10086_sleep = private unnamed_addr constant [15 x i8] c"tda10086_sleep\00", align 1
@__func__.tda10086_set_frontend = private unnamed_addr constant [22 x i8] c"tda10086_set_frontend\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\017tda10086: %s %i %i\0A\00", align 1
@__func__.tda10086_set_inversion = private unnamed_addr constant [23 x i8] c"tda10086_set_inversion\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\017tda10086: %s %i\0A\00", align 1
@__func__.tda10086_set_symbol_rate = private unnamed_addr constant [25 x i8] c"tda10086_set_symbol_rate\00", align 1
@__func__.tda10086_set_fec = private unnamed_addr constant [17 x i8] c"tda10086_set_fec\00", align 1
@__func__.tda10086_get_frontend = private unnamed_addr constant [22 x i8] c"tda10086_get_frontend\00", align 1
@__func__.tda10086_read_status = private unnamed_addr constant [21 x i8] c"tda10086_read_status\00", align 1
@__func__.tda10086_read_ber = private unnamed_addr constant [18 x i8] c"tda10086_read_ber\00", align 1
@__func__.tda10086_read_signal_strength = private unnamed_addr constant [30 x i8] c"tda10086_read_signal_strength\00", align 1
@__func__.tda10086_read_snr = private unnamed_addr constant [18 x i8] c"tda10086_read_snr\00", align 1
@__func__.tda10086_read_ucblocks = private unnamed_addr constant [23 x i8] c"tda10086_read_ucblocks\00", align 1
@__func__.tda10086_send_master_cmd = private unnamed_addr constant [25 x i8] c"tda10086_send_master_cmd\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [50 x i8] c"%s: diseqc queue not ready, command may be lost.\0A\00", align 1
@__func__.tda10086_diseqc_wait = private unnamed_addr constant [21 x i8] c"tda10086_diseqc_wait\00", align 1
@__func__.tda10086_send_burst = private unnamed_addr constant [20 x i8] c"tda10086_send_burst\00", align 1
@__func__.tda10086_set_tone = private unnamed_addr constant [18 x i8] c"tda10086_set_tone\00", align 1
@__func__.tda10086_i2c_gate_ctrl = private unnamed_addr constant [23 x i8] c"tda10086_i2c_gate_ctrl\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_tda10086_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda10086_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_attach) #8
  br label %10

10:                                               ; preds = %8, %2
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 1060) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tda10086_state, ptr %12, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  store ptr %1, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 30, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %21, align 4
  %22 = load i8, ptr %0, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %5, align 4
  store i16 %23, ptr %18, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #10
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %31, label %26

26:                                               ; preds = %14
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 30, i32 noundef %24) #8
  br label %34

31:                                               ; preds = %14
  %32 = load i8, ptr %4, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %31, %29, %26
  %35 = phi i32 [ %33, %31 ], [ %24, %29 ], [ %24, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %36 = icmp eq i32 %35, 225
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @kfree(ptr noundef nonnull %12) #10
  br label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tda10086_state, ptr %12, i32 0, i32 2
  %40 = getelementptr inbounds %struct.tda10086_state, ptr %12, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %40, ptr noundef nonnull align 4 dereferenceable(544) @tda10086_ops, i32 544, i1 false)
  %41 = getelementptr inbounds %struct.tda10086_state, ptr %12, i32 0, i32 2, i32 3
  store ptr %12, ptr %41, align 8
  br label %42

42:                                               ; preds = %38, %37, %10
  %43 = phi ptr [ null, %37 ], [ %39, %38 ], [ null, %10 ]
  ret ptr %43
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda10086_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_sleep) #8
  br label %8

8:                                                ; preds = %6, %1
  tail call fastcc void @tda10086_write_mask(ptr noundef %3, i32 noundef 0, i32 noundef 8, i32 noundef 8) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 8
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 8
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 8
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 8
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 8
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 8
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 8
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 8
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 8
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 8
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 8
  %32 = alloca [2 x i8], align 2
  %33 = alloca %struct.i2c_msg, align 8
  %34 = alloca [2 x i8], align 2
  %35 = alloca %struct.i2c_msg, align 8
  %36 = alloca [2 x i8], align 2
  %37 = alloca %struct.i2c_msg, align 8
  %38 = alloca [2 x i8], align 2
  %39 = alloca %struct.i2c_msg, align 8
  %40 = alloca [2 x i8], align 2
  %41 = alloca %struct.i2c_msg, align 8
  %42 = alloca [2 x i8], align 2
  %43 = alloca %struct.i2c_msg, align 8
  %44 = alloca [2 x i8], align 2
  %45 = alloca %struct.i2c_msg, align 8
  %46 = alloca [2 x i8], align 2
  %47 = alloca %struct.i2c_msg, align 8
  %48 = alloca [2 x i8], align 2
  %49 = alloca %struct.i2c_msg, align 8
  %50 = alloca [2 x i8], align 2
  %51 = alloca %struct.i2c_msg, align 8
  %52 = alloca [2 x i8], align 2
  %53 = alloca %struct.i2c_msg, align 8
  %54 = alloca [2 x i8], align 2
  %55 = alloca %struct.i2c_msg, align 8
  %56 = alloca [2 x i8], align 2
  %57 = alloca %struct.i2c_msg, align 8
  %58 = alloca [2 x i8], align 2
  %59 = alloca %struct.i2c_msg, align 8
  %60 = alloca [2 x i8], align 2
  %61 = alloca %struct.i2c_msg, align 8
  %62 = alloca [2 x i8], align 2
  %63 = alloca %struct.i2c_msg, align 8
  %64 = alloca [2 x i8], align 2
  %65 = alloca %struct.i2c_msg, align 8
  %66 = alloca [2 x i8], align 2
  %67 = alloca %struct.i2c_msg, align 8
  %68 = alloca [2 x i8], align 2
  %69 = alloca %struct.i2c_msg, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr @debug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %1
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_init) #8
  br label %76

76:                                               ; preds = %74, %1
  %77 = getelementptr inbounds %struct.tda10086_state, ptr %71, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.tda10086_config, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 2
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i32 128, i32 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %68) #10
  store i8 0, ptr %68, align 2
  %83 = getelementptr inbounds i8, ptr %68, i32 1
  store i8 0, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #10
  store i64 8589934592, ptr %69, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  store ptr %68, ptr %84, align 8
  %85 = load ptr, ptr %77, align 4
  %86 = load i8, ptr %85, align 4
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %69, align 8
  %88 = load ptr, ptr %71, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %69, i32 noundef 1) #10
  %90 = icmp ne i32 %89, 1
  %91 = load i32, ptr @debug, align 4
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %96

94:                                               ; preds = %76
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 0, i32 noundef 0, i32 noundef %89) #8
  br label %96

96:                                               ; preds = %94, %76
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %68) #10
  call void @msleep(i32 noundef 10) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %66) #10
  store i8 1, ptr %66, align 2
  %97 = getelementptr inbounds i8, ptr %66, i32 1
  store i8 -108, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #10
  store i64 8589934592, ptr %67, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  store ptr %66, ptr %98, align 8
  %99 = load ptr, ptr %77, align 4
  %100 = load i8, ptr %99, align 4
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %67, align 8
  %102 = load ptr, ptr %71, align 4
  %103 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %67, i32 noundef 1) #10
  %104 = icmp ne i32 %103, 1
  %105 = load i32, ptr @debug, align 4
  %106 = icmp ne i32 %105, 0
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 1, i32 noundef 148, i32 noundef %103) #8
  br label %110

110:                                              ; preds = %108, %96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %66) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %64) #10
  store i8 2, ptr %64, align 2
  %111 = getelementptr inbounds i8, ptr %64, i32 1
  store i8 53, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #10
  store i64 8589934592, ptr %65, align 8
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %112, align 8
  %113 = load ptr, ptr %77, align 4
  %114 = load i8, ptr %113, align 4
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %65, align 8
  %116 = load ptr, ptr %71, align 4
  %117 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %65, i32 noundef 1) #10
  %118 = icmp ne i32 %117, 1
  %119 = load i32, ptr @debug, align 4
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %122, label %124

122:                                              ; preds = %110
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 2, i32 noundef 53, i32 noundef %117) #8
  br label %124

124:                                              ; preds = %122, %110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %64) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %62) #10
  store i8 3, ptr %62, align 2
  %125 = getelementptr inbounds i8, ptr %62, i32 1
  store i8 -28, ptr %125, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #10
  store i64 8589934592, ptr %63, align 8
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  store ptr %62, ptr %126, align 8
  %127 = load ptr, ptr %77, align 4
  %128 = load i8, ptr %127, align 4
  %129 = zext i8 %128 to i16
  store i16 %129, ptr %63, align 8
  %130 = load ptr, ptr %71, align 4
  %131 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %63, i32 noundef 1) #10
  %132 = icmp ne i32 %131, 1
  %133 = load i32, ptr @debug, align 4
  %134 = icmp ne i32 %133, 0
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 3, i32 noundef 228, i32 noundef %131) #8
  br label %138

138:                                              ; preds = %136, %124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %62) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %60) #10
  store i8 4, ptr %60, align 2
  %139 = getelementptr inbounds i8, ptr %60, i32 1
  store i8 67, ptr %139, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #10
  store i64 8589934592, ptr %61, align 8
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %140, align 8
  %141 = load ptr, ptr %77, align 4
  %142 = load i8, ptr %141, align 4
  %143 = zext i8 %142 to i16
  store i16 %143, ptr %61, align 8
  %144 = load ptr, ptr %71, align 4
  %145 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %61, i32 noundef 1) #10
  %146 = icmp ne i32 %145, 1
  %147 = load i32, ptr @debug, align 4
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %146, i1 %148, i1 false
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 4, i32 noundef 67, i32 noundef %145) #8
  br label %152

152:                                              ; preds = %150, %138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %60) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #10
  store i8 12, ptr %58, align 2
  %153 = getelementptr inbounds i8, ptr %58, i32 1
  store i8 12, ptr %153, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #10
  store i64 8589934592, ptr %59, align 8
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %154, align 8
  %155 = load ptr, ptr %77, align 4
  %156 = load i8, ptr %155, align 4
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %59, align 8
  %158 = load ptr, ptr %71, align 4
  %159 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %59, i32 noundef 1) #10
  %160 = icmp ne i32 %159, 1
  %161 = load i32, ptr @debug, align 4
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %160, i1 %162, i1 false
  br i1 %163, label %164, label %166

164:                                              ; preds = %152
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 12, i32 noundef 12, i32 noundef %159) #8
  br label %166

166:                                              ; preds = %164, %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #10
  store i8 27, ptr %56, align 2
  %167 = getelementptr inbounds i8, ptr %56, i32 1
  store i8 -80, ptr %167, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #10
  store i64 8589934592, ptr %57, align 8
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %168, align 8
  %169 = load ptr, ptr %77, align 4
  %170 = load i8, ptr %169, align 4
  %171 = zext i8 %170 to i16
  store i16 %171, ptr %57, align 8
  %172 = load ptr, ptr %71, align 4
  %173 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %57, i32 noundef 1) #10
  %174 = icmp ne i32 %173, 1
  %175 = load i32, ptr @debug, align 4
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %174, i1 %176, i1 false
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 27, i32 noundef 176, i32 noundef %173) #8
  br label %180

180:                                              ; preds = %178, %166
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #10
  store i8 32, ptr %54, align 2
  %181 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 -119, ptr %181, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #10
  store i64 8589934592, ptr %55, align 8
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %182, align 8
  %183 = load ptr, ptr %77, align 4
  %184 = load i8, ptr %183, align 4
  %185 = zext i8 %184 to i16
  store i16 %185, ptr %55, align 8
  %186 = load ptr, ptr %71, align 4
  %187 = call i32 @i2c_transfer(ptr noundef %186, ptr noundef nonnull %55, i32 noundef 1) #10
  %188 = icmp ne i32 %187, 1
  %189 = load i32, ptr @debug, align 4
  %190 = icmp ne i32 %189, 0
  %191 = select i1 %188, i1 %190, i1 false
  br i1 %191, label %192, label %194

192:                                              ; preds = %180
  %193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 32, i32 noundef 137, i32 noundef %187) #8
  br label %194

194:                                              ; preds = %192, %180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #10
  store i8 48, ptr %52, align 2
  %195 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 4, ptr %195, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #10
  store i64 8589934592, ptr %53, align 8
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %196, align 8
  %197 = load ptr, ptr %77, align 4
  %198 = load i8, ptr %197, align 4
  %199 = zext i8 %198 to i16
  store i16 %199, ptr %53, align 8
  %200 = load ptr, ptr %71, align 4
  %201 = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %53, i32 noundef 1) #10
  %202 = icmp ne i32 %201, 1
  %203 = load i32, ptr @debug, align 4
  %204 = icmp ne i32 %203, 0
  %205 = select i1 %202, i1 %204, i1 false
  br i1 %205, label %206, label %208

206:                                              ; preds = %194
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 48, i32 noundef 4, i32 noundef %201) #8
  br label %208

208:                                              ; preds = %206, %194
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #10
  store i8 50, ptr %50, align 2
  %209 = getelementptr inbounds i8, ptr %50, i32 1
  store i8 0, ptr %209, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #10
  store i64 8589934592, ptr %51, align 8
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %210, align 8
  %211 = load ptr, ptr %77, align 4
  %212 = load i8, ptr %211, align 4
  %213 = zext i8 %212 to i16
  store i16 %213, ptr %51, align 8
  %214 = load ptr, ptr %71, align 4
  %215 = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %51, i32 noundef 1) #10
  %216 = icmp ne i32 %215, 1
  %217 = load i32, ptr @debug, align 4
  %218 = icmp ne i32 %217, 0
  %219 = select i1 %216, i1 %218, i1 false
  br i1 %219, label %220, label %222

220:                                              ; preds = %208
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 50, i32 noundef 0, i32 noundef %215) #8
  br label %222

222:                                              ; preds = %220, %208
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #10
  store i8 49, ptr %48, align 2
  %223 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 86, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  store i64 8589934592, ptr %49, align 8
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %224, align 8
  %225 = load ptr, ptr %77, align 4
  %226 = load i8, ptr %225, align 4
  %227 = zext i8 %226 to i16
  store i16 %227, ptr %49, align 8
  %228 = load ptr, ptr %71, align 4
  %229 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %49, i32 noundef 1) #10
  %230 = icmp ne i32 %229, 1
  %231 = load i32, ptr @debug, align 4
  %232 = icmp ne i32 %231, 0
  %233 = select i1 %230, i1 %232, i1 false
  br i1 %233, label %234, label %236

234:                                              ; preds = %222
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 49, i32 noundef 86, i32 noundef %229) #8
  br label %236

236:                                              ; preds = %234, %222
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #10
  store i8 85, ptr %46, align 2
  %237 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 44, ptr %237, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  store i64 8589934592, ptr %47, align 8
  %238 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %238, align 8
  %239 = load ptr, ptr %77, align 4
  %240 = load i8, ptr %239, align 4
  %241 = zext i8 %240 to i16
  store i16 %241, ptr %47, align 8
  %242 = load ptr, ptr %71, align 4
  %243 = call i32 @i2c_transfer(ptr noundef %242, ptr noundef nonnull %47, i32 noundef 1) #10
  %244 = icmp ne i32 %243, 1
  %245 = load i32, ptr @debug, align 4
  %246 = icmp ne i32 %245, 0
  %247 = select i1 %244, i1 %246, i1 false
  br i1 %247, label %248, label %250

248:                                              ; preds = %236
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 85, i32 noundef 44, i32 noundef %243) #8
  br label %250

250:                                              ; preds = %248, %236
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #10
  %251 = load ptr, ptr %77, align 4
  %252 = getelementptr inbounds %struct.tda10086_config, ptr %251, i32 0, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %284

255:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #10
  store i8 58, ptr %44, align 2
  %256 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 11, ptr %256, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  store i64 8589934592, ptr %45, align 8
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %257, align 8
  %258 = load ptr, ptr %77, align 4
  %259 = load i8, ptr %258, align 4
  %260 = zext i8 %259 to i16
  store i16 %260, ptr %45, align 8
  %261 = load ptr, ptr %71, align 4
  %262 = call i32 @i2c_transfer(ptr noundef %261, ptr noundef nonnull %45, i32 noundef 1) #10
  %263 = icmp ne i32 %262, 1
  %264 = load i32, ptr @debug, align 4
  %265 = icmp ne i32 %264, 0
  %266 = select i1 %263, i1 %265, i1 false
  br i1 %266, label %267, label %269

267:                                              ; preds = %255
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 58, i32 noundef 11, i32 noundef %262) #8
  br label %269

269:                                              ; preds = %267, %255
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #10
  store i8 59, ptr %42, align 2
  %270 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 1, ptr %270, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  store i64 8589934592, ptr %43, align 8
  %271 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %271, align 8
  %272 = load ptr, ptr %77, align 4
  %273 = load i8, ptr %272, align 4
  %274 = zext i8 %273 to i16
  store i16 %274, ptr %43, align 8
  %275 = load ptr, ptr %71, align 4
  %276 = call i32 @i2c_transfer(ptr noundef %275, ptr noundef nonnull %43, i32 noundef 1) #10
  %277 = icmp ne i32 %276, 1
  %278 = load i32, ptr @debug, align 4
  %279 = icmp ne i32 %278, 0
  %280 = select i1 %277, i1 %279, i1 false
  br i1 %280, label %281, label %283

281:                                              ; preds = %269
  %282 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 59, i32 noundef 1, i32 noundef %276) #8
  br label %283

283:                                              ; preds = %281, %269
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #10
  br label %313

284:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #10
  store i8 58, ptr %40, align 2
  %285 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 23, ptr %285, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  store i64 8589934592, ptr %41, align 8
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %286, align 8
  %287 = load ptr, ptr %77, align 4
  %288 = load i8, ptr %287, align 4
  %289 = zext i8 %288 to i16
  store i16 %289, ptr %41, align 8
  %290 = load ptr, ptr %71, align 4
  %291 = call i32 @i2c_transfer(ptr noundef %290, ptr noundef nonnull %41, i32 noundef 1) #10
  %292 = icmp ne i32 %291, 1
  %293 = load i32, ptr @debug, align 4
  %294 = icmp ne i32 %293, 0
  %295 = select i1 %292, i1 %294, i1 false
  br i1 %295, label %296, label %298

296:                                              ; preds = %284
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 58, i32 noundef 23, i32 noundef %291) #8
  br label %298

298:                                              ; preds = %296, %284
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #10
  store i8 59, ptr %38, align 2
  %299 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 0, ptr %299, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  store i64 8589934592, ptr %39, align 8
  %300 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %300, align 8
  %301 = load ptr, ptr %77, align 4
  %302 = load i8, ptr %301, align 4
  %303 = zext i8 %302 to i16
  store i16 %303, ptr %39, align 8
  %304 = load ptr, ptr %71, align 4
  %305 = call i32 @i2c_transfer(ptr noundef %304, ptr noundef nonnull %39, i32 noundef 1) #10
  %306 = icmp ne i32 %305, 1
  %307 = load i32, ptr @debug, align 4
  %308 = icmp ne i32 %307, 0
  %309 = select i1 %306, i1 %308, i1 false
  br i1 %309, label %310, label %312

310:                                              ; preds = %298
  %311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 59, i32 noundef 0, i32 noundef %305) #8
  br label %312

312:                                              ; preds = %310, %298
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #10
  br label %313

313:                                              ; preds = %312, %283
  call fastcc void @tda10086_write_mask(ptr noundef %71, i32 noundef 85, i32 noundef 32, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #10
  store i8 17, ptr %36, align 2
  %314 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 -127, ptr %314, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  store i64 8589934592, ptr %37, align 8
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %315, align 8
  %316 = load ptr, ptr %77, align 4
  %317 = load i8, ptr %316, align 4
  %318 = zext i8 %317 to i16
  store i16 %318, ptr %37, align 8
  %319 = load ptr, ptr %71, align 4
  %320 = call i32 @i2c_transfer(ptr noundef %319, ptr noundef nonnull %37, i32 noundef 1) #10
  %321 = icmp ne i32 %320, 1
  %322 = load i32, ptr @debug, align 4
  %323 = icmp ne i32 %322, 0
  %324 = select i1 %321, i1 %323, i1 false
  br i1 %324, label %325, label %327

325:                                              ; preds = %313
  %326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 17, i32 noundef 129, i32 noundef %320) #8
  br label %327

327:                                              ; preds = %325, %313
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #10
  store i8 18, ptr %34, align 2
  %328 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 -127, ptr %328, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  store i64 8589934592, ptr %35, align 8
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %329, align 8
  %330 = load ptr, ptr %77, align 4
  %331 = load i8, ptr %330, align 4
  %332 = zext i8 %331 to i16
  store i16 %332, ptr %35, align 8
  %333 = load ptr, ptr %71, align 4
  %334 = call i32 @i2c_transfer(ptr noundef %333, ptr noundef nonnull %35, i32 noundef 1) #10
  %335 = icmp ne i32 %334, 1
  %336 = load i32, ptr @debug, align 4
  %337 = icmp ne i32 %336, 0
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %339, label %341

339:                                              ; preds = %327
  %340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 18, i32 noundef 129, i32 noundef %334) #8
  br label %341

341:                                              ; preds = %339, %327
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #10
  store i8 25, ptr %32, align 2
  %342 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 64, ptr %342, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  store i64 8589934592, ptr %33, align 8
  %343 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %343, align 8
  %344 = load ptr, ptr %77, align 4
  %345 = load i8, ptr %344, align 4
  %346 = zext i8 %345 to i16
  store i16 %346, ptr %33, align 8
  %347 = load ptr, ptr %71, align 4
  %348 = call i32 @i2c_transfer(ptr noundef %347, ptr noundef nonnull %33, i32 noundef 1) #10
  %349 = icmp ne i32 %348, 1
  %350 = load i32, ptr @debug, align 4
  %351 = icmp ne i32 %350, 0
  %352 = select i1 %349, i1 %351, i1 false
  br i1 %352, label %353, label %355

353:                                              ; preds = %341
  %354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 25, i32 noundef 64, i32 noundef %348) #8
  br label %355

355:                                              ; preds = %353, %341
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #10
  store i8 86, ptr %30, align 2
  %356 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 -128, ptr %356, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  store i64 8589934592, ptr %31, align 8
  %357 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %357, align 8
  %358 = load ptr, ptr %77, align 4
  %359 = load i8, ptr %358, align 4
  %360 = zext i8 %359 to i16
  store i16 %360, ptr %31, align 8
  %361 = load ptr, ptr %71, align 4
  %362 = call i32 @i2c_transfer(ptr noundef %361, ptr noundef nonnull %31, i32 noundef 1) #10
  %363 = icmp ne i32 %362, 1
  %364 = load i32, ptr @debug, align 4
  %365 = icmp ne i32 %364, 0
  %366 = select i1 %363, i1 %365, i1 false
  br i1 %366, label %367, label %369

367:                                              ; preds = %355
  %368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 86, i32 noundef 128, i32 noundef %362) #8
  br label %369

369:                                              ; preds = %367, %355
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #10
  store i8 87, ptr %28, align 2
  %370 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 8, ptr %370, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  store i64 8589934592, ptr %29, align 8
  %371 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %371, align 8
  %372 = load ptr, ptr %77, align 4
  %373 = load i8, ptr %372, align 4
  %374 = zext i8 %373 to i16
  store i16 %374, ptr %29, align 8
  %375 = load ptr, ptr %71, align 4
  %376 = call i32 @i2c_transfer(ptr noundef %375, ptr noundef nonnull %29, i32 noundef 1) #10
  %377 = icmp ne i32 %376, 1
  %378 = load i32, ptr @debug, align 4
  %379 = icmp ne i32 %378, 0
  %380 = select i1 %377, i1 %379, i1 false
  br i1 %380, label %381, label %383

381:                                              ; preds = %369
  %382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 87, i32 noundef 8, i32 noundef %376) #8
  br label %383

383:                                              ; preds = %381, %369
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #10
  store i8 16, ptr %26, align 2
  %384 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 42, ptr %384, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  store i64 8589934592, ptr %27, align 8
  %385 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %385, align 8
  %386 = load ptr, ptr %77, align 4
  %387 = load i8, ptr %386, align 4
  %388 = zext i8 %387 to i16
  store i16 %388, ptr %27, align 8
  %389 = load ptr, ptr %71, align 4
  %390 = call i32 @i2c_transfer(ptr noundef %389, ptr noundef nonnull %27, i32 noundef 1) #10
  %391 = icmp ne i32 %390, 1
  %392 = load i32, ptr @debug, align 4
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %391, i1 %393, i1 false
  br i1 %394, label %395, label %397

395:                                              ; preds = %383
  %396 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 16, i32 noundef 42, i32 noundef %390) #8
  br label %397

397:                                              ; preds = %395, %383
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #10
  store i8 88, ptr %24, align 2
  %398 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 97, ptr %398, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  store i64 8589934592, ptr %25, align 8
  %399 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %399, align 8
  %400 = load ptr, ptr %77, align 4
  %401 = load i8, ptr %400, align 4
  %402 = zext i8 %401 to i16
  store i16 %402, ptr %25, align 8
  %403 = load ptr, ptr %71, align 4
  %404 = call i32 @i2c_transfer(ptr noundef %403, ptr noundef nonnull %25, i32 noundef 1) #10
  %405 = icmp ne i32 %404, 1
  %406 = load i32, ptr @debug, align 4
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %405, i1 %407, i1 false
  br i1 %408, label %409, label %411

409:                                              ; preds = %397
  %410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 88, i32 noundef 97, i32 noundef %404) #8
  br label %411

411:                                              ; preds = %409, %397
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  call fastcc void @tda10086_write_mask(ptr noundef %71, i32 noundef 88, i32 noundef 1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i8 5, ptr %22, align 2
  %412 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 11, ptr %412, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  store i64 8589934592, ptr %23, align 8
  %413 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %413, align 8
  %414 = load ptr, ptr %77, align 4
  %415 = load i8, ptr %414, align 4
  %416 = zext i8 %415 to i16
  store i16 %416, ptr %23, align 8
  %417 = load ptr, ptr %71, align 4
  %418 = call i32 @i2c_transfer(ptr noundef %417, ptr noundef nonnull %23, i32 noundef 1) #10
  %419 = icmp ne i32 %418, 1
  %420 = load i32, ptr @debug, align 4
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %419, i1 %421, i1 false
  br i1 %422, label %423, label %425

423:                                              ; preds = %411
  %424 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 5, i32 noundef 11, i32 noundef %418) #8
  br label %425

425:                                              ; preds = %423, %411
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i8 55, ptr %20, align 2
  %426 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 99, ptr %426, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  store i64 8589934592, ptr %21, align 8
  %427 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %427, align 8
  %428 = load ptr, ptr %77, align 4
  %429 = load i8, ptr %428, align 4
  %430 = zext i8 %429 to i16
  store i16 %430, ptr %21, align 8
  %431 = load ptr, ptr %71, align 4
  %432 = call i32 @i2c_transfer(ptr noundef %431, ptr noundef nonnull %21, i32 noundef 1) #10
  %433 = icmp ne i32 %432, 1
  %434 = load i32, ptr @debug, align 4
  %435 = icmp ne i32 %434, 0
  %436 = select i1 %433, i1 %435, i1 false
  br i1 %436, label %437, label %439

437:                                              ; preds = %425
  %438 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 55, i32 noundef 99, i32 noundef %432) #8
  br label %439

439:                                              ; preds = %437, %425
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i8 63, ptr %18, align 2
  %440 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 10, ptr %440, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  store i64 8589934592, ptr %19, align 8
  %441 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %441, align 8
  %442 = load ptr, ptr %77, align 4
  %443 = load i8, ptr %442, align 4
  %444 = zext i8 %443 to i16
  store i16 %444, ptr %19, align 8
  %445 = load ptr, ptr %71, align 4
  %446 = call i32 @i2c_transfer(ptr noundef %445, ptr noundef nonnull %19, i32 noundef 1) #10
  %447 = icmp ne i32 %446, 1
  %448 = load i32, ptr @debug, align 4
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %447, i1 %449, i1 false
  br i1 %450, label %451, label %453

451:                                              ; preds = %439
  %452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 63, i32 noundef 10, i32 noundef %446) #8
  br label %453

453:                                              ; preds = %451, %439
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i8 64, ptr %16, align 2
  %454 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 100, ptr %454, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  store i64 8589934592, ptr %17, align 8
  %455 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %455, align 8
  %456 = load ptr, ptr %77, align 4
  %457 = load i8, ptr %456, align 4
  %458 = zext i8 %457 to i16
  store i16 %458, ptr %17, align 8
  %459 = load ptr, ptr %71, align 4
  %460 = call i32 @i2c_transfer(ptr noundef %459, ptr noundef nonnull %17, i32 noundef 1) #10
  %461 = icmp ne i32 %460, 1
  %462 = load i32, ptr @debug, align 4
  %463 = icmp ne i32 %462, 0
  %464 = select i1 %461, i1 %463, i1 false
  br i1 %464, label %465, label %467

465:                                              ; preds = %453
  %466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 64, i32 noundef 100, i32 noundef %460) #8
  br label %467

467:                                              ; preds = %465, %453
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i8 65, ptr %14, align 2
  %468 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 79, ptr %468, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  store i64 8589934592, ptr %15, align 8
  %469 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %469, align 8
  %470 = load ptr, ptr %77, align 4
  %471 = load i8, ptr %470, align 4
  %472 = zext i8 %471 to i16
  store i16 %472, ptr %15, align 8
  %473 = load ptr, ptr %71, align 4
  %474 = call i32 @i2c_transfer(ptr noundef %473, ptr noundef nonnull %15, i32 noundef 1) #10
  %475 = icmp ne i32 %474, 1
  %476 = load i32, ptr @debug, align 4
  %477 = icmp ne i32 %476, 0
  %478 = select i1 %475, i1 %477, i1 false
  br i1 %478, label %479, label %481

479:                                              ; preds = %467
  %480 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 65, i32 noundef 79, i32 noundef %474) #8
  br label %481

481:                                              ; preds = %479, %467
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i8 66, ptr %12, align 2
  %482 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 67, ptr %482, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  store i64 8589934592, ptr %13, align 8
  %483 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %483, align 8
  %484 = load ptr, ptr %77, align 4
  %485 = load i8, ptr %484, align 4
  %486 = zext i8 %485 to i16
  store i16 %486, ptr %13, align 8
  %487 = load ptr, ptr %71, align 4
  %488 = call i32 @i2c_transfer(ptr noundef %487, ptr noundef nonnull %13, i32 noundef 1) #10
  %489 = icmp ne i32 %488, 1
  %490 = load i32, ptr @debug, align 4
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %489, i1 %491, i1 false
  br i1 %492, label %493, label %495

493:                                              ; preds = %481
  %494 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 66, i32 noundef 67, i32 noundef %488) #8
  br label %495

495:                                              ; preds = %493, %481
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i8 26, ptr %10, align 2
  %496 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 17, ptr %496, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  store i64 8589934592, ptr %11, align 8
  %497 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %497, align 8
  %498 = load ptr, ptr %77, align 4
  %499 = load i8, ptr %498, align 4
  %500 = zext i8 %499 to i16
  store i16 %500, ptr %11, align 8
  %501 = load ptr, ptr %71, align 4
  %502 = call i32 @i2c_transfer(ptr noundef %501, ptr noundef nonnull %11, i32 noundef 1) #10
  %503 = icmp ne i32 %502, 1
  %504 = load i32, ptr @debug, align 4
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %503, i1 %505, i1 false
  br i1 %506, label %507, label %509

507:                                              ; preds = %495
  %508 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 26, i32 noundef 17, i32 noundef %502) #8
  br label %509

509:                                              ; preds = %507, %495
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 61, ptr %8, align 2
  %510 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 -128, ptr %510, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  store i64 8589934592, ptr %9, align 8
  %511 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %511, align 8
  %512 = load ptr, ptr %77, align 4
  %513 = load i8, ptr %512, align 4
  %514 = zext i8 %513 to i16
  store i16 %514, ptr %9, align 8
  %515 = load ptr, ptr %71, align 4
  %516 = call i32 @i2c_transfer(ptr noundef %515, ptr noundef nonnull %9, i32 noundef 1) #10
  %517 = icmp ne i32 %516, 1
  %518 = load i32, ptr @debug, align 4
  %519 = icmp ne i32 %518, 0
  %520 = select i1 %517, i1 %519, i1 false
  br i1 %520, label %521, label %523

521:                                              ; preds = %509
  %522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 61, i32 noundef 128, i32 noundef %516) #8
  br label %523

523:                                              ; preds = %521, %509
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 54, ptr %6, align 2
  %524 = getelementptr inbounds i8, ptr %6, i32 1
  %525 = trunc i32 %82 to i8
  store i8 %525, ptr %524, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  store i64 8589934592, ptr %7, align 8
  %526 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %526, align 8
  %527 = load ptr, ptr %77, align 4
  %528 = load i8, ptr %527, align 4
  %529 = zext i8 %528 to i16
  store i16 %529, ptr %7, align 8
  %530 = load ptr, ptr %71, align 4
  %531 = call i32 @i2c_transfer(ptr noundef %530, ptr noundef nonnull %7, i32 noundef 1) #10
  %532 = icmp ne i32 %531, 1
  %533 = load i32, ptr @debug, align 4
  %534 = icmp ne i32 %533, 0
  %535 = select i1 %532, i1 %534, i1 false
  br i1 %535, label %536, label %538

536:                                              ; preds = %523
  %537 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 54, i32 noundef %82, i32 noundef %531) #8
  br label %538

538:                                              ; preds = %536, %523
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 52, ptr %4, align 2
  %539 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 120, ptr %539, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  store i64 8589934592, ptr %5, align 8
  %540 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %540, align 8
  %541 = load ptr, ptr %77, align 4
  %542 = load i8, ptr %541, align 4
  %543 = zext i8 %542 to i16
  store i16 %543, ptr %5, align 8
  %544 = load ptr, ptr %71, align 4
  %545 = call i32 @i2c_transfer(ptr noundef %544, ptr noundef nonnull %5, i32 noundef 1) #10
  %546 = icmp ne i32 %545, 1
  %547 = load i32, ptr @debug, align 4
  %548 = icmp ne i32 %547, 0
  %549 = select i1 %546, i1 %548, i1 false
  br i1 %549, label %550, label %552

550:                                              ; preds = %538
  %551 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 52, i32 noundef 120, i32 noundef %545) #8
  br label %552

552:                                              ; preds = %550, %538
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 53, ptr %2, align 2
  %553 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %553, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i64 8589934592, ptr %3, align 8
  %554 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %554, align 8
  %555 = load ptr, ptr %77, align 4
  %556 = load i8, ptr %555, align 4
  %557 = zext i8 %556 to i16
  store i16 %557, ptr %3, align 8
  %558 = load ptr, ptr %71, align 4
  %559 = call i32 @i2c_transfer(ptr noundef %558, ptr noundef nonnull %3, i32 noundef 1) #10
  %560 = icmp ne i32 %559, 1
  %561 = load i32, ptr @debug, align 4
  %562 = icmp ne i32 %561, 0
  %563 = select i1 %560, i1 %562, i1 false
  br i1 %563, label %564, label %566

564:                                              ; preds = %552
  %565 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 53, i32 noundef 0, i32 noundef %559) #8
  br label %566

566:                                              ; preds = %564, %552
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_sleep) #8
  br label %8

8:                                                ; preds = %6, %1
  tail call fastcc void @tda10086_write_mask(ptr noundef %3, i32 noundef 0, i32 noundef 8, i32 noundef 8)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 8
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 8
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 8
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 8
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 8
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 8
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 8
  %24 = alloca i32, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #10
  store i32 0, ptr %24, align 4
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_set_frontend) #8
  br label %32

32:                                               ; preds = %30, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i8 2, ptr %22, align 2
  %33 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 53, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  store i64 8589934592, ptr %23, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %34, align 8
  %35 = getelementptr inbounds %struct.tda10086_state, ptr %27, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %23, align 8
  %39 = load ptr, ptr %27, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %23, i32 noundef 1) #10
  %41 = icmp ne i32 %40, 1
  %42 = load i32, ptr @debug, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 2, i32 noundef 53, i32 noundef %40) #8
  br label %47

47:                                               ; preds = %45, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  %48 = getelementptr inbounds %struct.tda10086_state, ptr %27, i32 0, i32 5
  store i8 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %70, label %52

52:                                               ; preds = %47
  %53 = call i32 %50(ptr noundef %0) #10
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = call i32 %55(ptr noundef %0, i32 noundef 0) #10
  br label %59

59:                                               ; preds = %57, %52
  %60 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i32 %61(ptr noundef %0, ptr noundef nonnull %24) #10
  br label %65

65:                                               ; preds = %63, %59
  %66 = load ptr, ptr %54, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 %66(ptr noundef %0, i32 noundef 0) #10
  br label %70

70:                                               ; preds = %68, %65, %47
  %71 = load i32, ptr %25, align 4
  %72 = load i32, ptr %24, align 4
  %73 = sub i32 %71, %72
  %74 = shl i32 %73, 16
  %75 = udiv i32 %74, 96000
  %76 = lshr i32 %75, 8
  %77 = or i32 %76, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i8 61, ptr %20, align 2
  %78 = getelementptr inbounds i8, ptr %20, i32 1
  %79 = trunc i32 %77 to i8
  store i8 %79, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  store i64 8589934592, ptr %21, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %80, align 8
  %81 = load ptr, ptr %35, align 4
  %82 = load i8, ptr %81, align 4
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %21, align 8
  %84 = load ptr, ptr %27, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %21, i32 noundef 1) #10
  %86 = icmp ne i32 %85, 1
  %87 = load i32, ptr @debug, align 4
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %92

90:                                               ; preds = %70
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 61, i32 noundef %77, i32 noundef %85) #8
  br label %92

92:                                               ; preds = %90, %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i8 62, ptr %18, align 2
  %93 = getelementptr inbounds i8, ptr %18, i32 1
  %94 = trunc i32 %75 to i8
  store i8 %94, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  store i64 8589934592, ptr %19, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %95, align 8
  %96 = load ptr, ptr %35, align 4
  %97 = load i8, ptr %96, align 4
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %19, align 8
  %99 = load ptr, ptr %27, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %19, i32 noundef 1) #10
  %101 = icmp ne i32 %100, 1
  %102 = load i32, ptr @debug, align 4
  %103 = icmp ne i32 %102, 0
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 62, i32 noundef %75, i32 noundef %100) #8
  %107 = load i32, ptr @debug, align 4
  br label %108

108:                                              ; preds = %105, %92
  %109 = phi i32 [ %102, %92 ], [ %107, %105 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr %35, align 4
  %115 = getelementptr inbounds %struct.tda10086_config, ptr %114, i32 0, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tda10086_set_inversion, i32 noundef %113, i32 noundef %117) #8
  br label %119

119:                                              ; preds = %111, %108
  %120 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %121 = load i32, ptr %120, align 4
  switch i32 %121, label %135 [
    i32 0, label %122
    i32 1, label %128
    i32 2, label %134
  ]

122:                                              ; preds = %119
  %123 = load ptr, ptr %35, align 4
  %124 = getelementptr inbounds %struct.tda10086_config, ptr %123, i32 0, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i32 128, i32 64
  br label %135

128:                                              ; preds = %119
  %129 = load ptr, ptr %35, align 4
  %130 = getelementptr inbounds %struct.tda10086_config, ptr %129, i32 0, i32 1
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %132, i32 64, i32 128
  br label %135

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134, %128, %122, %119
  %136 = phi i32 [ 128, %119 ], [ 0, %134 ], [ %127, %122 ], [ %133, %128 ]
  call fastcc void @tda10086_write_mask(ptr noundef %27, i32 noundef 12, i32 noundef 192, i32 noundef %136) #10
  %137 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %138 = load i32, ptr %137, align 4
  %139 = load i32, ptr @debug, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %135
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda10086_set_symbol_rate, i32 noundef %138) #8
  br label %143

143:                                              ; preds = %141, %135
  %144 = icmp ult i32 %138, 1315200
  br i1 %144, label %166, label %145

145:                                              ; preds = %143
  %146 = icmp ult i32 %138, 1996800
  br i1 %146, label %166, label %147

147:                                              ; preds = %145
  %148 = icmp ult i32 %138, 2592000
  br i1 %148, label %166, label %149

149:                                              ; preds = %147
  %150 = icmp ult i32 %138, 3993600
  br i1 %150, label %166, label %151

151:                                              ; preds = %149
  %152 = icmp ult i32 %138, 5280000
  br i1 %152, label %166, label %153

153:                                              ; preds = %151
  %154 = icmp ult i32 %138, 7996800
  br i1 %154, label %166, label %155

155:                                              ; preds = %153
  %156 = icmp ult i32 %138, 10560000
  br i1 %156, label %166, label %157

157:                                              ; preds = %155
  %158 = icmp ult i32 %138, 15993600
  br i1 %158, label %166, label %159

159:                                              ; preds = %157
  %160 = icmp ult i32 %138, 21120000
  br i1 %160, label %166, label %161

161:                                              ; preds = %159
  %162 = icmp ult i32 %138, 31996800
  %163 = select i1 %162, i32 67, i32 99
  %164 = select i1 %162, i32 67, i32 79
  %165 = select i1 %162, i32 0, i32 8
  br label %166

166:                                              ; preds = %161, %159, %157, %155, %153, %151, %149, %147, %145, %143
  %167 = phi i32 [ 67, %143 ], [ 67, %145 ], [ 67, %147 ], [ 67, %149 ], [ 67, %151 ], [ 67, %153 ], [ 67, %155 ], [ 67, %157 ], [ 67, %159 ], [ %163, %161 ]
  %168 = phi i32 [ 67, %143 ], [ 67, %145 ], [ 67, %147 ], [ 67, %149 ], [ 67, %151 ], [ 67, %153 ], [ 67, %155 ], [ 67, %157 ], [ 67, %159 ], [ %164, %161 ]
  %169 = phi i32 [ 0, %143 ], [ 0, %145 ], [ 0, %147 ], [ 0, %149 ], [ 0, %151 ], [ 0, %153 ], [ 0, %155 ], [ 0, %157 ], [ 0, %159 ], [ %165, %161 ]
  %170 = phi i32 [ 128, %143 ], [ 0, %145 ], [ 128, %147 ], [ 0, %149 ], [ 128, %151 ], [ 0, %153 ], [ 128, %155 ], [ 0, %157 ], [ 128, %159 ], [ 0, %161 ]
  %171 = phi i32 [ 4, %143 ], [ 4, %145 ], [ 3, %147 ], [ 3, %149 ], [ 2, %151 ], [ 2, %153 ], [ 1, %155 ], [ 1, %157 ], [ 0, %159 ], [ 0, %161 ]
  %172 = udiv i32 %138, 1000
  %173 = zext i32 %172 to i64
  %174 = shl nuw nsw i64 %173, 21
  %175 = zext i32 %171 to i64
  %176 = shl nuw nsw i64 %174, %175
  %177 = or i64 %176, 95999
  %178 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -5853766786057164379, i64 %177) #11, !srcloc !8
  %179 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5853766786057164379, i64 %177, i64 %178, i32 0) #11, !srcloc !9
  %180 = extractvalue { i64, i32 } %179, 0
  %181 = lshr i64 %180, 16
  %182 = trunc i64 %181 to i32
  %183 = and i32 %182, 1048575
  %184 = shl nuw nsw i32 %172, %171
  %185 = add nuw nsw i32 %184, 3071999
  %186 = udiv i32 %185, %184
  %187 = or i32 %171, %170
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i8 33, ptr %16, align 2
  %188 = getelementptr inbounds i8, ptr %16, i32 1
  %189 = trunc i32 %187 to i8
  store i8 %189, ptr %188, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  store i64 8589934592, ptr %17, align 8
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %190, align 8
  %191 = load ptr, ptr %35, align 4
  %192 = load i8, ptr %191, align 4
  %193 = zext i8 %192 to i16
  store i16 %193, ptr %17, align 8
  %194 = load ptr, ptr %27, align 4
  %195 = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %17, i32 noundef 1) #10
  %196 = icmp ne i32 %195, 1
  %197 = load i32, ptr @debug, align 4
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %196, i1 %198, i1 false
  br i1 %199, label %200, label %202

200:                                              ; preds = %166
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 33, i32 noundef %187, i32 noundef %195) #8
  br label %202

202:                                              ; preds = %200, %166
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  call fastcc void @tda10086_write_mask(ptr noundef %27, i32 noundef 32, i32 noundef 8, i32 noundef %169) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i8 6, ptr %14, align 2
  %203 = getelementptr inbounds i8, ptr %14, i32 1
  %204 = trunc i64 %181 to i8
  store i8 %204, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  store i64 8589934592, ptr %15, align 8
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %205, align 8
  %206 = load ptr, ptr %35, align 4
  %207 = load i8, ptr %206, align 4
  %208 = zext i8 %207 to i16
  store i16 %208, ptr %15, align 8
  %209 = load ptr, ptr %27, align 4
  %210 = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %15, i32 noundef 1) #10
  %211 = icmp ne i32 %210, 1
  %212 = load i32, ptr @debug, align 4
  %213 = icmp ne i32 %212, 0
  %214 = select i1 %211, i1 %213, i1 false
  br i1 %214, label %215, label %217

215:                                              ; preds = %202
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 6, i32 noundef %183, i32 noundef %210) #8
  br label %217

217:                                              ; preds = %215, %202
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  %218 = lshr i32 %183, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i8 7, ptr %12, align 2
  %219 = getelementptr inbounds i8, ptr %12, i32 1
  %220 = trunc i32 %218 to i8
  store i8 %220, ptr %219, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  store i64 8589934592, ptr %13, align 8
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %221, align 8
  %222 = load ptr, ptr %35, align 4
  %223 = load i8, ptr %222, align 4
  %224 = zext i8 %223 to i16
  store i16 %224, ptr %13, align 8
  %225 = load ptr, ptr %27, align 4
  %226 = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %13, i32 noundef 1) #10
  %227 = icmp ne i32 %226, 1
  %228 = load i32, ptr @debug, align 4
  %229 = icmp ne i32 %228, 0
  %230 = select i1 %227, i1 %229, i1 false
  br i1 %230, label %231, label %233

231:                                              ; preds = %217
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 7, i32 noundef %218, i32 noundef %226) #8
  br label %233

233:                                              ; preds = %231, %217
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  %234 = lshr i32 %183, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i8 8, ptr %10, align 2
  %235 = getelementptr inbounds i8, ptr %10, i32 1
  %236 = trunc i32 %234 to i8
  store i8 %236, ptr %235, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  store i64 8589934592, ptr %11, align 8
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %237, align 8
  %238 = load ptr, ptr %35, align 4
  %239 = load i8, ptr %238, align 4
  %240 = zext i8 %239 to i16
  store i16 %240, ptr %11, align 8
  %241 = load ptr, ptr %27, align 4
  %242 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %11, i32 noundef 1) #10
  %243 = icmp ne i32 %242, 1
  %244 = load i32, ptr @debug, align 4
  %245 = icmp ne i32 %244, 0
  %246 = select i1 %243, i1 %245, i1 false
  br i1 %246, label %247, label %249

247:                                              ; preds = %233
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 8, i32 noundef %234, i32 noundef %242) #8
  br label %249

249:                                              ; preds = %247, %233
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 9, ptr %8, align 2
  %250 = getelementptr inbounds i8, ptr %8, i32 1
  %251 = trunc i32 %186 to i8
  store i8 %251, ptr %250, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  store i64 8589934592, ptr %9, align 8
  %252 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %252, align 8
  %253 = load ptr, ptr %35, align 4
  %254 = load i8, ptr %253, align 4
  %255 = zext i8 %254 to i16
  store i16 %255, ptr %9, align 8
  %256 = load ptr, ptr %27, align 4
  %257 = call i32 @i2c_transfer(ptr noundef %256, ptr noundef nonnull %9, i32 noundef 1) #10
  %258 = icmp ne i32 %257, 1
  %259 = load i32, ptr @debug, align 4
  %260 = icmp ne i32 %259, 0
  %261 = select i1 %258, i1 %260, i1 false
  br i1 %261, label %262, label %264

262:                                              ; preds = %249
  %263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 9, i32 noundef %186, i32 noundef %257) #8
  br label %264

264:                                              ; preds = %262, %249
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 55, ptr %6, align 2
  %265 = getelementptr inbounds i8, ptr %6, i32 1
  %266 = trunc i32 %167 to i8
  store i8 %266, ptr %265, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  store i64 8589934592, ptr %7, align 8
  %267 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %267, align 8
  %268 = load ptr, ptr %35, align 4
  %269 = load i8, ptr %268, align 4
  %270 = zext i8 %269 to i16
  store i16 %270, ptr %7, align 8
  %271 = load ptr, ptr %27, align 4
  %272 = call i32 @i2c_transfer(ptr noundef %271, ptr noundef nonnull %7, i32 noundef 1) #10
  %273 = icmp ne i32 %272, 1
  %274 = load i32, ptr @debug, align 4
  %275 = icmp ne i32 %274, 0
  %276 = select i1 %273, i1 %275, i1 false
  br i1 %276, label %277, label %279

277:                                              ; preds = %264
  %278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 55, i32 noundef %167, i32 noundef %272) #8
  br label %279

279:                                              ; preds = %277, %264
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 66, ptr %4, align 2
  %280 = getelementptr inbounds i8, ptr %4, i32 1
  %281 = trunc i32 %168 to i8
  store i8 %281, ptr %280, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  store i64 8589934592, ptr %5, align 8
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %282, align 8
  %283 = load ptr, ptr %35, align 4
  %284 = load i8, ptr %283, align 4
  %285 = zext i8 %284 to i16
  store i16 %285, ptr %5, align 8
  %286 = load ptr, ptr %27, align 4
  %287 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %5, i32 noundef 1) #10
  %288 = icmp ne i32 %287, 1
  %289 = load i32, ptr @debug, align 4
  %290 = icmp ne i32 %289, 0
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %292, label %295

292:                                              ; preds = %279
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 66, i32 noundef %168, i32 noundef %287) #8
  %294 = load i32, ptr @debug, align 4
  br label %295

295:                                              ; preds = %292, %279
  %296 = phi i32 [ %289, %279 ], [ %294, %292 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %300 = load i32, ptr %299, align 4
  %301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda10086_set_fec, i32 noundef %300) #8
  br label %302

302:                                              ; preds = %298, %295
  %303 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %304 = load i32, ptr %303, align 4
  %305 = add i32 %304, -1
  %306 = icmp ult i32 %305, 9
  br i1 %306, label %307, label %327

307:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 13, ptr %2, align 2
  %308 = getelementptr inbounds i8, ptr %2, i32 1
  %309 = trunc i32 %305 to i8
  store i8 %309, ptr %308, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i64 8589934592, ptr %3, align 8
  %310 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %310, align 8
  %311 = load ptr, ptr %35, align 4
  %312 = load i8, ptr %311, align 4
  %313 = zext i8 %312 to i16
  store i16 %313, ptr %3, align 8
  %314 = load ptr, ptr %27, align 4
  %315 = call i32 @i2c_transfer(ptr noundef %314, ptr noundef nonnull %3, i32 noundef 1) #10
  %316 = icmp ne i32 %315, 1
  %317 = load i32, ptr @debug, align 4
  %318 = icmp ne i32 %317, 0
  %319 = select i1 %316, i1 %318, i1 false
  br i1 %319, label %320, label %322

320:                                              ; preds = %307
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 13, i32 noundef %305, i32 noundef %315) #8
  br label %322

322:                                              ; preds = %320, %307
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  call fastcc void @tda10086_write_mask(ptr noundef %27, i32 noundef 16, i32 noundef 64, i32 noundef 64)
  call fastcc void @tda10086_write_mask(ptr noundef %27, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %323 = load i32, ptr %137, align 4
  %324 = getelementptr inbounds %struct.tda10086_state, ptr %27, i32 0, i32 4
  store i32 %323, ptr %324, align 4
  %325 = load i32, ptr %25, align 4
  %326 = getelementptr inbounds %struct.tda10086_state, ptr %27, i32 0, i32 3
  store i32 %325, ptr %326, align 4
  br label %327

327:                                              ; preds = %322, %302
  %328 = phi i32 [ 0, %322 ], [ -1, %302 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #10
  ret i32 %328
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda10086_get_tune_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 20000000
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store i32 50, ptr %1, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 2000, ptr %7, align 4
  br label %29

8:                                                ; preds = %2
  %9 = icmp ugt i32 %4, 12000000
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  store i32 100, ptr %1, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 1500, ptr %11, align 4
  br label %29

12:                                               ; preds = %8
  %13 = icmp ugt i32 %4, 8000000
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  store i32 100, ptr %1, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 1000, ptr %15, align 4
  br label %29

16:                                               ; preds = %12
  %17 = icmp ugt i32 %4, 4000000
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  store i32 100, ptr %1, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 500, ptr %19, align 4
  br label %29

20:                                               ; preds = %16
  %21 = icmp ugt i32 %4, 2000000
  store i32 200, ptr %1, align 4
  %22 = load i32, ptr %3, align 4
  %23 = udiv i32 %22, 8000
  %24 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  br i1 %21, label %25, label %27

25:                                               ; preds = %20
  %26 = mul nuw nsw i32 %23, 14
  br label %29

27:                                               ; preds = %20
  %28 = mul nuw nsw i32 %23, 18
  br label %29

29:                                               ; preds = %27, %25, %18, %14, %10, %6
  %30 = phi i32 [ 9000, %10 ], [ 7000, %18 ], [ %28, %27 ], [ %26, %25 ], [ 8000, %14 ], [ 8000, %6 ]
  %31 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [1 x i8], align 1
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [1 x i8], align 1
  %19 = alloca [1 x i8], align 1
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_get_frontend) #8
  br label %27

27:                                               ; preds = %25, %2
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, 500000
  br i1 %30, label %236, label %31

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 82, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #10
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #10
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %20, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.tda10086_state, ptr %22, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %20, align 4
  %42 = load i8, ptr %39, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %34, align 4
  %44 = load ptr, ptr %22, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %20, i32 noundef 2) #10
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %52, label %47

47:                                               ; preds = %31
  %48 = load i32, ptr @debug, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 82, i32 noundef %45) #8
  br label %55

52:                                               ; preds = %31
  %53 = load i8, ptr %19, align 1
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %52, %50, %47
  %56 = phi i32 [ %54, %52 ], [ %45, %50 ], [ %45, %47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #10
  store i8 81, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %17, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %62, align 4
  %63 = load ptr, ptr %38, align 4
  %64 = load i8, ptr %63, align 4
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %17, align 4
  %66 = load i8, ptr %63, align 4
  %67 = zext i8 %66 to i16
  store i16 %67, ptr %59, align 4
  %68 = load ptr, ptr %22, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %17, i32 noundef 2) #10
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %76, label %71

71:                                               ; preds = %55
  %72 = load i32, ptr @debug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 81, i32 noundef %69) #8
  br label %79

76:                                               ; preds = %55
  %77 = load i8, ptr %16, align 1
  %78 = zext i8 %77 to i32
  br label %79

79:                                               ; preds = %76, %74, %71
  %80 = phi i32 [ %78, %76 ], [ %69, %74 ], [ %69, %71 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  %81 = shl i32 %80, 8
  %82 = or i32 %81, %56
  %83 = sext i32 %82 to i64
  %84 = and i64 %83, 32768
  %85 = icmp eq i64 %84, 0
  %86 = or i64 %83, 281474976645120
  %87 = select i1 %85, i64 %83, i64 %86
  %88 = mul i64 %87, 96000
  %89 = lshr i64 %88, 16
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds %struct.tda10086_state, ptr %22, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, %90
  store i32 %93, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 12, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %95, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %97, align 2
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %98, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %99, align 4
  %100 = load ptr, ptr %38, align 4
  %101 = load i8, ptr %100, align 4
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %14, align 4
  %103 = load i8, ptr %100, align 4
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %96, align 4
  %105 = load ptr, ptr %22, align 4
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %14, i32 noundef 2) #10
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %113, label %108

108:                                              ; preds = %79
  %109 = load i32, ptr @debug, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 12, i32 noundef %106) #8
  br label %116

113:                                              ; preds = %79
  %114 = load i8, ptr %13, align 1
  %115 = zext i8 %114 to i32
  br label %116

116:                                              ; preds = %113, %111, %108
  %117 = phi i32 [ %115, %113 ], [ %106, %111 ], [ %106, %108 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %118 = and i32 %117, 128
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %134, label %120

120:                                              ; preds = %116
  %121 = and i32 %117, 64
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  br i1 %122, label %124, label %129

124:                                              ; preds = %120
  store i32 0, ptr %123, align 4
  %125 = load ptr, ptr %38, align 4
  %126 = getelementptr inbounds %struct.tda10086_config, ptr %125, i32 0, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = icmp ne i8 %127, 0
  br label %168

129:                                              ; preds = %120
  store i32 1, ptr %123, align 4
  %130 = load ptr, ptr %38, align 4
  %131 = getelementptr inbounds %struct.tda10086_config, ptr %130, i32 0, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br label %168

134:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 15, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %135, align 4
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %136, align 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %138, align 2
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %139, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %140, align 4
  %141 = load ptr, ptr %38, align 4
  %142 = load i8, ptr %141, align 4
  %143 = zext i8 %142 to i16
  store i16 %143, ptr %11, align 4
  %144 = load i8, ptr %141, align 4
  %145 = zext i8 %144 to i16
  store i16 %145, ptr %137, align 4
  %146 = load ptr, ptr %22, align 4
  %147 = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %11, i32 noundef 2) #10
  %148 = icmp eq i32 %147, 2
  %149 = load i32, ptr @debug, align 4
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %148, i1 true, i1 %150
  br i1 %151, label %154, label %152

152:                                              ; preds = %134
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 15, i32 noundef %147) #8
  br label %154

154:                                              ; preds = %152, %134
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %155 = and i32 %117, 2
  %156 = icmp eq i32 %155, 0
  %157 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  br i1 %156, label %158, label %163

158:                                              ; preds = %154
  store i32 0, ptr %157, align 4
  %159 = load ptr, ptr %38, align 4
  %160 = getelementptr inbounds %struct.tda10086_config, ptr %159, i32 0, i32 1
  %161 = load i8, ptr %160, align 1
  %162 = icmp ne i8 %161, 0
  br label %168

163:                                              ; preds = %154
  store i32 1, ptr %157, align 4
  %164 = load ptr, ptr %38, align 4
  %165 = getelementptr inbounds %struct.tda10086_config, ptr %164, i32 0, i32 1
  %166 = load i8, ptr %165, align 1
  %167 = icmp eq i8 %166, 0
  br label %168

168:                                              ; preds = %163, %158, %129, %124
  %169 = phi i1 [ %167, %163 ], [ %162, %158 ], [ %133, %129 ], [ %128, %124 ]
  %170 = phi ptr [ %157, %163 ], [ %157, %158 ], [ %123, %129 ], [ %123, %124 ]
  %171 = zext i1 %169 to i32
  store i32 %171, ptr %170, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 29, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %172, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %173, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %175, align 2
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %176, align 4
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %177, align 4
  %178 = load ptr, ptr %38, align 4
  %179 = load i8, ptr %178, align 4
  %180 = zext i8 %179 to i16
  store i16 %180, ptr %8, align 4
  %181 = load i8, ptr %178, align 4
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %174, align 4
  %183 = load ptr, ptr %22, align 4
  %184 = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %8, i32 noundef 2) #10
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %191, label %186

186:                                              ; preds = %168
  %187 = load i32, ptr @debug, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 29, i32 noundef %184) #8
  br label %194

191:                                              ; preds = %168
  %192 = load i8, ptr %7, align 1
  %193 = zext i8 %192 to i32
  br label %194

194:                                              ; preds = %191, %189, %186
  %195 = phi i32 [ %193, %191 ], [ %184, %189 ], [ %184, %186 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %196 = and i32 %195, 128
  %197 = icmp eq i32 %196, 0
  %198 = or i32 %195, -256
  %199 = select i1 %197, i32 %195, i32 %198
  %200 = mul i32 %199, 960
  %201 = sdiv i32 %200, 128
  %202 = getelementptr inbounds %struct.tda10086_state, ptr %22, i32 0, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = udiv i32 %203, 1000
  %205 = mul i32 %204, %201
  %206 = udiv i32 %205, 1000
  %207 = add i32 %206, %203
  store i32 %207, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 13, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %208, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %209, align 4
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %211, align 2
  %212 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %212, align 4
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %213, align 4
  %214 = load ptr, ptr %38, align 4
  %215 = load i8, ptr %214, align 4
  %216 = zext i8 %215 to i16
  store i16 %216, ptr %5, align 4
  %217 = load i8, ptr %214, align 4
  %218 = zext i8 %217 to i16
  store i16 %218, ptr %210, align 4
  %219 = load ptr, ptr %22, align 4
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %5, i32 noundef 2) #10
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %227, label %222

222:                                              ; preds = %194
  %223 = load i32, ptr @debug, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %222
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 13, i32 noundef %220) #8
  br label %230

227:                                              ; preds = %194
  %228 = load i8, ptr %4, align 1
  %229 = zext i8 %228 to i32
  br label %230

230:                                              ; preds = %227, %225, %222
  %231 = phi i32 [ %229, %227 ], [ %220, %225 ], [ %220, %222 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %232 = lshr i32 %231, 4
  %233 = and i32 %232, 7
  %234 = add nuw nsw i32 %233, 1
  %235 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %234, ptr %235, align 4
  br label %236

236:                                              ; preds = %230, %27
  %237 = phi i32 [ -22, %27 ], [ 0, %230 ]
  ret i32 %237
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 8
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_read_status) #8
  br label %14

14:                                               ; preds = %12, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 14, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tda10086_state, ptr %9, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %7, align 4
  %25 = load i8, ptr %22, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %17, align 4
  %27 = load ptr, ptr %9, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %7, i32 noundef 2) #10
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %35, label %30

30:                                               ; preds = %14
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 14, i32 noundef %28) #8
  br label %38

35:                                               ; preds = %14
  %36 = load i8, ptr %6, align 1
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %35, %33, %30
  %39 = phi i32 [ %37, %35 ], [ %28, %33 ], [ %28, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %40 = and i32 %39, 15
  store i32 %40, ptr %1, align 4
  %41 = and i32 %39, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %38
  %44 = or i32 %40, 16
  store i32 %44, ptr %1, align 4
  %45 = getelementptr inbounds %struct.tda10086_state, ptr %9, i32 0, i32 5
  %46 = load i8, ptr %45, align 4, !range !10
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  store i8 1, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 2, ptr %3, align 2
  %49 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i64 8589934592, ptr %4, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %50, align 8
  %51 = load ptr, ptr %21, align 4
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %4, align 8
  %54 = load ptr, ptr %9, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %4, i32 noundef 1) #10
  %56 = icmp ne i32 %55, 1
  %57 = load i32, ptr @debug, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 2, i32 noundef 0, i32 noundef %55) #8
  br label %62

62:                                               ; preds = %60, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %63

63:                                               ; preds = %62, %43, %38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_read_ber) #8
  br label %18

18:                                               ; preds = %16, %2
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 21, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tda10086_state, ptr %13, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %11, align 4
  %29 = load i8, ptr %26, align 4
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %21, align 4
  %31 = load ptr, ptr %13, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %11, i32 noundef 2) #10
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %39, label %34

34:                                               ; preds = %18
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 21, i32 noundef %32) #8
  br label %42

39:                                               ; preds = %18
  %40 = load i8, ptr %10, align 1
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %39, %37, %34
  %43 = phi i32 [ %41, %39 ], [ %32, %37 ], [ %32, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %44 = load i32, ptr %1, align 4
  %45 = or i32 %44, %43
  store i32 %45, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 22, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %51, align 4
  %52 = load ptr, ptr %25, align 4
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %8, align 4
  %55 = load i8, ptr %52, align 4
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %48, align 4
  %57 = load ptr, ptr %13, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %8, i32 noundef 2) #10
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %65, label %60

60:                                               ; preds = %42
  %61 = load i32, ptr @debug, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 22, i32 noundef %58) #8
  br label %68

65:                                               ; preds = %42
  %66 = load i8, ptr %7, align 1
  %67 = zext i8 %66 to i32
  br label %68

68:                                               ; preds = %65, %63, %60
  %69 = phi i32 [ %67, %65 ], [ %58, %63 ], [ %58, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %70 = shl i32 %69, 8
  %71 = load i32, ptr %1, align 4
  %72 = or i32 %71, %70
  store i32 %72, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 23, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %76, align 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %77, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %78, align 4
  %79 = load ptr, ptr %25, align 4
  %80 = load i8, ptr %79, align 4
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %5, align 4
  %82 = load i8, ptr %79, align 4
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %75, align 4
  %84 = load ptr, ptr %13, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %5, i32 noundef 2) #10
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %92, label %87

87:                                               ; preds = %68
  %88 = load i32, ptr @debug, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 23, i32 noundef %85) #8
  br label %95

92:                                               ; preds = %68
  %93 = load i8, ptr %4, align 1
  %94 = zext i8 %93 to i32
  br label %95

95:                                               ; preds = %92, %90, %87
  %96 = phi i32 [ %94, %92 ], [ %85, %90 ], [ %85, %87 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %97 = shl i32 %96, 16
  %98 = and i32 %97, 983040
  %99 = load i32, ptr %1, align 4
  %100 = or i32 %99, %98
  store i32 %100, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_read_signal_strength) #8
  br label %12

12:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 67, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tda10086_state, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %5, align 4
  %23 = load i8, ptr %20, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %15, align 4
  %25 = load ptr, ptr %7, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 2) #10
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %33, label %28

28:                                               ; preds = %12
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 67, i32 noundef %26) #8
  br label %36

33:                                               ; preds = %12
  %34 = load i8, ptr %4, align 1
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %33, %31, %28
  %37 = phi i32 [ %35, %33 ], [ %26, %31 ], [ %26, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %38 = trunc i32 %37 to i16
  %39 = and i16 %38, 255
  %40 = xor i16 %39, 255
  %41 = mul nuw i16 %40, 257
  store i16 %41, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_read_snr) #8
  br label %12

12:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 28, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tda10086_state, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %5, align 4
  %23 = load i8, ptr %20, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %15, align 4
  %25 = load ptr, ptr %7, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 2) #10
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %33, label %28

28:                                               ; preds = %12
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 28, i32 noundef %26) #8
  br label %36

33:                                               ; preds = %12
  %34 = load i8, ptr %4, align 1
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %33, %31, %28
  %37 = phi i32 [ %35, %33 ], [ %26, %31 ], [ %26, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %38 = trunc i32 %37 to i16
  %39 = and i16 %38, 255
  %40 = xor i16 %39, 255
  %41 = mul nuw i16 %40, 257
  store i16 %41, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 8
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_read_ucblocks) #8
  br label %16

16:                                               ; preds = %14, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 24, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tda10086_state, ptr %11, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %9, align 4
  %27 = load i8, ptr %24, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %19, align 4
  %29 = load ptr, ptr %11, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %9, i32 noundef 2) #10
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %37, label %32

32:                                               ; preds = %16
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 24, i32 noundef %30) #8
  br label %40

37:                                               ; preds = %16
  %38 = load i8, ptr %8, align 1
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %37, %35, %32
  %41 = phi i32 [ %39, %37 ], [ %30, %35 ], [ %30, %32 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %42 = and i32 %41, 127
  store i32 %42, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 24, ptr %5, align 2
  %43 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  store i64 8589934592, ptr %6, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %44, align 8
  %45 = load ptr, ptr %23, align 4
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %6, align 8
  %48 = load ptr, ptr %11, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %6, i32 noundef 1) #10
  %50 = icmp ne i32 %49, 1
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 24, i32 noundef 0, i32 noundef %49) #8
  br label %56

56:                                               ; preds = %54, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 24, ptr %3, align 2
  %57 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -128, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i64 8589934592, ptr %4, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %58, align 8
  %59 = load ptr, ptr %23, align 4
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %4, align 8
  %62 = load ptr, ptr %11, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %4, i32 noundef 1) #10
  %64 = icmp ne i32 %63, 1
  %65 = load i32, ptr @debug, align 4
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 24, i32 noundef 128, i32 noundef %63) #8
  br label %70

70:                                               ; preds = %68, %56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_send_master_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 8
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_send_master_cmd) #8
  br label %18

18:                                               ; preds = %16, %2
  %19 = getelementptr inbounds %struct.tda10086_state, ptr %13, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tda10086_config, ptr %20, i32 0, i32 2
  %22 = load i8, ptr %21, align 2
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 136, i32 8
  %25 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = icmp ugt i8 %26, 6
  br i1 %27, label %119, label %28

28:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 54, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %34, align 4
  %35 = load ptr, ptr %19, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %11, align 4
  %38 = load i8, ptr %35, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %31, align 4
  %40 = load ptr, ptr %13, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %11, i32 noundef 2) #10
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %48, label %43

43:                                               ; preds = %28
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 54, i32 noundef %41) #8
  br label %51

48:                                               ; preds = %28
  %49 = load i8, ptr %10, align 1
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %48, %46, %43
  %52 = phi i32 [ %50, %48 ], [ %41, %46 ], [ %41, %43 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %53 = load i8, ptr %25, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %7, i32 1
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  br label %58

58:                                               ; preds = %76, %55
  %59 = phi i32 [ 0, %55 ], [ %77, %76 ]
  %60 = add nuw nsw i32 %59, 72
  %61 = getelementptr [6 x i8], ptr %1, i32 0, i32 %59
  %62 = load i8, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  %63 = trunc i32 %60 to i8
  store i8 %63, ptr %7, align 2
  store i8 %62, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  store i64 8589934592, ptr %8, align 8
  store ptr %7, ptr %57, align 8
  %64 = load ptr, ptr %19, align 4
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %8, align 8
  %67 = load ptr, ptr %13, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %8, i32 noundef 1) #10
  %69 = icmp ne i32 %68, 1
  %70 = load i32, ptr @debug, align 4
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = zext i8 %62 to i32
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef %60, i32 noundef %74, i32 noundef %68) #8
  br label %76

76:                                               ; preds = %73, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %77 = add nuw nsw i32 %59, 1
  %78 = load i8, ptr %25, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %58, label %81

81:                                               ; preds = %76
  %82 = zext i8 %78 to i32
  %83 = shl nuw nsw i32 %82, 4
  %84 = add nsw i32 %83, -16
  br label %85

85:                                               ; preds = %81, %51
  %86 = phi i32 [ %84, %81 ], [ -16, %51 ]
  %87 = or i32 %86, %24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 54, ptr %5, align 2
  %88 = getelementptr inbounds i8, ptr %5, i32 1
  %89 = trunc i32 %87 to i8
  store i8 %89, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  store i64 8589934592, ptr %6, align 8
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %90, align 8
  %91 = load ptr, ptr %19, align 4
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i16
  store i16 %93, ptr %6, align 8
  %94 = load ptr, ptr %13, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %6, i32 noundef 1) #10
  %96 = icmp ne i32 %95, 1
  %97 = load i32, ptr @debug, align 4
  %98 = icmp ne i32 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 54, i32 noundef %87, i32 noundef %95) #8
  br label %102

102:                                              ; preds = %100, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call fastcc void @tda10086_diseqc_wait(ptr noundef %13)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 54, ptr %3, align 2
  %103 = getelementptr inbounds i8, ptr %3, i32 1
  %104 = trunc i32 %52 to i8
  store i8 %104, ptr %103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i64 8589934592, ptr %4, align 8
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %105, align 8
  %106 = load ptr, ptr %19, align 4
  %107 = load i8, ptr %106, align 4
  %108 = zext i8 %107 to i16
  store i16 %108, ptr %4, align 8
  %109 = load ptr, ptr %13, align 4
  %110 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %4, i32 noundef 1) #10
  %111 = icmp ne i32 %110, 1
  %112 = load i32, ptr @debug, align 4
  %113 = icmp ne i32 %112, 0
  %114 = select i1 %111, i1 %113, i1 false
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = and i32 %52, 255
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 54, i32 noundef %116, i32 noundef %110) #8
  br label %118

118:                                              ; preds = %115, %102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %119

119:                                              ; preds = %118, %18
  %120 = phi i32 [ 0, %118 ], [ -22, %18 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 8
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 54, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tda10086_state, ptr %13, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %11, align 4
  %24 = load i8, ptr %21, align 4
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %16, align 4
  %26 = load ptr, ptr %13, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %11, i32 noundef 2) #10
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  br label %44

33:                                               ; preds = %29
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 54, i32 noundef %27) #8
  br label %38

35:                                               ; preds = %2
  %36 = load i8, ptr %10, align 1
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %27, %33 ], [ %37, %35 ]
  %40 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_send_burst) #8
  br label %44

44:                                               ; preds = %42, %38, %32
  %45 = phi i32 [ %27, %32 ], [ %39, %42 ], [ %39, %38 ]
  %46 = load ptr, ptr %20, align 4
  %47 = getelementptr inbounds %struct.tda10086_config, ptr %46, i32 0, i32 2
  %48 = load i8, ptr %47, align 2
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 128, i32 0
  switch i32 %1, label %85 [
    i32 0, label %51
    i32 1, label %68
  ]

51:                                               ; preds = %44
  %52 = or i32 %50, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 54, ptr %7, align 2
  %53 = getelementptr inbounds i8, ptr %7, i32 1
  %54 = trunc i32 %52 to i8
  store i8 %54, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  store i64 8589934592, ptr %8, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %55, align 8
  %56 = load ptr, ptr %20, align 4
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %8, align 8
  %59 = load ptr, ptr %13, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %8, i32 noundef 1) #10
  %61 = icmp ne i32 %60, 1
  %62 = load i32, ptr @debug, align 4
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 54, i32 noundef %52, i32 noundef %60) #8
  br label %67

67:                                               ; preds = %65, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  br label %85

68:                                               ; preds = %44
  %69 = or i32 %50, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 54, ptr %5, align 2
  %70 = getelementptr inbounds i8, ptr %5, i32 1
  %71 = trunc i32 %69 to i8
  store i8 %71, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  store i64 8589934592, ptr %6, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %72, align 8
  %73 = load ptr, ptr %20, align 4
  %74 = load i8, ptr %73, align 4
  %75 = zext i8 %74 to i16
  store i16 %75, ptr %6, align 8
  %76 = load ptr, ptr %13, align 4
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %6, i32 noundef 1) #10
  %78 = icmp ne i32 %77, 1
  %79 = load i32, ptr @debug, align 4
  %80 = icmp ne i32 %79, 0
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 54, i32 noundef %69, i32 noundef %77) #8
  br label %84

84:                                               ; preds = %82, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %85

85:                                               ; preds = %84, %67, %44
  call fastcc void @tda10086_diseqc_wait(ptr noundef %13)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 54, ptr %3, align 2
  %86 = getelementptr inbounds i8, ptr %3, i32 1
  %87 = trunc i32 %45 to i8
  store i8 %87, ptr %86, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i64 8589934592, ptr %4, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %88, align 8
  %89 = load ptr, ptr %20, align 4
  %90 = load i8, ptr %89, align 4
  %91 = zext i8 %90 to i16
  store i16 %91, ptr %4, align 8
  %92 = load ptr, ptr %13, align 4
  %93 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %4, i32 noundef 1) #10
  %94 = icmp ne i32 %93, 1
  %95 = load i32, ptr @debug, align 4
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %101

98:                                               ; preds = %85
  %99 = and i32 %45, 255
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 54, i32 noundef %99, i32 noundef %93) #8
  br label %101

101:                                              ; preds = %98, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 8
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_set_tone) #8
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.tda10086_state, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tda10086_config, ptr %15, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 128, i32 0
  switch i32 %1, label %53 [
    i32 1, label %20
    i32 0, label %36
  ]

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 54, ptr %5, align 2
  %21 = getelementptr inbounds i8, ptr %5, i32 1
  %22 = trunc i32 %19 to i8
  store i8 %22, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  store i64 8589934592, ptr %6, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %23, align 8
  %24 = load ptr, ptr %14, align 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %6, align 8
  %27 = load ptr, ptr %8, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %6, i32 noundef 1) #10
  %29 = icmp ne i32 %28, 1
  %30 = load i32, ptr @debug, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 54, i32 noundef %19, i32 noundef %28) #8
  br label %35

35:                                               ; preds = %33, %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %53

36:                                               ; preds = %13
  %37 = or i32 %19, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 54, ptr %3, align 2
  %38 = getelementptr inbounds i8, ptr %3, i32 1
  %39 = trunc i32 %37 to i8
  store i8 %39, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i64 8589934592, ptr %4, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %40, align 8
  %41 = load ptr, ptr %14, align 4
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %4, align 8
  %44 = load ptr, ptr %8, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %4, i32 noundef 1) #10
  %46 = icmp ne i32 %45, 1
  %47 = load i32, ptr @debug, align 4
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef 54, i32 noundef %37, i32 noundef %45) #8
  br label %52

52:                                               ; preds = %50, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %53

53:                                               ; preds = %52, %35, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10086_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10086_i2c_gate_ctrl) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = icmp eq i32 %1, 0
  %11 = select i1 %10, i32 0, i32 16
  tail call fastcc void @tda10086_write_mask(ptr noundef %4, i32 noundef 0, i32 noundef 16, i32 noundef %11)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda10086_write_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  %10 = trunc i32 %1 to i8
  store i8 %10, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tda10086_state, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %9, align 4
  %21 = load i8, ptr %18, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %13, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %9, i32 noundef 2) #10
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef %1, i32 noundef %24) #8
  br label %34

31:                                               ; preds = %4
  %32 = load i8, ptr %8, align 1
  %33 = zext i8 %32 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  br label %36

34:                                               ; preds = %29, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %35 = icmp slt i32 %24, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %24, %34 ]
  %38 = xor i32 %2, -1
  %39 = and i32 %37, %38
  %40 = and i32 %3, 255
  %41 = or i32 %39, %40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 %10, ptr %5, align 2
  %42 = getelementptr inbounds i8, ptr %5, i32 1
  %43 = trunc i32 %41 to i8
  store i8 %43, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  store i64 8589934592, ptr %6, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %44, align 8
  %45 = load ptr, ptr %17, align 4
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %6, align 8
  %48 = load ptr, ptr %0, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %6, i32 noundef 1) #10
  %50 = icmp ne i32 %49, 1
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10086_write_byte, i32 noundef %1, i32 noundef %41, i32 noundef %49) #8
  br label %56

56:                                               ; preds = %54, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %57

57:                                               ; preds = %56, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda10086_diseqc_wait(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, 20
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  %13 = getelementptr inbounds %struct.tda10086_state, ptr %0, i32 0, i32 1
  br label %14

14:                                               ; preds = %41, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 80, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false) #10
  store i16 1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store i16 1, ptr %10, align 2
  store i16 1, ptr %11, align 4
  store ptr %3, ptr %12, align 4
  %15 = load ptr, ptr %13, align 4
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %4, align 4
  %18 = load i8, ptr %15, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %9, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 2) #10
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10086_read_byte, i32 noundef 80, i32 noundef %21) #8
  br label %31

28:                                               ; preds = %14
  %29 = load i8, ptr %3, align 1
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %28, %26, %23
  %32 = phi i32 [ %30, %28 ], [ %21, %26 ], [ %21, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = sub i32 %6, %36
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.tda10086_diseqc_wait) #8
  br label %42

41:                                               ; preds = %35
  call void @msleep(i32 noundef 10) #10
  br label %14

42:                                               ; preds = %39, %31
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 432947, i64 432974}
!9 = !{i64 433642, i64 433669, i64 433702, i64 433723, i64 433750, i64 433776}
!10 = !{i8 0, i8 2}
