; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv0299.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0299.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0299_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0299_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0299_attach:\09\09\09\09\09"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0299_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i32, i32, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@stv0299_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0299 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @stv0299_release, ptr null, ptr @stv0299_init, ptr @stv0299_sleep, ptr null, ptr null, ptr @stv0299_write, ptr null, ptr null, ptr @stv0299_set_frontend, ptr @stv0299_get_tune_settings, ptr @stv0299_get_frontend, ptr @stv0299_read_status, ptr @stv0299_read_ber, ptr @stv0299_read_signal_strength, ptr @stv0299_read_snr, ptr @stv0299_read_ucblocks, ptr null, ptr @stv0299_send_diseqc_msg, ptr null, ptr @stv0299_send_diseqc_burst, ptr @stv0299_set_tone, ptr @stv0299_set_voltage, ptr null, ptr @stv0299_send_legacy_dish_cmd, ptr @stv0299_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug_legacy_dish_switch = internal constant [25 x i8] c"debug_legacy_dish_switch\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug_legacy_dish_switch = internal global i32 0, align 4
@__param_debug_legacy_dish_switch = internal constant %struct.kernel_param { ptr @__param_str_debug_legacy_dish_switch, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.66 { ptr @debug_legacy_dish_switch } }, section "__param", align 4
@__UNIQUE_ID_debug_legacy_dish_switchtype249 = internal constant [38 x i8] c"parmtype=debug_legacy_dish_switch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_legacy_dish_switch250 = internal constant [86 x i8] c"parm=debug_legacy_dish_switch:Enable timing analysis for Dish Network legacy switches\00", section ".modinfo", align 1
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [46 x i8] c"description=ST STV0299 DVB Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [124 x i8] c"author=Ralph Metzler, Holger Waechtler, Peter Schildmann, Felix Domke, Andreas Oberritter, Andrew de Quincey, Kenneth Aafly\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_stv0299_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0299_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0299_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0299_attach to i32), ptr @__kstrtab_stv0299_attach, ptr @__kstrtabns_stv0299_attach }, section "___ksymtab+stv0299_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [73 x i8] c"\017stv0299: %s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.stv0299_writeregI = private unnamed_addr constant [18 x i8] c"stv0299_writeregI\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"\017stv0299: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.stv0299_readreg = private unnamed_addr constant [16 x i8] c"stv0299_readreg\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\017stv0299: stv0299: init chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\017stv0299: %s : FE_SET_FRONTEND\0A\00", align 1
@__func__.stv0299_set_frontend = private unnamed_addr constant [21 x i8] c"stv0299_set_frontend\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"stv0299 does not support auto-inversion\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\017stv0299: %s\0A\00", align 1
@__func__.stv0299_set_FEC = private unnamed_addr constant [16 x i8] c"stv0299_set_FEC\00", align 1
@stv0299_get_fec.fec_tab = internal unnamed_addr constant [5 x i32] [i32 2, i32 3, i32 5, i32 7, i32 1], align 4
@__func__.stv0299_get_fec = private unnamed_addr constant [16 x i8] c"stv0299_get_fec\00", align 1
@__func__.stv0299_get_symbolrate = private unnamed_addr constant [23 x i8] c"stv0299_get_symbolrate\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"\017stv0299: %s : srate = %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\017stv0299: %s : ofset = %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\017stv0299: %s: readreg error (ret == %i)\0A\00", align 1
@__func__.stv0299_readregs = private unnamed_addr constant [17 x i8] c"stv0299_readregs\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"\017stv0299: %s : FE_READ_STATUS : VSTATUS: 0x%02x\0A\00", align 1
@__func__.stv0299_read_status = private unnamed_addr constant [20 x i8] c"stv0299_read_status\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"\017stv0299: %s : FE_READ_SIGNAL_STRENGTH : AGC2I: 0x%02x%02x, signal=0x%04x\0A\00", align 1
@__func__.stv0299_read_signal_strength = private unnamed_addr constant [29 x i8] c"stv0299_read_signal_strength\00", align 1
@__func__.stv0299_send_diseqc_msg = private unnamed_addr constant [24 x i8] c"stv0299_send_diseqc_msg\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.stv0299_wait_diseqc_idle = private unnamed_addr constant [25 x i8] c"stv0299_wait_diseqc_idle\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\017stv0299: %s: timeout!!\0A\00", align 1
@__func__.stv0299_wait_diseqc_fifo = private unnamed_addr constant [25 x i8] c"stv0299_wait_diseqc_fifo\00", align 1
@__func__.stv0299_send_diseqc_burst = private unnamed_addr constant [26 x i8] c"stv0299_send_diseqc_burst\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\017stv0299: %s: %s\0A\00", align 1
@__func__.stv0299_set_voltage = private unnamed_addr constant [20 x i8] c"stv0299_set_voltage\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_13\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_18\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"%s switch command: 0x%04lx\0A\00", align 1
@__func__.stv0299_send_legacy_dish_cmd = private unnamed_addr constant [29 x i8] c"stv0299_send_legacy_dish_cmd\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"%s(%d): switch delay (should be 32k followed by all 8k\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debug_legacy_dish_switch250, ptr @__UNIQUE_ID_debug_legacy_dish_switchtype249, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_stv0299_attach, ptr @__param_debug, ptr @__param_debug_legacy_dish_switch], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv0299_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1076) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.stv0299_state, ptr %9, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  store ptr %1, ptr %9, align 8
  %13 = getelementptr inbounds %struct.stv0299_state, ptr %9, i32 0, i32 3
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, -2
  store i8 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.stv0299_state, ptr %9, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 2, ptr %6, align 2
  %17 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 48, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %18 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %18, align 4, !annotation !8
  %19 = load i8, ptr %0, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %7, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %22, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 1) #10
  %24 = icmp ne i32 %23, 1
  %25 = load i32, ptr @debug, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 2, i32 noundef 48, i32 noundef %23) #11
  br label %30

30:                                               ; preds = %28, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @msleep(i32 noundef 200) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %31 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #10, !annotation !8
  %32 = load i8, ptr %0, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 1, ptr %31, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %39, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #10
  %41 = icmp ne i32 %40, 2
  %42 = load i32, ptr @debug, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 0, i32 noundef %40) #11
  br label %47

47:                                               ; preds = %45, %30
  %48 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  switch i8 %48, label %53 [
    i8 -95, label %49
    i8 -128, label %49
  ]

49:                                               ; preds = %47, %47
  %50 = getelementptr inbounds %struct.stv0299_state, ptr %9, i32 0, i32 2
  %51 = getelementptr inbounds %struct.stv0299_state, ptr %9, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %51, ptr noundef nonnull align 4 dereferenceable(544) @stv0299_ops, i32 544, i1 false)
  %52 = getelementptr inbounds %struct.stv0299_state, ptr %9, i32 0, i32 2, i32 3
  store ptr %9, ptr %52, align 8
  br label %54

53:                                               ; preds = %47, %2
  call void @kfree(ptr noundef %9) #10
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi ptr [ null, %53 ], [ %50, %49 ]
  ret ptr %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stv0299_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.stv0299_state, ptr %7, i32 0, i32 9
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, 48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 2, ptr %4, align 2
  %16 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %15, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %17 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %17, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.stv0299_state, ptr %7, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %5, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %23, align 4
  %24 = load ptr, ptr %7, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 1) #10
  %26 = icmp ne i32 %25, 1
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %33

30:                                               ; preds = %12
  %31 = zext i8 %15 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 2, i32 noundef %31, i32 noundef %25) #11
  br label %33

33:                                               ; preds = %30, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @msleep(i32 noundef 50) #10
  %34 = load ptr, ptr %18, align 4
  %35 = getelementptr inbounds %struct.stv0299_config, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr i8, ptr %36, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %37, -1
  %41 = icmp eq i8 %39, -1
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %90, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds i8, ptr %2, i32 1
  %45 = getelementptr inbounds i8, ptr %3, i32 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %48

48:                                               ; preds = %77, %43
  %49 = phi i8 [ %39, %43 ], [ %86, %77 ]
  %50 = phi i8 [ %37, %43 ], [ %83, %77 ]
  %51 = phi ptr [ %34, %43 ], [ %79, %77 ]
  %52 = phi i32 [ 0, %43 ], [ %78, %77 ]
  switch i8 %50, label %62 [
    i8 12, label %53
    i8 2, label %60
  ]

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.stv0299_config, ptr %51, i32 0, i32 3
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 32
  %57 = icmp eq i8 %56, 0
  %58 = and i8 %49, -17
  %59 = select i1 %57, i8 %49, i8 %58
  br label %62

60:                                               ; preds = %48
  %61 = and i8 %49, 15
  store i8 %61, ptr %13, align 4
  br label %62

62:                                               ; preds = %60, %53, %48
  %63 = phi i8 [ %59, %53 ], [ %49, %60 ], [ %49, %48 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 %50, ptr %2, align 2
  store i8 %63, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %45, align 4, !annotation !8
  %64 = load ptr, ptr %18, align 4
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %3, align 4
  store i16 0, ptr %46, align 2
  store i16 2, ptr %45, align 4
  store ptr %2, ptr %47, align 4
  %67 = load ptr, ptr %7, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %3, i32 noundef 1) #10
  %69 = icmp ne i32 %68, 1
  %70 = load i32, ptr @debug, align 4
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = zext i8 %50 to i32
  %75 = zext i8 %63 to i32
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef %74, i32 noundef %75, i32 noundef %68) #11
  br label %77

77:                                               ; preds = %73, %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %78 = add i32 %52, 2
  %79 = load ptr, ptr %18, align 4
  %80 = getelementptr inbounds %struct.stv0299_config, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 %78
  %83 = load i8, ptr %82, align 1
  %84 = or i32 %78, 1
  %85 = getelementptr i8, ptr %81, i32 %84
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %83, -1
  %88 = icmp eq i8 %86, -1
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %48

90:                                               ; preds = %77, %33
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0299_state, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, -80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 2, ptr %2, align 2
  %9 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %8, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %10 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.stv0299_state, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %3, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %16, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %3, i32 noundef 1) #10
  %19 = icmp ne i32 %18, 1
  %20 = load i32, ptr @debug, align 4
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = zext i8 %8 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 2, i32 noundef %24, i32 noundef %18) #11
  br label %26

26:                                               ; preds = %23, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %27 = getelementptr inbounds %struct.stv0299_state, ptr %5, i32 0, i32 3
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, -2
  store i8 %29, ptr %27, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %1, align 1
  %11 = getelementptr i8, ptr %1, i32 1
  %12 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 %10, ptr %4, align 2
  %13 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %12, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.stv0299_state, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #10
  %23 = icmp ne i32 %22, 1
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = zext i8 %10 to i32
  %29 = zext i8 %12 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef %28, i32 noundef %29, i32 noundef %22) #11
  br label %31

31:                                               ; preds = %27, %7
  %32 = select i1 %23, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi i32 [ %32, %31 ], [ -22, %3 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [1 x i8], align 1
  %21 = alloca [1 x i8], align 1
  %22 = alloca [2 x %struct.i2c_msg], align 4
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr @debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.stv0299_set_frontend) #11
  br label %30

30:                                               ; preds = %28, %1
  %31 = getelementptr inbounds %struct.stv0299_state, ptr %25, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.stv0299_config, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call i32 %34(ptr noundef %0, i32 noundef 0) #10
  br label %38

38:                                               ; preds = %36, %30
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %274

44:                                               ; preds = %38
  %45 = load ptr, ptr %31, align 4
  %46 = getelementptr inbounds %struct.stv0299_config, ptr %45, i32 0, i32 3
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #10
  store i8 12, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #10
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #10
  %49 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %49, i8 0, i32 16, i1 false) #10, !annotation !8
  %50 = load ptr, ptr %31, align 4
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %22, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %53, align 2
  store i16 1, ptr %49, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %20, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1
  %56 = load i8, ptr %50, align 4
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 1
  store i16 1, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 2
  store i16 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 3
  store ptr %21, ptr %60, align 4
  %61 = load ptr, ptr %25, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %22, i32 noundef 2) #10
  %63 = icmp ne i32 %62, 2
  %64 = load i32, ptr @debug, align 4
  %65 = icmp ne i32 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %69

67:                                               ; preds = %44
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 12, i32 noundef %62) #11
  br label %69

69:                                               ; preds = %67, %44
  %70 = load i8, ptr %21, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #10
  %71 = and i8 %70, -2
  %72 = trunc i32 %40 to i8
  %73 = xor i8 %48, %72
  %74 = or i8 %71, %73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i8 12, ptr %18, align 2
  %75 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %74, ptr %75, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %76 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 0, ptr %76, align 4, !annotation !8
  %77 = load ptr, ptr %31, align 4
  %78 = load i8, ptr %77, align 4
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %19, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %80, align 2
  store i16 2, ptr %76, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %81, align 4
  %82 = load ptr, ptr %25, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %19, i32 noundef 1) #10
  %84 = icmp ne i32 %83, 1
  %85 = load i32, ptr @debug, align 4
  %86 = icmp ne i32 %85, 0
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %91

88:                                               ; preds = %69
  %89 = zext i8 %74 to i32
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 12, i32 noundef %89, i32 noundef %83) #11
  br label %91

91:                                               ; preds = %88, %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = call i32 %93(ptr noundef %0) #10
  %97 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = call i32 %98(ptr noundef %0, i32 noundef 0) #10
  br label %102

102:                                              ; preds = %100, %95, %91
  %103 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = load i32, ptr @debug, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stv0299_set_FEC) #11
  br label %109

109:                                              ; preds = %107, %102
  switch i32 %104, label %212 [
    i32 9, label %110
    i32 1, label %127
    i32 2, label %144
    i32 3, label %161
    i32 5, label %178
    i32 7, label %195
  ]

110:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i8 49, ptr %16, align 2
  %111 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 31, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %112 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %112, align 4, !annotation !8
  %113 = load ptr, ptr %31, align 4
  %114 = load i8, ptr %113, align 4
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %17, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %116, align 2
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %117, align 4
  %118 = load ptr, ptr %25, align 4
  %119 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %17, i32 noundef 1) #10
  %120 = icmp ne i32 %119, 1
  %121 = load i32, ptr @debug, align 4
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %126

124:                                              ; preds = %110
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 49, i32 noundef 31, i32 noundef %119) #11
  br label %126

126:                                              ; preds = %124, %110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  br label %212

127:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i8 49, ptr %14, align 2
  %128 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 1, ptr %128, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %129 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %129, align 4, !annotation !8
  %130 = load ptr, ptr %31, align 4
  %131 = load i8, ptr %130, align 4
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %15, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %134, align 4
  %135 = load ptr, ptr %25, align 4
  %136 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %15, i32 noundef 1) #10
  %137 = icmp ne i32 %136, 1
  %138 = load i32, ptr @debug, align 4
  %139 = icmp ne i32 %138, 0
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 49, i32 noundef 1, i32 noundef %136) #11
  br label %143

143:                                              ; preds = %141, %127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  br label %212

144:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i8 49, ptr %12, align 2
  %145 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 2, ptr %145, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %146 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %146, align 4, !annotation !8
  %147 = load ptr, ptr %31, align 4
  %148 = load i8, ptr %147, align 4
  %149 = zext i8 %148 to i16
  store i16 %149, ptr %13, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %150, align 2
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %151, align 4
  %152 = load ptr, ptr %25, align 4
  %153 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %13, i32 noundef 1) #10
  %154 = icmp ne i32 %153, 1
  %155 = load i32, ptr @debug, align 4
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %160

158:                                              ; preds = %144
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 49, i32 noundef 2, i32 noundef %153) #11
  br label %160

160:                                              ; preds = %158, %144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  br label %212

161:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i8 49, ptr %10, align 2
  %162 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 4, ptr %162, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %163 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %163, align 4, !annotation !8
  %164 = load ptr, ptr %31, align 4
  %165 = load i8, ptr %164, align 4
  %166 = zext i8 %165 to i16
  store i16 %166, ptr %11, align 4
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %167, align 2
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %168, align 4
  %169 = load ptr, ptr %25, align 4
  %170 = call i32 @i2c_transfer(ptr noundef %169, ptr noundef nonnull %11, i32 noundef 1) #10
  %171 = icmp ne i32 %170, 1
  %172 = load i32, ptr @debug, align 4
  %173 = icmp ne i32 %172, 0
  %174 = select i1 %171, i1 %173, i1 false
  br i1 %174, label %175, label %177

175:                                              ; preds = %161
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 49, i32 noundef 4, i32 noundef %170) #11
  br label %177

177:                                              ; preds = %175, %161
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  br label %212

178:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 49, ptr %8, align 2
  %179 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 8, ptr %179, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %180 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %180, align 4, !annotation !8
  %181 = load ptr, ptr %31, align 4
  %182 = load i8, ptr %181, align 4
  %183 = zext i8 %182 to i16
  store i16 %183, ptr %9, align 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %184, align 2
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %185, align 4
  %186 = load ptr, ptr %25, align 4
  %187 = call i32 @i2c_transfer(ptr noundef %186, ptr noundef nonnull %9, i32 noundef 1) #10
  %188 = icmp ne i32 %187, 1
  %189 = load i32, ptr @debug, align 4
  %190 = icmp ne i32 %189, 0
  %191 = select i1 %188, i1 %190, i1 false
  br i1 %191, label %192, label %194

192:                                              ; preds = %178
  %193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 49, i32 noundef 8, i32 noundef %187) #11
  br label %194

194:                                              ; preds = %192, %178
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  br label %212

195:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 49, ptr %6, align 2
  %196 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 16, ptr %196, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %197 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %197, align 4, !annotation !8
  %198 = load ptr, ptr %31, align 4
  %199 = load i8, ptr %198, align 4
  %200 = zext i8 %199 to i16
  store i16 %200, ptr %7, align 4
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %201, align 2
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %202, align 4
  %203 = load ptr, ptr %25, align 4
  %204 = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %7, i32 noundef 1) #10
  %205 = icmp ne i32 %204, 1
  %206 = load i32, ptr @debug, align 4
  %207 = icmp ne i32 %206, 0
  %208 = select i1 %205, i1 %207, i1 false
  br i1 %208, label %209, label %211

209:                                              ; preds = %195
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 49, i32 noundef 16, i32 noundef %204) #11
  br label %211

211:                                              ; preds = %209, %195
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  br label %212

212:                                              ; preds = %211, %194, %177, %160, %143, %126, %109
  %213 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, -45000001
  %216 = icmp ult i32 %215, -44000001
  br i1 %216, label %235, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr %24, align 4
  %219 = getelementptr inbounds %struct.stv0299_state, ptr %218, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = zext i32 %214 to i64
  %222 = shl nuw nsw i64 %221, 20
  %223 = getelementptr inbounds %struct.stv0299_config, ptr %220, i32 0, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, -1
  %226 = zext i32 %225 to i64
  %227 = add nuw nsw i64 %222, %226
  %228 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %224, i64 %227) #12, !srcloc !9
  %229 = extractvalue { i64, i64 } %228, 1
  %230 = trunc i64 %229 to i32
  %231 = shl i32 %230, 4
  %232 = getelementptr inbounds %struct.stv0299_config, ptr %220, i32 0, i32 5
  %233 = load ptr, ptr %232, align 4
  %234 = call i32 %233(ptr noundef %0, i32 noundef %214, i32 noundef %231) #10
  br label %235

235:                                              ; preds = %217, %212
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 34, ptr %4, align 2
  %236 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %236, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %237 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %237, align 4, !annotation !8
  %238 = load ptr, ptr %31, align 4
  %239 = load i8, ptr %238, align 4
  %240 = zext i8 %239 to i16
  store i16 %240, ptr %5, align 4
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %241, align 2
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %242, align 4
  %243 = load ptr, ptr %25, align 4
  %244 = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %5, i32 noundef 1) #10
  %245 = icmp ne i32 %244, 1
  %246 = load i32, ptr @debug, align 4
  %247 = icmp ne i32 %246, 0
  %248 = select i1 %245, i1 %247, i1 false
  br i1 %248, label %249, label %251

249:                                              ; preds = %235
  %250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 34, i32 noundef 0, i32 noundef %244) #11
  br label %251

251:                                              ; preds = %249, %235
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 35, ptr %2, align 2
  %252 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %252, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %253 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %253, align 4, !annotation !8
  %254 = load ptr, ptr %31, align 4
  %255 = load i8, ptr %254, align 4
  %256 = zext i8 %255 to i16
  store i16 %256, ptr %3, align 4
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %257, align 2
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %258, align 4
  %259 = load ptr, ptr %25, align 4
  %260 = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %3, i32 noundef 1) #10
  %261 = icmp ne i32 %260, 1
  %262 = load i32, ptr @debug, align 4
  %263 = icmp ne i32 %262, 0
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %265, label %267

265:                                              ; preds = %251
  %266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 35, i32 noundef 0, i32 noundef %260) #11
  br label %267

267:                                              ; preds = %265, %251
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %268 = load i32, ptr %23, align 4
  %269 = getelementptr inbounds %struct.stv0299_state, ptr %25, i32 0, i32 4
  store i32 %268, ptr %269, align 4
  %270 = load i32, ptr %103, align 4
  %271 = getelementptr inbounds %struct.stv0299_state, ptr %25, i32 0, i32 6
  store i32 %270, ptr %271, align 4
  %272 = load i32, ptr %213, align 4
  %273 = getelementptr inbounds %struct.stv0299_state, ptr %25, i32 0, i32 5
  store i32 %272, ptr %273, align 4
  br label %274

274:                                              ; preds = %267, %42
  %275 = phi i32 [ 0, %267 ], [ -22, %42 ]
  ret i32 %275
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stv0299_get_tune_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv0299_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stv0299_config, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %1, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 10000000
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = udiv i32 %10, 32000
  %14 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  br label %20

15:                                               ; preds = %2
  %16 = udiv i32 %10, 16000
  %17 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %9, align 4
  %19 = udiv i32 %18, 2000
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i32 [ 5000, %12 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 34, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #10
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #10
  %23 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %23, i8 0, i32 16, i1 false) #10, !annotation !8
  %24 = getelementptr inbounds %struct.stv0299_state, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %20, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 1, ptr %23, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %31 = load i8, ptr %25, align 4
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %35, align 4
  %36 = load ptr, ptr %22, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %20, i32 noundef 2) #10
  %38 = icmp ne i32 %37, 2
  %39 = load i32, ptr @debug, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 34, i32 noundef %37) #11
  br label %44

44:                                               ; preds = %42, %2
  %45 = load i8, ptr %19, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  %46 = zext i8 %45 to i16
  %47 = shl nuw i16 %46, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #10
  store i8 35, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  %48 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %48, i8 0, i32 16, i1 false) #10, !annotation !8
  %49 = load ptr, ptr %24, align 4
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %17, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %52, align 2
  store i16 1, ptr %48, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %53, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %55 = load i8, ptr %49, align 4
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %54, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %59, align 4
  %60 = load ptr, ptr %22, align 4
  %61 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %17, i32 noundef 2) #10
  %62 = icmp ne i32 %61, 2
  %63 = load i32, ptr @debug, align 4
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %68

66:                                               ; preds = %44
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 35, i32 noundef %61) #11
  br label %68

68:                                               ; preds = %66, %44
  %69 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  %70 = zext i8 %69 to i16
  %71 = or i16 %47, %70
  %72 = sext i16 %71 to i32
  %73 = load ptr, ptr %24, align 4
  %74 = getelementptr inbounds %struct.stv0299_config, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = lshr i32 %75, 16
  %77 = mul nsw i32 %76, %72
  %78 = add nsw i32 %77, 500
  %79 = sdiv i32 %78, 1000
  %80 = load i32, ptr %1, align 4
  %81 = add i32 %79, %80
  store i32 %81, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 12, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %82 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %82, i8 0, i32 16, i1 false) #10, !annotation !8
  %83 = load ptr, ptr %24, align 4
  %84 = load i8, ptr %83, align 4
  %85 = zext i8 %84 to i16
  store i16 %85, ptr %14, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %86, align 2
  store i16 1, ptr %82, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %87, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %89 = load i8, ptr %83, align 4
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %88, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %91, align 2
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %93, align 4
  %94 = load ptr, ptr %22, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %14, i32 noundef 2) #10
  %96 = icmp ne i32 %95, 2
  %97 = load i32, ptr @debug, align 4
  %98 = icmp ne i32 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %103

100:                                              ; preds = %68
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 12, i32 noundef %95) #11
  %102 = load i32, ptr @debug, align 4
  br label %103

103:                                              ; preds = %100, %68
  %104 = phi i32 [ %97, %68 ], [ %102, %100 ]
  %105 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %106 = load ptr, ptr %24, align 4
  %107 = getelementptr inbounds %struct.stv0299_config, ptr %106, i32 0, i32 3
  %108 = load i8, ptr %107, align 4
  %109 = xor i8 %108, %105
  %110 = and i8 %109, 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %111, ptr %112, align 4
  %113 = icmp eq i32 %104, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stv0299_get_fec) #11
  br label %116

116:                                              ; preds = %114, %103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 27, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %117 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %117, i8 0, i32 16, i1 false) #10, !annotation !8
  %118 = load ptr, ptr %24, align 4
  %119 = load i8, ptr %118, align 4
  %120 = zext i8 %119 to i16
  store i16 %120, ptr %11, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %121, align 2
  store i16 1, ptr %117, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %122, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %124 = load i8, ptr %118, align 4
  %125 = zext i8 %124 to i16
  store i16 %125, ptr %123, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %126, align 2
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %127, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %128, align 4
  %129 = load ptr, ptr %22, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %11, i32 noundef 2) #10
  %131 = icmp ne i32 %130, 2
  %132 = load i32, ptr @debug, align 4
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %137

135:                                              ; preds = %116
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 27, i32 noundef %130) #11
  br label %137

137:                                              ; preds = %135, %116
  %138 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %139 = and i8 %138, 7
  %140 = icmp ugt i8 %139, 4
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = zext i8 %139 to i32
  %143 = getelementptr [5 x i32], ptr @stv0299_get_fec.fec_tab, i32 0, i32 %142
  %144 = load i32, ptr %143, align 4
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i32 [ %144, %141 ], [ 9, %137 ]
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %146, ptr %147, align 4
  %148 = load ptr, ptr %24, align 4
  %149 = getelementptr inbounds %struct.stv0299_config, ptr %148, i32 0, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = lshr i32 %150, 12
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %7, i8 0, i32 3, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1, !annotation !8
  %152 = load i32, ptr @debug, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %145
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stv0299_get_symbolrate) #11
  %156 = load ptr, ptr %24, align 4
  br label %157

157:                                              ; preds = %154, %145
  %158 = phi ptr [ %156, %154 ], [ %148, %145 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 31, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %159 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %159, i8 0, i32 16, i1 false) #10, !annotation !8
  %160 = load i8, ptr %158, align 4
  %161 = zext i8 %160 to i16
  store i16 %161, ptr %6, align 4
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %162, align 2
  store i16 1, ptr %159, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %163, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %165 = load i8, ptr %158, align 4
  %166 = zext i8 %165 to i16
  store i16 %166, ptr %164, align 4
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %167, align 2
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 3, ptr %168, align 4
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %169, align 4
  %170 = load ptr, ptr %22, align 4
  %171 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %6, i32 noundef 2) #10
  %172 = icmp ne i32 %171, 2
  %173 = load i32, ptr @debug, align 4
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %178

176:                                              ; preds = %157
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0299_readregs, i32 noundef %171) #11
  br label %178

178:                                              ; preds = %176, %157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 26, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %179 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %179, i8 0, i32 16, i1 false) #10, !annotation !8
  %180 = load ptr, ptr %24, align 4
  %181 = load i8, ptr %180, align 4
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %4, align 4
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %183, align 2
  store i16 1, ptr %179, align 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %184, align 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %186 = load i8, ptr %180, align 4
  %187 = zext i8 %186 to i16
  store i16 %187, ptr %185, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %188, align 2
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %189, align 4
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %8, ptr %190, align 4
  %191 = load ptr, ptr %22, align 4
  %192 = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %4, i32 noundef 2) #10
  %193 = icmp ne i32 %192, 2
  %194 = load i32, ptr @debug, align 4
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %193, i1 %195, i1 false
  br i1 %196, label %197, label %200

197:                                              ; preds = %178
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0299_readregs, i32 noundef %192) #11
  %199 = load i32, ptr @debug, align 4
  br label %200

200:                                              ; preds = %197, %178
  %201 = phi i32 [ %194, %178 ], [ %199, %197 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %202 = load i8, ptr %7, align 1
  %203 = zext i8 %202 to i32
  %204 = shl nuw nsw i32 %203, 8
  %205 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = or i32 %204, %207
  %209 = mul i32 %208, %151
  %210 = lshr i32 %209, 4
  %211 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 2
  %212 = load i8, ptr %211, align 1
  %213 = lshr i8 %212, 4
  %214 = zext i8 %213 to i32
  %215 = mul nuw nsw i32 %151, %214
  %216 = lshr i32 %215, 8
  %217 = add nuw nsw i32 %216, %210
  %218 = load i8, ptr %8, align 1
  %219 = sext i8 %218 to i32
  %220 = lshr i32 %217, 12
  %221 = mul nsw i32 %220, %219
  %222 = sdiv i32 %221, 128
  %223 = icmp eq i32 %201, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %200
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.stv0299_get_symbolrate, i32 noundef %217) #11
  %226 = load i32, ptr @debug, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0299_get_symbolrate, i32 noundef %222) #11
  br label %230

230:                                              ; preds = %228, %224, %200
  %231 = add nuw nsw i32 %217, 1000
  %232 = add nsw i32 %231, %222
  %233 = urem i32 %232, 2000
  %234 = sub nsw i32 %232, %233
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #10
  %235 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %234, ptr %235, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 24, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.stv0299_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #10
  %26 = icmp ne i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 24, i32 noundef %25) #11
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 27, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %34 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #10, !annotation !8
  %35 = load ptr, ptr %12, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %38, align 2
  store i16 1, ptr %34, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %41 = load i8, ptr %35, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %45, align 4
  %46 = load ptr, ptr %10, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %5, i32 noundef 2) #10
  %48 = icmp ne i32 %47, 2
  %49 = load i32, ptr @debug, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 27, i32 noundef %47) #11
  %54 = load i32, ptr @debug, align 4
  br label %55

55:                                               ; preds = %52, %32
  %56 = phi i32 [ %49, %32 ], [ %54, %52 ]
  %57 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %58 = icmp eq i32 %56, 0
  %59 = zext i8 %57 to i32
  br i1 %58, label %62, label %60

60:                                               ; preds = %55
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.stv0299_read_status, i32 noundef %59) #11
  br label %62

62:                                               ; preds = %60, %55
  %63 = icmp ult i8 %33, -11
  %64 = zext i1 %63 to i32
  %65 = lshr i32 %59, 6
  %66 = and i32 %65, 2
  %67 = or i32 %66, %64
  %68 = lshr i32 %59, 2
  %69 = and i32 %68, 4
  %70 = or i32 %69, %67
  %71 = and i32 %59, 8
  %72 = or i32 %71, %70
  %73 = and i32 %59, 152
  %74 = icmp eq i32 %73, 152
  %75 = or i32 %72, 16
  %76 = select i1 %74, i32 %75, i32 %72
  store i32 %76, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stv0299_state, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 30, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #10, !annotation !8
  %16 = getelementptr inbounds %struct.stv0299_state, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %8, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 1, ptr %15, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %23 = load i8, ptr %17, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %27, align 4
  %28 = load ptr, ptr %10, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %8, i32 noundef 2) #10
  %30 = icmp ne i32 %29, 2
  %31 = load i32, ptr @debug, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 30, i32 noundef %29) #11
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %38 = zext i8 %37 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 29, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %39 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %39, i8 0, i32 16, i1 false) #10, !annotation !8
  %40 = load ptr, ptr %16, align 4
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %5, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %43, align 2
  store i16 1, ptr %39, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %46 = load i8, ptr %40, align 4
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %50, align 4
  %51 = load ptr, ptr %10, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %5, i32 noundef 2) #10
  %53 = icmp ne i32 %52, 2
  %54 = load i32, ptr @debug, align 4
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 29, i32 noundef %52) #11
  br label %59

59:                                               ; preds = %57, %36
  %60 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or i32 %62, %38
  store i32 %63, ptr %1, align 4
  br label %64

64:                                               ; preds = %59, %2
  %65 = phi i32 [ 0, %59 ], [ -38, %2 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
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
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 24, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %17 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #10, !annotation !8
  %18 = getelementptr inbounds %struct.stv0299_state, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %14, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %17, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %25 = load i8, ptr %19, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %29, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %14, i32 noundef 2) #10
  %32 = icmp ne i32 %31, 2
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 24, i32 noundef %31) #11
  br label %38

38:                                               ; preds = %36, %2
  %39 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 25, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %42 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %42, i8 0, i32 16, i1 false) #10, !annotation !8
  %43 = load ptr, ptr %18, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %11, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %46, align 2
  store i16 1, ptr %42, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %49 = load i8, ptr %43, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %53, align 4
  %54 = load ptr, ptr %16, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %11, i32 noundef 2) #10
  %56 = icmp ne i32 %55, 2
  %57 = load i32, ptr @debug, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 25, i32 noundef %55) #11
  %62 = load i32, ptr @debug, align 4
  br label %63

63:                                               ; preds = %60, %38
  %64 = phi i32 [ %57, %38 ], [ %62, %60 ]
  %65 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %66 = zext i8 %65 to i32
  %67 = or i32 %41, %66
  %68 = xor i32 %67, 65535
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %118, label %70

70:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 24, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %71 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %71, i8 0, i32 16, i1 false) #10, !annotation !8
  %72 = load ptr, ptr %18, align 4
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %8, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %75, align 2
  store i16 1, ptr %71, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %78 = load i8, ptr %72, align 4
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %80, align 2
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %82, align 4
  %83 = load ptr, ptr %16, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %8, i32 noundef 2) #10
  %85 = icmp ne i32 %84, 2
  %86 = load i32, ptr @debug, align 4
  %87 = icmp ne i32 %86, 0
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %91

89:                                               ; preds = %70
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 24, i32 noundef %84) #11
  br label %91

91:                                               ; preds = %89, %70
  %92 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %93 = zext i8 %92 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 25, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %94 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %94, i8 0, i32 16, i1 false) #10, !annotation !8
  %95 = load ptr, ptr %18, align 4
  %96 = load i8, ptr %95, align 4
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %5, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %98, align 2
  store i16 1, ptr %94, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %99, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %101 = load i8, ptr %95, align 4
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %100, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %104, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %105, align 4
  %106 = load ptr, ptr %16, align 4
  %107 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %5, i32 noundef 2) #10
  %108 = icmp ne i32 %107, 2
  %109 = load i32, ptr @debug, align 4
  %110 = icmp ne i32 %109, 0
  %111 = select i1 %108, i1 %110, i1 false
  br i1 %111, label %112, label %114

112:                                              ; preds = %91
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 25, i32 noundef %107) #11
  br label %114

114:                                              ; preds = %112, %91
  %115 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %116 = zext i8 %115 to i32
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.stv0299_read_signal_strength, i32 noundef %93, i32 noundef %116, i32 noundef %68) #11
  br label %118

118:                                              ; preds = %114, %63
  %119 = mul nuw nsw i32 %68, 5
  %120 = lshr i32 %119, 2
  %121 = icmp ugt i32 %119, 262143
  %122 = trunc i32 %120 to i16
  %123 = select i1 %121, i16 -1, i16 %122
  store i16 %123, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 36, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.stv0299_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #10
  %26 = icmp ne i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 36, i32 noundef %25) #11
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 37, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %34 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #10, !annotation !8
  %35 = load ptr, ptr %12, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %38, align 2
  store i16 1, ptr %34, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %41 = load i8, ptr %35, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %45, align 4
  %46 = load ptr, ptr %10, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %5, i32 noundef 2) #10
  %48 = icmp ne i32 %47, 2
  %49 = load i32, ptr @debug, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 37, i32 noundef %47) #11
  br label %54

54:                                               ; preds = %52, %32
  %55 = zext i8 %33 to i32
  %56 = shl nuw nsw i32 %55, 8
  %57 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %58 = zext i8 %57 to i32
  %59 = or i32 %56, %58
  %60 = sub nsw i32 24319, %59
  %61 = mul nsw i32 %60, 3
  %62 = call i32 @llvm.smax.i32(i32 %61, i32 0)
  %63 = call i32 @llvm.smin.i32(i32 %62, i32 65535)
  %64 = trunc i32 %63 to i16
  store i16 %64, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stv0299_state, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %68

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 30, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #10, !annotation !8
  %16 = getelementptr inbounds %struct.stv0299_state, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %8, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 1, ptr %15, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %23 = load i8, ptr %17, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %27, align 4
  %28 = load ptr, ptr %10, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %8, i32 noundef 2) #10
  %30 = icmp ne i32 %29, 2
  %31 = load i32, ptr @debug, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 30, i32 noundef %29) #11
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.stv0299_state, ptr %10, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  store i32 %41, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 29, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %42 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %42, i8 0, i32 16, i1 false) #10, !annotation !8
  %43 = load ptr, ptr %16, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %5, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %46, align 2
  store i16 1, ptr %42, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %49 = load i8, ptr %43, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %53, align 4
  %54 = load ptr, ptr %10, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %5, i32 noundef 2) #10
  %56 = icmp ne i32 %55, 2
  %57 = load i32, ptr @debug, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %62

60:                                               ; preds = %36
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 29, i32 noundef %55) #11
  br label %62

62:                                               ; preds = %60, %36
  %63 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 8
  %66 = load i32, ptr %39, align 4
  %67 = add i32 %66, %65
  store i32 %67, ptr %39, align 4
  store i32 %67, ptr %1, align 4
  br label %68

68:                                               ; preds = %62, %2
  %69 = phi i32 [ 0, %62 ], [ -38, %2 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [1 x i8], align 1
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stv0299_send_diseqc_msg) #11
  br label %19

19:                                               ; preds = %17, %2
  %20 = tail call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %14)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %145, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 8, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #10
  %23 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %23, i8 0, i32 16, i1 false) #10, !annotation !8
  %24 = getelementptr inbounds %struct.stv0299_state, ptr %14, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %12, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 1, ptr %23, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %31 = load i8, ptr %25, align 4
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %35, align 4
  %36 = load ptr, ptr %14, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %12, i32 noundef 2) #10
  %38 = icmp ne i32 %37, 2
  %39 = load i32, ptr @debug, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %44

42:                                               ; preds = %22
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 8, i32 noundef %37) #11
  br label %44

44:                                               ; preds = %42, %22
  %45 = load i8, ptr %11, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %46 = and i8 %45, -8
  %47 = or i8 %46, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 8, ptr %8, align 2
  %48 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %47, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %49 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %49, align 4, !annotation !8
  %50 = load ptr, ptr %24, align 4
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %9, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %53, align 2
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %54, align 4
  %55 = load ptr, ptr %14, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %9, i32 noundef 1) #10
  %57 = icmp ne i32 %56, 1
  %58 = load i32, ptr @debug, align 4
  %59 = icmp ne i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = zext i8 %47 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 8, i32 noundef %62, i32 noundef %56) #11
  br label %64

64:                                               ; preds = %61, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  br i1 %57, label %145, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %141, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds i8, ptr %7, i32 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  %77 = getelementptr inbounds i8, ptr %3, i32 1
  %78 = getelementptr inbounds i8, ptr %4, i32 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %81 = load i32, ptr @debug, align 4
  br label %87

82:                                               ; preds = %139
  %83 = add nuw nsw i32 %89, 1
  %84 = load i8, ptr %66, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %87, label %141

87:                                               ; preds = %82, %69
  %88 = phi i32 [ %81, %69 ], [ %140, %82 ]
  %89 = phi i32 [ 0, %69 ], [ %83, %82 ]
  %90 = load volatile i32, ptr @jiffies, align 64
  %91 = icmp eq i32 %88, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stv0299_wait_diseqc_fifo) #11
  br label %94

94:                                               ; preds = %92, %87
  br label %95

95:                                               ; preds = %122, %94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 10, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %70, i8 0, i32 16, i1 false) #10, !annotation !8
  %96 = load ptr, ptr %24, align 4
  %97 = load i8, ptr %96, align 4
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %7, align 4
  store i16 0, ptr %71, align 2
  store i16 1, ptr %70, align 4
  store ptr %5, ptr %72, align 4
  %99 = load i8, ptr %96, align 4
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %73, align 4
  store i16 1, ptr %74, align 2
  store i16 1, ptr %75, align 4
  store ptr %6, ptr %76, align 4
  %101 = load ptr, ptr %14, align 4
  %102 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %7, i32 noundef 2) #10
  %103 = icmp ne i32 %102, 2
  %104 = load i32, ptr @debug, align 4
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 10, i32 noundef %102) #11
  br label %109

109:                                              ; preds = %107, %95
  %110 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = load volatile i32, ptr @jiffies, align 64
  %115 = sub i32 %114, %90
  %116 = icmp ugt i32 %115, 100
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, ptr @debug, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %145, label %120

120:                                              ; preds = %117
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.stv0299_wait_diseqc_fifo) #11
  br label %145

122:                                              ; preds = %113
  call void @msleep(i32 noundef 10) #10
  br label %95

123:                                              ; preds = %109
  %124 = getelementptr [6 x i8], ptr %1, i32 0, i32 %89
  %125 = load i8, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 9, ptr %3, align 2
  store i8 %125, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i32 0, ptr %78, align 4, !annotation !8
  %126 = load ptr, ptr %24, align 4
  %127 = load i8, ptr %126, align 4
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %4, align 4
  store i16 0, ptr %79, align 2
  store i16 2, ptr %78, align 4
  store ptr %3, ptr %80, align 4
  %129 = load ptr, ptr %14, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %4, i32 noundef 1) #10
  %131 = icmp ne i32 %130, 1
  %132 = load i32, ptr @debug, align 4
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %139

135:                                              ; preds = %123
  %136 = zext i8 %125 to i32
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 9, i32 noundef %136, i32 noundef %130) #11
  %138 = load i32, ptr @debug, align 4
  br label %139

139:                                              ; preds = %135, %123
  %140 = phi i32 [ %132, %123 ], [ %138, %135 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br i1 %131, label %145, label %82

141:                                              ; preds = %82, %65
  %142 = call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %14)
  %143 = icmp slt i32 %142, 0
  %144 = select i1 %143, i32 -110, i32 0
  br label %145

145:                                              ; preds = %141, %139, %120, %117, %64, %19
  %146 = phi i32 [ -110, %19 ], [ -121, %64 ], [ %144, %141 ], [ -110, %120 ], [ -110, %117 ], [ -121, %139 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_send_diseqc_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stv0299_send_diseqc_burst) #11
  br label %18

18:                                               ; preds = %16, %2
  %19 = tail call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %13)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %106, label %21

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 8, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %22 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %22, i8 0, i32 16, i1 false) #10, !annotation !8
  %23 = getelementptr inbounds %struct.stv0299_state, ptr %13, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %11, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %27, align 2
  store i16 1, ptr %22, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %30 = load i8, ptr %24, align 4
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %34, align 4
  %35 = load ptr, ptr %13, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %11, i32 noundef 2) #10
  %37 = icmp ne i32 %36, 2
  %38 = load i32, ptr @debug, align 4
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 8, i32 noundef %36) #11
  br label %43

43:                                               ; preds = %41, %21
  %44 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %45 = and i8 %44, -8
  %46 = or i8 %45, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 8, ptr %7, align 2
  %47 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %46, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %48 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %48, align 4, !annotation !8
  %49 = load ptr, ptr %23, align 4
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %8, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %53, align 4
  %54 = load ptr, ptr %13, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %8, i32 noundef 1) #10
  %56 = icmp ne i32 %55, 1
  %57 = load i32, ptr @debug, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = zext i8 %46 to i32
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 8, i32 noundef %61, i32 noundef %55) #11
  br label %63

63:                                               ; preds = %60, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  br i1 %56, label %106, label %64

64:                                               ; preds = %63
  %65 = icmp ne i32 %1, 0
  %66 = sext i1 %65 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 9, ptr %5, align 2
  %67 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %66, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %68 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %68, align 4, !annotation !8
  %69 = load ptr, ptr %23, align 4
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %6, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %73, align 4
  %74 = load ptr, ptr %13, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %6, i32 noundef 1) #10
  %76 = icmp ne i32 %75, 1
  %77 = load i32, ptr @debug, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %83

80:                                               ; preds = %64
  %81 = zext i8 %66 to i32
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 9, i32 noundef %81, i32 noundef %75) #11
  br label %83

83:                                               ; preds = %80, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br i1 %76, label %106, label %84

84:                                               ; preds = %83
  %85 = call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %13)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 8, ptr %3, align 2
  %88 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %44, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %89 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %89, align 4, !annotation !8
  %90 = load ptr, ptr %23, align 4
  %91 = load i8, ptr %90, align 4
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %4, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %93, align 2
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %94, align 4
  %95 = load ptr, ptr %13, align 4
  %96 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %4, i32 noundef 1) #10
  %97 = icmp ne i32 %96, 1
  %98 = load i32, ptr @debug, align 4
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %104

101:                                              ; preds = %87
  %102 = zext i8 %44 to i32
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 8, i32 noundef %102, i32 noundef %96) #11
  br label %104

104:                                              ; preds = %101, %87
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %105 = select i1 %97, i32 -121, i32 0
  br label %106

106:                                              ; preds = %104, %84, %83, %63, %18
  %107 = phi i32 [ -110, %18 ], [ -121, %63 ], [ -121, %83 ], [ -110, %84 ], [ %105, %104 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %11)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %79, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %15 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #10, !annotation !8
  %16 = getelementptr inbounds %struct.stv0299_state, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %9, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 1, ptr %15, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %23 = load i8, ptr %17, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %27, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %9, i32 noundef 2) #10
  %30 = icmp ne i32 %29, 2
  %31 = load i32, ptr @debug, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 8, i32 noundef %29) #11
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  switch i32 %1, label %79 [
    i32 0, label %38
    i32 1, label %58
  ]

38:                                               ; preds = %36
  %39 = or i8 %37, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 8, ptr %5, align 2
  %40 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %39, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %41 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %41, align 4, !annotation !8
  %42 = load ptr, ptr %16, align 4
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %6, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %46, align 4
  %47 = load ptr, ptr %11, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %6, i32 noundef 1) #10
  %49 = icmp ne i32 %48, 1
  %50 = load i32, ptr @debug, align 4
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = zext i8 %39 to i32
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 8, i32 noundef %54, i32 noundef %48) #11
  br label %56

56:                                               ; preds = %53, %38
  %57 = select i1 %49, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %79

58:                                               ; preds = %36
  %59 = and i8 %37, -4
  %60 = or i8 %59, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 8, ptr %3, align 2
  %61 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %60, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %62 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %62, align 4, !annotation !8
  %63 = load ptr, ptr %16, align 4
  %64 = load i8, ptr %63, align 4
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %4, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %66, align 2
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %67, align 4
  %68 = load ptr, ptr %11, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %4, i32 noundef 1) #10
  %70 = icmp ne i32 %69, 1
  %71 = load i32, ptr @debug, align 4
  %72 = icmp ne i32 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = zext i8 %60 to i32
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 8, i32 noundef %75, i32 noundef %69) #11
  br label %77

77:                                               ; preds = %74, %58
  %78 = select i1 %70, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %79

79:                                               ; preds = %77, %56, %36, %2
  %80 = phi i32 [ %78, %77 ], [ %57, %56 ], [ -110, %2 ], [ -22, %36 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [1 x i8], align 1
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = icmp eq i32 %1, 0
  %19 = icmp eq i32 %1, 1
  %20 = select i1 %19, ptr @.str.14, ptr @.str.15
  %21 = select i1 %18, ptr @.str.13, ptr %20
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stv0299_set_voltage, ptr noundef nonnull %21) #11
  br label %23

23:                                               ; preds = %17, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 8, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #10
  %24 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %24, i8 0, i32 16, i1 false) #10, !annotation !8
  %25 = getelementptr inbounds %struct.stv0299_state, ptr %14, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %12, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %29, align 2
  store i16 1, ptr %24, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %32 = load i8, ptr %26, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %36, align 4
  %37 = load ptr, ptr %14, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %12, i32 noundef 2) #10
  %39 = icmp ne i32 %38, 2
  %40 = load i32, ptr @debug, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 8, i32 noundef %38) #11
  br label %45

45:                                               ; preds = %43, %23
  %46 = load i8, ptr %11, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 12, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %47 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %47, i8 0, i32 16, i1 false) #10, !annotation !8
  %48 = load ptr, ptr %25, align 4
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %9, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %51, align 2
  store i16 1, ptr %47, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %54 = load i8, ptr %48, align 4
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %58, align 4
  %59 = load ptr, ptr %14, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %9, i32 noundef 2) #10
  %61 = icmp ne i32 %60, 2
  %62 = load i32, ptr @debug, align 4
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %67

65:                                               ; preds = %45
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 12, i32 noundef %60) #11
  br label %67

67:                                               ; preds = %65, %45
  %68 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %69 = and i8 %68, 15
  %70 = and i8 %46, 63
  %71 = load ptr, ptr %25, align 4
  %72 = getelementptr inbounds %struct.stv0299_config, ptr %71, i32 0, i32 3
  %73 = load i8, ptr %72, align 4
  %74 = shl i8 %73, 4
  %75 = and i8 %74, -64
  %76 = or i8 %75, %70
  switch i32 %1, label %128 [
    i32 0, label %77
    i32 1, label %84
    i32 2, label %86
  ]

77:                                               ; preds = %67
  %78 = and i8 %73, 16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = or i8 %69, 16
  br label %86

82:                                               ; preds = %77
  %83 = or i8 %69, 64
  br label %86

84:                                               ; preds = %67
  %85 = or i8 %69, 80
  br label %86

86:                                               ; preds = %84, %82, %80, %67
  %87 = phi i8 [ %76, %84 ], [ %76, %80 ], [ %76, %82 ], [ 0, %67 ]
  %88 = phi i8 [ %85, %84 ], [ %81, %80 ], [ %83, %82 ], [ 0, %67 ]
  %89 = and i8 %73, 32
  %90 = icmp eq i8 %89, 0
  %91 = and i8 %88, -17
  %92 = select i1 %90, i8 %88, i8 %91
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 8, ptr %5, align 2
  %93 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %87, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %94 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %94, align 4, !annotation !8
  %95 = load ptr, ptr %25, align 4
  %96 = load i8, ptr %95, align 4
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %6, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %98, align 2
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %99, align 4
  %100 = load ptr, ptr %14, align 4
  %101 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %6, i32 noundef 1) #10
  %102 = icmp ne i32 %101, 1
  %103 = load i32, ptr @debug, align 4
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %109

106:                                              ; preds = %86
  %107 = zext i8 %87 to i32
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 8, i32 noundef %107, i32 noundef %101) #11
  br label %109

109:                                              ; preds = %106, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 12, ptr %3, align 2
  %110 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %92, ptr %110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %111 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %111, align 4, !annotation !8
  %112 = load ptr, ptr %25, align 4
  %113 = load i8, ptr %112, align 4
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %4, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %116, align 4
  %117 = load ptr, ptr %14, align 4
  %118 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %4, i32 noundef 1) #10
  %119 = icmp ne i32 %118, 1
  %120 = load i32, ptr @debug, align 4
  %121 = icmp ne i32 %120, 0
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %126

123:                                              ; preds = %109
  %124 = zext i8 %92 to i32
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 12, i32 noundef %124, i32 noundef %118) #11
  br label %126

126:                                              ; preds = %123, %109
  %127 = select i1 %119, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %128

128:                                              ; preds = %126, %67
  %129 = phi i32 [ %127, %126 ], [ -22, %67 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_send_legacy_dish_cmd(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca i64, align 8
  %16 = alloca [10 x i64], align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #10
  store i64 0, ptr %15, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %16) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %16, i8 0, i32 80, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 8, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %19 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #10, !annotation !8
  %20 = getelementptr inbounds %struct.stv0299_state, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %14, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %24, align 2
  store i16 1, ptr %19, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %27 = load i8, ptr %21, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %31, align 4
  %32 = load ptr, ptr %18, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %14, i32 noundef 2) #10
  %34 = icmp ne i32 %33, 2
  %35 = load i32, ptr @debug, align 4
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 8, i32 noundef %33) #11
  br label %40

40:                                               ; preds = %38, %2
  %41 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 12, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %42 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %42, i8 0, i32 16, i1 false) #10, !annotation !8
  %43 = load ptr, ptr %20, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %11, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %46, align 2
  store i16 1, ptr %42, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %49 = load i8, ptr %43, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %53, align 4
  %54 = load ptr, ptr %18, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %11, i32 noundef 2) #10
  %56 = icmp ne i32 %55, 2
  %57 = load i32, ptr @debug, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 12, i32 noundef %55) #11
  br label %62

62:                                               ; preds = %60, %40
  %63 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %64 = and i8 %63, 15
  %65 = and i8 %41, 63
  %66 = load ptr, ptr %20, align 4
  %67 = getelementptr inbounds %struct.stv0299_config, ptr %66, i32 0, i32 3
  %68 = load i8, ptr %67, align 4
  %69 = shl i8 %68, 4
  %70 = and i8 %69, -64
  %71 = or i8 %70, %65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 8, ptr %7, align 2
  %72 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %71, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %73 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %73, align 4, !annotation !8
  %74 = load ptr, ptr %20, align 4
  %75 = load i8, ptr %74, align 4
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %8, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %77, align 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %78, align 4
  %79 = load ptr, ptr %18, align 4
  %80 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %8, i32 noundef 1) #10
  %81 = icmp ne i32 %80, 1
  %82 = load i32, ptr @debug, align 4
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %88

85:                                               ; preds = %62
  %86 = zext i8 %71 to i32
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 8, i32 noundef %86, i32 noundef %80) #11
  br label %88

88:                                               ; preds = %85, %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %89 = load ptr, ptr %20, align 4
  %90 = getelementptr inbounds %struct.stv0299_config, ptr %89, i32 0, i32 3
  %91 = load i8, ptr %90, align 4
  %92 = and i8 %91, 16
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i8 16, i8 64
  %95 = shl i32 %1, 1
  %96 = load i32, ptr @debug_legacy_dish_switch, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %88
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.stv0299_send_legacy_dish_cmd, i32 noundef %95) #11
  br label %100

100:                                              ; preds = %98, %88
  %101 = call i64 @ktime_get_with_offset(i32 noundef 1) #10
  store i64 %101, ptr %15, align 8
  %102 = load i32, ptr @debug_legacy_dish_switch, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store i64 %101, ptr %16, align 8
  br label %105

105:                                              ; preds = %104, %100
  %106 = or i8 %64, 80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 12, ptr %5, align 2
  %107 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %106, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %108 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %108, align 4, !annotation !8
  %109 = load ptr, ptr %20, align 4
  %110 = load i8, ptr %109, align 4
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %6, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %112, align 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %113, align 4
  %114 = load ptr, ptr %18, align 4
  %115 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %6, i32 noundef 1) #10
  %116 = icmp ne i32 %115, 1
  %117 = load i32, ptr @debug, align 4
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = zext i8 %106 to i32
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 12, i32 noundef %121, i32 noundef %115) #11
  br label %123

123:                                              ; preds = %120, %105
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @dvb_frontend_sleep_until(ptr noundef nonnull %15, i32 noundef 32000) #10
  %124 = getelementptr inbounds i8, ptr %3, i32 1
  %125 = getelementptr inbounds i8, ptr %4, i32 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  br label %128

128:                                              ; preds = %163, %123
  %129 = phi i32 [ %95, %123 ], [ %164, %163 ]
  %130 = phi i32 [ 0, %123 ], [ %165, %163 ]
  %131 = phi i8 [ 1, %123 ], [ %161, %163 ]
  %132 = load i32, ptr @debug_legacy_dish_switch, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %136 = add nuw nsw i32 %130, 1
  %137 = getelementptr [10 x i64], ptr %16, i32 0, i32 %136
  store i64 %135, ptr %137, align 8
  br label %138

138:                                              ; preds = %134, %128
  %139 = and i32 %129, 1
  %140 = zext i8 %131 to i32
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %160, label %142

142:                                              ; preds = %138
  %143 = icmp eq i8 %131, 0
  %144 = select i1 %143, i8 80, i8 %94
  %145 = or i8 %144, %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 12, ptr %3, align 2
  store i8 %145, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i32 0, ptr %125, align 4, !annotation !8
  %146 = load ptr, ptr %20, align 4
  %147 = load i8, ptr %146, align 4
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %4, align 4
  store i16 0, ptr %126, align 2
  store i16 2, ptr %125, align 4
  store ptr %3, ptr %127, align 4
  %149 = load ptr, ptr %18, align 4
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %4, i32 noundef 1) #10
  %151 = icmp ne i32 %150, 1
  %152 = load i32, ptr @debug, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %155, label %158

155:                                              ; preds = %142
  %156 = zext i8 %145 to i32
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 12, i32 noundef %156, i32 noundef %150) #11
  br label %158

158:                                              ; preds = %155, %142
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %159 = zext i1 %143 to i8
  br label %160

160:                                              ; preds = %158, %138
  %161 = phi i8 [ %159, %158 ], [ %131, %138 ]
  %162 = icmp eq i32 %130, 8
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = lshr i32 %129, 1
  call void @dvb_frontend_sleep_until(ptr noundef nonnull %15, i32 noundef 8000) #10
  %165 = add nuw nsw i32 %130, 1
  br label %128

166:                                              ; preds = %160
  %167 = load i32, ptr @debug_legacy_dish_switch, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %195, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %171 = load ptr, ptr %170, align 4
  %172 = load i32, ptr %171, align 4
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.stv0299_send_legacy_dish_cmd, i32 noundef %172) #11
  %174 = load i64, ptr %16, align 8
  br label %175

175:                                              ; preds = %175, %169
  %176 = phi i64 [ %174, %169 ], [ %179, %175 ]
  %177 = phi i32 [ 1, %169 ], [ %193, %175 ]
  %178 = getelementptr [10 x i64], ptr %16, i32 0, i32 %177
  %179 = load i64, ptr %178, align 8
  %180 = sub i64 %179, %176
  %181 = call i64 @llvm.abs.i64(i64 %180, i1 false) #10
  %182 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %181, i32 0) #12, !srcloc !10
  %183 = extractvalue { i64, i32 } %182, 0
  %184 = extractvalue { i64, i32 } %182, 1
  %185 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %181, i64 %183, i32 %184) #12, !srcloc !11
  %186 = extractvalue { i64, i32 } %185, 0
  %187 = icmp slt i64 %180, 0
  %188 = lshr i64 %186, 9
  %189 = sub nsw i64 0, %188
  %190 = select i1 %187, i64 %189, i64 %188
  %191 = trunc i64 %190 to i32
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %177, i32 noundef %191) #11
  %193 = add nuw nsw i32 %177, 1
  %194 = icmp eq i32 %193, 10
  br i1 %194, label %195, label %175

195:                                              ; preds = %175, %166
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0299_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 5, ptr %5, align 2
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -75, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %12 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.stv0299_state, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %6, i32 noundef 1) #10
  %21 = icmp ne i32 %20, 1
  %22 = load i32, ptr @debug, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 5, i32 noundef 181, i32 noundef %20) #11
  br label %27

27:                                               ; preds = %25, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %46

28:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 5, ptr %3, align 2
  %29 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 53, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %30 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %30, align 4, !annotation !8
  %31 = getelementptr inbounds %struct.stv0299_state, ptr %8, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %4, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %36, align 4
  %37 = load ptr, ptr %8, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %4, i32 noundef 1) #10
  %39 = icmp ne i32 %38, 1
  %40 = load i32, ptr @debug, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0299_writeregI, i32 noundef 5, i32 noundef 53, i32 noundef %38) #11
  br label %45

45:                                               ; preds = %43, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %46

46:                                               ; preds = %45, %27
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0299_wait_diseqc_idle(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stv0299_wait_diseqc_idle) #11
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  %12 = getelementptr inbounds %struct.stv0299_state, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  br label %19

19:                                               ; preds = %46, %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 10, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %20 = load ptr, ptr %12, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %4, align 4
  store i16 0, ptr %13, align 2
  store i16 1, ptr %11, align 4
  store ptr %2, ptr %14, align 4
  %23 = load i8, ptr %20, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %15, align 4
  store i16 1, ptr %16, align 2
  store i16 1, ptr %17, align 4
  store ptr %3, ptr %18, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %4, i32 noundef 2) #10
  %27 = icmp ne i32 %26, 2
  %28 = load i32, ptr @debug, align 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0299_readreg, i32 noundef 10, i32 noundef %26) #11
  br label %33

33:                                               ; preds = %31, %19
  %34 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %35 = and i8 %34, 3
  %36 = icmp eq i8 %35, 2
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = sub i32 %38, %5
  %40 = icmp ugt i32 %39, 100
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.stv0299_wait_diseqc_idle) #11
  br label %47

46:                                               ; preds = %37
  call void @msleep(i32 noundef 10) #10
  br label %19

47:                                               ; preds = %44, %41, %33
  %48 = phi i32 [ -110, %44 ], [ -110, %41 ], [ 0, %33 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_sleep_until(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2148353954, i64 2148354234, i64 2148354568, i64 2148354902}
!10 = !{i64 868410, i64 868437, i64 868459, i64 868487}
!11 = !{i64 868818, i64 868845, i64 868878, i64 868899, i64 868926, i64 868952}
