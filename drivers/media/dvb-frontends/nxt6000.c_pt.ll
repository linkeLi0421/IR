; ModuleID = '/llk/IR/drivers/media/dvb-frontends/nxt6000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/nxt6000.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nxt6000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22nxt6000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_nxt6000_attach:\09\09\09\09\09"
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
%struct.nxt6000_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.nxt6000_config = type { i8, i8 }

@nxt6000_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"NxtWave NXT6000 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 863250000, i32 62500, i32 0, i32 0, i32 9360000, i32 4000, i32 1780734 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @nxt6000_release, ptr null, ptr @nxt6000_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nxt6000_set_frontend, ptr @nxt6000_fe_get_tune_settings, ptr null, ptr @nxt6000_read_status, ptr @nxt6000_read_ber, ptr @nxt6000_read_signal_strength, ptr @nxt6000_read_snr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nxt6000_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [53 x i8] c"description=NxtWave NXT6000 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [24 x i8] c"author=Florian Schirmer\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_nxt6000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_nxt6000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_nxt6000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nxt6000_attach to i32), ptr @__kstrtab_nxt6000_attach, ptr @__kstrtabns_nxt6000_attach }, section "___ksymtab+nxt6000_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [67 x i8] c"\017nxt6000: %s: nxt6000: nxt6000_read error (reg: 0x%02X, ret: %d)\0A\00", align 1
@__func__.nxt6000_readreg = private unnamed_addr constant [16 x i8] c"nxt6000_readreg\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"\017nxt6000: %s: nxt6000: nxt6000_write error (reg: 0x%02X, data: 0x%02X, ret: %d)\0A\00", align 1
@__func__.nxt6000_writereg = private unnamed_addr constant [17 x i8] c"nxt6000_writereg\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\016nxt6000: NXT6000 status:\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\01c DATA DESCR LOCK: %d,\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\01c DATA SYNC LOCK: %d,\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\01c VITERBI LOCK: %d,\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 1/2,\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 2/3,\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 3/4,\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 5/6,\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\01c VITERBI CODERATE: 7/8,\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\01c VITERBI CODERATE: Reserved,\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"\01c CHCTrack: %d,\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\01c TPSLock: %d,\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\01c SYRLock: %d,\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\01c AGCLock: %d,\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\01c CoreState: IDLE,\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_AGC,\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_SYR,\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_PPM,\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_TRL,\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"\01c CoreState: WAIT_TPS,\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"\01c CoreState: MONITOR_TPS,\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"\01c CoreState: Reserved,\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"\01c SYRMode: %s,\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"8K\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"2K\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"\01c SYRGuard: 1/32,\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"\01c SYRGuard: 1/16,\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"\01c SYRGuard: 1/8,\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"\01c SYRGuard: 1/4,\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 1/2,\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 2/3,\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 3/4,\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 5/6,\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"\01c TPSLP: 7/8,\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"\01c TPSLP: Reserved,\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 1/2,\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 2/3,\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 3/4,\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 5/6,\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"\01c TPSHP: 7/8,\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"\01c TPSHP: Reserved,\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"\01c TPSMode: %s,\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"\01c TPSGuard: 1/32,\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"\01c TPSGuard: 1/16,\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"\01c TPSGuard: 1/8,\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"\01c TPSGuard: 1/4,\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"\01c RF AGC LOCK: %d,\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_nxt6000_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.nxt6000_read_status = private unnamed_addr constant [5 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@switch.table.nxt6000_read_status.50 = private unnamed_addr constant [7 x ptr] [ptr @.str.16, ptr @.str.20, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22], align 4
@switch.table.nxt6000_read_status.51 = private unnamed_addr constant [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 4
@switch.table.nxt6000_read_status.52 = private unnamed_addr constant [5 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], align 4
@switch.table.nxt6000_read_status.53 = private unnamed_addr constant [5 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], align 4
@switch.table.nxt6000_read_status.54 = private unnamed_addr constant [4 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nxt6000_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1048) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nxt6000_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 115, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = load i8, ptr %0, align 1
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %19, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #9
  %21 = icmp ne i32 %20, 2
  %22 = load i32, ptr @debug, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 115, i32 noundef %20) #10
  br label %27

27:                                               ; preds = %25, %9
  %28 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %29 = icmp eq i8 %28, 11
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.nxt6000_state, ptr %7, i32 0, i32 2
  %32 = getelementptr inbounds %struct.nxt6000_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %32, ptr noundef nonnull align 4 dereferenceable(544) @nxt6000_ops, i32 544, i1 false)
  %33 = getelementptr inbounds %struct.nxt6000_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %33, align 8
  br label %35

34:                                               ; preds = %27, %2
  call void @kfree(ptr noundef %7) #9
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi ptr [ null, %34 ], [ %31, %30 ]
  ret ptr %36
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
define internal void @nxt6000_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt6000_init(ptr nocapture noundef readonly %0) #0 {
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
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [2 x i8], align 2
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [2 x i8], align 2
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [1 x i8], align 1
  %37 = alloca [1 x i8], align 1
  %38 = alloca [2 x %struct.i2c_msg], align 4
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
  %57 = alloca [2 x i8], align 2
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [1 x i8], align 1
  %60 = alloca [1 x i8], align 1
  %61 = alloca [2 x %struct.i2c_msg], align 4
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %59) #9
  store i8 64, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %60) #9
  store i8 0, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %61) #9
  %64 = getelementptr inbounds i8, ptr %61, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %64, i8 0, i32 16, i1 false) #9, !annotation !8
  %65 = getelementptr inbounds %struct.nxt6000_state, ptr %63, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %61, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %69, align 2
  store i16 1, ptr %64, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %59, ptr %70, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 1
  %72 = load i8, ptr %66, align 1
  %73 = zext i8 %72 to i16
  store i16 %73, ptr %71, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 1, i32 1
  store i16 1, ptr %74, align 2
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 1, i32 2
  store i16 1, ptr %75, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 1, i32 3
  store ptr %60, ptr %76, align 4
  %77 = load ptr, ptr %63, align 4
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %61, i32 noundef 2) #9
  %79 = icmp ne i32 %78, 2
  %80 = load i32, ptr @debug, align 4
  %81 = icmp ne i32 %80, 0
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %85

83:                                               ; preds = %1
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 64, i32 noundef %78) #10
  br label %85

85:                                               ; preds = %83, %1
  %86 = load i8, ptr %60, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %61) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %60) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %59) #9
  %87 = and i8 %86, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #9
  store i8 64, ptr %57, align 2
  %88 = getelementptr inbounds i8, ptr %57, i32 1
  store i8 %87, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #9
  %89 = getelementptr inbounds i8, ptr %58, i32 4
  store i32 2, ptr %89, align 4, !annotation !8
  %90 = load ptr, ptr %65, align 4
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %58, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  store i16 0, ptr %93, align 2
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  store ptr %57, ptr %94, align 4
  %95 = load ptr, ptr %63, align 4
  %96 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %58, i32 noundef 1) #9
  %97 = icmp ne i32 %96, 1
  %98 = load i32, ptr @debug, align 4
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = zext i8 %87 to i32
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 64, i32 noundef %102, i32 noundef %96) #10
  br label %104

104:                                              ; preds = %101, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #9
  %105 = or i8 %86, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #9
  store i8 64, ptr %55, align 2
  %106 = getelementptr inbounds i8, ptr %55, i32 1
  store i8 %105, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #9
  %107 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 2, ptr %107, align 4, !annotation !8
  %108 = load ptr, ptr %65, align 4
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %56, align 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %111, align 2
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %112, align 4
  %113 = load ptr, ptr %63, align 4
  %114 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %56, i32 noundef 1) #9
  %115 = icmp ne i32 %114, 1
  %116 = load i32, ptr @debug, align 4
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = zext i8 %105 to i32
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 64, i32 noundef %120, i32 noundef %114) #10
  br label %122

122:                                              ; preds = %119, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #9
  %123 = load ptr, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #9
  store i8 36, ptr %53, align 2
  %124 = getelementptr inbounds i8, ptr %53, i32 1
  store i8 3, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #9
  %125 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 2, ptr %125, align 4, !annotation !8
  %126 = getelementptr inbounds %struct.nxt6000_state, ptr %123, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i16
  store i16 %129, ptr %54, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %130, align 2
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %131, align 4
  %132 = load ptr, ptr %123, align 4
  %133 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %54, i32 noundef 1) #9
  %134 = icmp ne i32 %133, 1
  %135 = load i32, ptr @debug, align 4
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %134, i1 %136, i1 false
  br i1 %137, label %138, label %140

138:                                              ; preds = %122
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 36, i32 noundef 3, i32 noundef %133) #10
  br label %140

140:                                              ; preds = %138, %122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #9
  store i8 37, ptr %51, align 2
  %141 = getelementptr inbounds i8, ptr %51, i32 1
  store i8 3, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #9
  %142 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 0, ptr %142, align 4, !annotation !8
  %143 = load ptr, ptr %126, align 4
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i16
  store i16 %145, ptr %52, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %146, align 2
  store i16 2, ptr %142, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %51, ptr %147, align 4
  %148 = load ptr, ptr %123, align 4
  %149 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %52, i32 noundef 1) #9
  %150 = icmp ne i32 %149, 1
  %151 = load i32, ptr @debug, align 4
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %156

154:                                              ; preds = %140
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 37, i32 noundef 3, i32 noundef %149) #10
  br label %156

156:                                              ; preds = %154, %140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #9
  store i8 56, ptr %49, align 2
  %157 = getelementptr inbounds i8, ptr %49, i32 1
  store i8 0, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #9
  %158 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 0, ptr %158, align 4, !annotation !8
  %159 = load ptr, ptr %126, align 4
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i16
  store i16 %161, ptr %50, align 4
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %162, align 2
  store i16 2, ptr %158, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %163, align 4
  %164 = load ptr, ptr %123, align 4
  %165 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %50, i32 noundef 1) #9
  %166 = icmp ne i32 %165, 1
  %167 = load i32, ptr @debug, align 4
  %168 = icmp ne i32 %167, 0
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %170, label %172

170:                                              ; preds = %156
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 56, i32 noundef 0, i32 noundef %165) #10
  br label %172

172:                                              ; preds = %170, %156
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #9
  store i8 57, ptr %47, align 2
  %173 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 2, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #9
  %174 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 0, ptr %174, align 4, !annotation !8
  %175 = load ptr, ptr %126, align 4
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i16
  store i16 %177, ptr %48, align 4
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %178, align 2
  store i16 2, ptr %174, align 4
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %179, align 4
  %180 = load ptr, ptr %123, align 4
  %181 = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %48, i32 noundef 1) #9
  %182 = icmp ne i32 %181, 1
  %183 = load i32, ptr @debug, align 4
  %184 = icmp ne i32 %183, 0
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %188

186:                                              ; preds = %172
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 57, i32 noundef 2, i32 noundef %181) #10
  br label %188

188:                                              ; preds = %186, %172
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #9
  store i8 58, ptr %45, align 2
  %189 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 0, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #9
  %190 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 0, ptr %190, align 4, !annotation !8
  %191 = load ptr, ptr %126, align 4
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i16
  store i16 %193, ptr %46, align 4
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %194, align 2
  store i16 2, ptr %190, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %195, align 4
  %196 = load ptr, ptr %123, align 4
  %197 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %46, i32 noundef 1) #9
  %198 = icmp ne i32 %197, 1
  %199 = load i32, ptr @debug, align 4
  %200 = icmp ne i32 %199, 0
  %201 = select i1 %198, i1 %200, i1 false
  br i1 %201, label %202, label %204

202:                                              ; preds = %188
  %203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 58, i32 noundef 0, i32 noundef %197) #10
  br label %204

204:                                              ; preds = %202, %188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #9
  store i8 51, ptr %43, align 2
  %205 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 -104, ptr %205, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #9
  %206 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 0, ptr %206, align 4, !annotation !8
  %207 = load ptr, ptr %126, align 4
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i16
  store i16 %209, ptr %44, align 4
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %210, align 2
  store i16 2, ptr %206, align 4
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %211, align 4
  %212 = load ptr, ptr %123, align 4
  %213 = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %44, i32 noundef 1) #9
  %214 = icmp ne i32 %213, 1
  %215 = load i32, ptr @debug, align 4
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %214, i1 %216, i1 false
  br i1 %217, label %218, label %220

218:                                              ; preds = %204
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 51, i32 noundef 152, i32 noundef %213) #10
  br label %220

220:                                              ; preds = %218, %204
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #9
  store i8 48, ptr %41, align 2
  %221 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 -126, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #9
  %222 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 0, ptr %222, align 4, !annotation !8
  %223 = load ptr, ptr %126, align 4
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i16
  store i16 %225, ptr %42, align 4
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %226, align 2
  store i16 2, ptr %222, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %227, align 4
  %228 = load ptr, ptr %123, align 4
  %229 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %42, i32 noundef 1) #9
  %230 = icmp ne i32 %229, 1
  %231 = load i32, ptr @debug, align 4
  %232 = icmp ne i32 %231, 0
  %233 = select i1 %230, i1 %232, i1 false
  br i1 %233, label %234, label %236

234:                                              ; preds = %220
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 48, i32 noundef 130, i32 noundef %229) #10
  br label %236

236:                                              ; preds = %234, %220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #9
  store i8 48, ptr %39, align 2
  %237 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 -126, ptr %237, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #9
  %238 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 0, ptr %238, align 4, !annotation !8
  %239 = load ptr, ptr %126, align 4
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i16
  store i16 %241, ptr %40, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %242, align 2
  store i16 2, ptr %238, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %39, ptr %243, align 4
  %244 = load ptr, ptr %123, align 4
  %245 = call i32 @i2c_transfer(ptr noundef %244, ptr noundef nonnull %40, i32 noundef 1) #9
  %246 = icmp ne i32 %245, 1
  %247 = load i32, ptr @debug, align 4
  %248 = icmp ne i32 %247, 0
  %249 = select i1 %246, i1 %248, i1 false
  br i1 %249, label %250, label %252

250:                                              ; preds = %236
  %251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 48, i32 noundef 130, i32 noundef %245) #10
  br label %252

252:                                              ; preds = %250, %236
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %36) #9
  store i8 64, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #9
  store i8 0, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %38) #9
  %253 = getelementptr inbounds i8, ptr %38, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %253, i8 0, i32 16, i1 false) #9, !annotation !8
  %254 = load ptr, ptr %126, align 4
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i16
  store i16 %256, ptr %38, align 4
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %257, align 2
  store i16 1, ptr %253, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %36, ptr %258, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 1
  %260 = load i8, ptr %254, align 1
  %261 = zext i8 %260 to i16
  store i16 %261, ptr %259, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 1, i32 1
  store i16 1, ptr %262, align 2
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 1, i32 2
  store i16 1, ptr %263, align 4
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 1, i32 3
  store ptr %37, ptr %264, align 4
  %265 = load ptr, ptr %123, align 4
  %266 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %38, i32 noundef 2) #9
  %267 = icmp ne i32 %266, 2
  %268 = load i32, ptr @debug, align 4
  %269 = icmp ne i32 %268, 0
  %270 = select i1 %267, i1 %269, i1 false
  br i1 %270, label %271, label %273

271:                                              ; preds = %252
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 64, i32 noundef %266) #10
  br label %273

273:                                              ; preds = %271, %252
  %274 = load i8, ptr %37, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %38) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %36) #9
  %275 = and i8 %274, 15
  %276 = or i8 %275, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #9
  store i8 64, ptr %34, align 2
  %277 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 %276, ptr %277, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #9
  %278 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 0, ptr %278, align 4, !annotation !8
  %279 = load ptr, ptr %126, align 4
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i16
  store i16 %281, ptr %35, align 4
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %282, align 2
  store i16 2, ptr %278, align 4
  %283 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %283, align 4
  %284 = load ptr, ptr %123, align 4
  %285 = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %35, i32 noundef 1) #9
  %286 = icmp ne i32 %285, 1
  %287 = load i32, ptr @debug, align 4
  %288 = icmp ne i32 %287, 0
  %289 = select i1 %286, i1 %288, i1 false
  br i1 %289, label %290, label %293

290:                                              ; preds = %273
  %291 = zext i8 %276 to i32
  %292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 64, i32 noundef %291, i32 noundef %285) #10
  br label %293

293:                                              ; preds = %290, %273
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #9
  store i8 68, ptr %32, align 2
  %294 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 6, ptr %294, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #9
  %295 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 0, ptr %295, align 4, !annotation !8
  %296 = load ptr, ptr %126, align 4
  %297 = load i8, ptr %296, align 1
  %298 = zext i8 %297 to i16
  store i16 %298, ptr %33, align 4
  %299 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %299, align 2
  store i16 2, ptr %295, align 4
  %300 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %300, align 4
  %301 = load ptr, ptr %123, align 4
  %302 = call i32 @i2c_transfer(ptr noundef %301, ptr noundef nonnull %33, i32 noundef 1) #9
  %303 = icmp ne i32 %302, 1
  %304 = load i32, ptr @debug, align 4
  %305 = icmp ne i32 %304, 0
  %306 = select i1 %303, i1 %305, i1 false
  br i1 %306, label %307, label %309

307:                                              ; preds = %293
  %308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 68, i32 noundef 6, i32 noundef %302) #10
  br label %309

309:                                              ; preds = %307, %293
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #9
  store i8 69, ptr %30, align 2
  %310 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 24, ptr %310, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #9
  %311 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 0, ptr %311, align 4, !annotation !8
  %312 = load ptr, ptr %126, align 4
  %313 = load i8, ptr %312, align 1
  %314 = zext i8 %313 to i16
  store i16 %314, ptr %31, align 4
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %315, align 2
  store i16 2, ptr %311, align 4
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %316, align 4
  %317 = load ptr, ptr %123, align 4
  %318 = call i32 @i2c_transfer(ptr noundef %317, ptr noundef nonnull %31, i32 noundef 1) #9
  %319 = icmp ne i32 %318, 1
  %320 = load i32, ptr @debug, align 4
  %321 = icmp ne i32 %320, 0
  %322 = select i1 %319, i1 %321, i1 false
  br i1 %322, label %323, label %325

323:                                              ; preds = %309
  %324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 69, i32 noundef 24, i32 noundef %318) #10
  br label %325

325:                                              ; preds = %323, %309
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #9
  store i8 76, ptr %28, align 2
  %326 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 6, ptr %326, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #9
  %327 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %327, align 4, !annotation !8
  %328 = load ptr, ptr %126, align 4
  %329 = load i8, ptr %328, align 1
  %330 = zext i8 %329 to i16
  store i16 %330, ptr %29, align 4
  %331 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %331, align 2
  %332 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %332, align 4
  %333 = load ptr, ptr %123, align 4
  %334 = call i32 @i2c_transfer(ptr noundef %333, ptr noundef nonnull %29, i32 noundef 1) #9
  %335 = icmp ne i32 %334, 1
  %336 = load i32, ptr @debug, align 4
  %337 = icmp ne i32 %336, 0
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %339, label %341

339:                                              ; preds = %325
  %340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 76, i32 noundef 6, i32 noundef %334) #10
  br label %341

341:                                              ; preds = %339, %325
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #9
  store i8 77, ptr %26, align 2
  %342 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 49, ptr %342, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #9
  %343 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %343, align 4, !annotation !8
  %344 = load ptr, ptr %126, align 4
  %345 = load i8, ptr %344, align 1
  %346 = zext i8 %345 to i16
  store i16 %346, ptr %27, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %347, align 2
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %348, align 4
  %349 = load ptr, ptr %123, align 4
  %350 = call i32 @i2c_transfer(ptr noundef %349, ptr noundef nonnull %27, i32 noundef 1) #9
  %351 = icmp ne i32 %350, 1
  %352 = load i32, ptr @debug, align 4
  %353 = icmp ne i32 %352, 0
  %354 = select i1 %351, i1 %353, i1 false
  br i1 %354, label %355, label %357

355:                                              ; preds = %341
  %356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 77, i32 noundef 49, i32 noundef %350) #10
  br label %357

357:                                              ; preds = %355, %341
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #9
  store i8 78, ptr %24, align 2
  %358 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 -108, ptr %358, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  %359 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %359, align 4, !annotation !8
  %360 = load ptr, ptr %126, align 4
  %361 = load i8, ptr %360, align 1
  %362 = zext i8 %361 to i16
  store i16 %362, ptr %25, align 4
  %363 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %363, align 2
  %364 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %364, align 4
  %365 = load ptr, ptr %123, align 4
  %366 = call i32 @i2c_transfer(ptr noundef %365, ptr noundef nonnull %25, i32 noundef 1) #9
  %367 = icmp ne i32 %366, 1
  %368 = load i32, ptr @debug, align 4
  %369 = icmp ne i32 %368, 0
  %370 = select i1 %367, i1 %369, i1 false
  br i1 %370, label %371, label %373

371:                                              ; preds = %357
  %372 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 78, i32 noundef 148, i32 noundef %366) #10
  br label %373

373:                                              ; preds = %371, %357
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #9
  store i8 79, ptr %22, align 2
  %374 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 -69, ptr %374, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %375 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %375, align 4, !annotation !8
  %376 = load ptr, ptr %126, align 4
  %377 = load i8, ptr %376, align 1
  %378 = zext i8 %377 to i16
  store i16 %378, ptr %23, align 4
  %379 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %379, align 2
  %380 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %380, align 4
  %381 = load ptr, ptr %123, align 4
  %382 = call i32 @i2c_transfer(ptr noundef %381, ptr noundef nonnull %23, i32 noundef 1) #9
  %383 = icmp ne i32 %382, 1
  %384 = load i32, ptr @debug, align 4
  %385 = icmp ne i32 %384, 0
  %386 = select i1 %383, i1 %385, i1 false
  br i1 %386, label %387, label %389

387:                                              ; preds = %373
  %388 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 79, i32 noundef 187, i32 noundef %382) #10
  br label %389

389:                                              ; preds = %387, %373
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 81, ptr %20, align 2
  %390 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 4, ptr %390, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %391 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %391, align 4, !annotation !8
  %392 = load ptr, ptr %126, align 4
  %393 = load i8, ptr %392, align 1
  %394 = zext i8 %393 to i16
  store i16 %394, ptr %21, align 4
  %395 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %395, align 2
  %396 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %396, align 4
  %397 = load ptr, ptr %123, align 4
  %398 = call i32 @i2c_transfer(ptr noundef %397, ptr noundef nonnull %21, i32 noundef 1) #9
  %399 = icmp ne i32 %398, 1
  %400 = load i32, ptr @debug, align 4
  %401 = icmp ne i32 %400, 0
  %402 = select i1 %399, i1 %401, i1 false
  br i1 %402, label %403, label %405

403:                                              ; preds = %389
  %404 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 81, i32 noundef 4, i32 noundef %398) #10
  br label %405

405:                                              ; preds = %403, %389
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i8 89, ptr %18, align 2
  %406 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 48, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %407 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %407, align 4, !annotation !8
  %408 = load ptr, ptr %126, align 4
  %409 = load i8, ptr %408, align 1
  %410 = zext i8 %409 to i16
  store i16 %410, ptr %19, align 4
  %411 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %411, align 2
  %412 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %412, align 4
  %413 = load ptr, ptr %123, align 4
  %414 = call i32 @i2c_transfer(ptr noundef %413, ptr noundef nonnull %19, i32 noundef 1) #9
  %415 = icmp ne i32 %414, 1
  %416 = load i32, ptr @debug, align 4
  %417 = icmp ne i32 %416, 0
  %418 = select i1 %415, i1 %417, i1 false
  br i1 %418, label %419, label %421

419:                                              ; preds = %405
  %420 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 89, i32 noundef 48, i32 noundef %414) #10
  br label %421

421:                                              ; preds = %419, %405
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 91, ptr %16, align 2
  %422 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 73, ptr %422, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %423 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %423, align 4, !annotation !8
  %424 = load ptr, ptr %126, align 4
  %425 = load i8, ptr %424, align 1
  %426 = zext i8 %425 to i16
  store i16 %426, ptr %17, align 4
  %427 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %427, align 2
  %428 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %428, align 4
  %429 = load ptr, ptr %123, align 4
  %430 = call i32 @i2c_transfer(ptr noundef %429, ptr noundef nonnull %17, i32 noundef 1) #9
  %431 = icmp ne i32 %430, 1
  %432 = load i32, ptr @debug, align 4
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %431, i1 %433, i1 false
  br i1 %434, label %435, label %437

435:                                              ; preds = %421
  %436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 91, i32 noundef 73, i32 noundef %430) #10
  br label %437

437:                                              ; preds = %435, %421
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 92, ptr %14, align 2
  %438 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 114, ptr %438, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %439 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %439, align 4, !annotation !8
  %440 = load ptr, ptr %126, align 4
  %441 = load i8, ptr %440, align 1
  %442 = zext i8 %441 to i16
  store i16 %442, ptr %15, align 4
  %443 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %443, align 2
  %444 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %444, align 4
  %445 = load ptr, ptr %123, align 4
  %446 = call i32 @i2c_transfer(ptr noundef %445, ptr noundef nonnull %15, i32 noundef 1) #9
  %447 = icmp ne i32 %446, 1
  %448 = load i32, ptr @debug, align 4
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %447, i1 %449, i1 false
  br i1 %450, label %451, label %453

451:                                              ; preds = %437
  %452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 92, i32 noundef 114, i32 noundef %446) #10
  br label %453

453:                                              ; preds = %451, %437
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 -128, ptr %12, align 2
  %454 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 32, ptr %454, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %455 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %455, align 4, !annotation !8
  %456 = load ptr, ptr %126, align 4
  %457 = load i8, ptr %456, align 1
  %458 = zext i8 %457 to i16
  store i16 %458, ptr %13, align 4
  %459 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %459, align 2
  %460 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %460, align 4
  %461 = load ptr, ptr %123, align 4
  %462 = call i32 @i2c_transfer(ptr noundef %461, ptr noundef nonnull %13, i32 noundef 1) #9
  %463 = icmp ne i32 %462, 1
  %464 = load i32, ptr @debug, align 4
  %465 = icmp ne i32 %464, 0
  %466 = select i1 %463, i1 %465, i1 false
  br i1 %466, label %467, label %469

467:                                              ; preds = %453
  %468 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 128, i32 noundef 32, i32 noundef %462) #10
  br label %469

469:                                              ; preds = %467, %453
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 -126, ptr %10, align 2
  %470 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 -78, ptr %470, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %471 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %471, align 4, !annotation !8
  %472 = load ptr, ptr %126, align 4
  %473 = load i8, ptr %472, align 1
  %474 = zext i8 %473 to i16
  store i16 %474, ptr %11, align 4
  %475 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %475, align 2
  %476 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %476, align 4
  %477 = load ptr, ptr %123, align 4
  %478 = call i32 @i2c_transfer(ptr noundef %477, ptr noundef nonnull %11, i32 noundef 1) #9
  %479 = icmp ne i32 %478, 1
  %480 = load i32, ptr @debug, align 4
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %479, i1 %481, i1 false
  br i1 %482, label %483, label %485

483:                                              ; preds = %469
  %484 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 130, i32 noundef 178, i32 noundef %478) #10
  br label %485

485:                                              ; preds = %483, %469
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 -104, ptr %8, align 2
  %486 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 16, ptr %486, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %487 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %487, align 4, !annotation !8
  %488 = load ptr, ptr %126, align 4
  %489 = load i8, ptr %488, align 1
  %490 = zext i8 %489 to i16
  store i16 %490, ptr %9, align 4
  %491 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %491, align 2
  %492 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %492, align 4
  %493 = load ptr, ptr %123, align 4
  %494 = call i32 @i2c_transfer(ptr noundef %493, ptr noundef nonnull %9, i32 noundef 1) #9
  %495 = icmp ne i32 %494, 1
  %496 = load i32, ptr @debug, align 4
  %497 = icmp ne i32 %496, 0
  %498 = select i1 %495, i1 %497, i1 false
  br i1 %498, label %499, label %501

499:                                              ; preds = %485
  %500 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 152, i32 noundef 16, i32 noundef %494) #10
  br label %501

501:                                              ; preds = %499, %485
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  %502 = load ptr, ptr %126, align 4
  %503 = getelementptr inbounds %struct.nxt6000_config, ptr %502, i32 0, i32 1
  %504 = load i8, ptr %503, align 1
  %505 = and i8 %504, 1
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %524, label %507

507:                                              ; preds = %501
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 -103, ptr %6, align 2
  %508 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 1, ptr %508, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %509 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %509, align 4, !annotation !8
  %510 = load ptr, ptr %126, align 4
  %511 = load i8, ptr %510, align 1
  %512 = zext i8 %511 to i16
  store i16 %512, ptr %7, align 4
  %513 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %513, align 2
  %514 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %514, align 4
  %515 = load ptr, ptr %123, align 4
  %516 = call i32 @i2c_transfer(ptr noundef %515, ptr noundef nonnull %7, i32 noundef 1) #9
  %517 = icmp ne i32 %516, 1
  %518 = load i32, ptr @debug, align 4
  %519 = icmp ne i32 %518, 0
  %520 = select i1 %517, i1 %519, i1 false
  br i1 %520, label %521, label %523

521:                                              ; preds = %507
  %522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 153, i32 noundef 1, i32 noundef %516) #10
  br label %523

523:                                              ; preds = %521, %507
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br label %541

524:                                              ; preds = %501
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 -103, ptr %4, align 2
  %525 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %525, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %526 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %526, align 4, !annotation !8
  %527 = load ptr, ptr %126, align 4
  %528 = load i8, ptr %527, align 1
  %529 = zext i8 %528 to i16
  store i16 %529, ptr %5, align 4
  %530 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %530, align 2
  %531 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %531, align 4
  %532 = load ptr, ptr %123, align 4
  %533 = call i32 @i2c_transfer(ptr noundef %532, ptr noundef nonnull %5, i32 noundef 1) #9
  %534 = icmp ne i32 %533, 1
  %535 = load i32, ptr @debug, align 4
  %536 = icmp ne i32 %535, 0
  %537 = select i1 %534, i1 %536, i1 false
  br i1 %537, label %538, label %540

538:                                              ; preds = %524
  %539 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 153, i32 noundef 0, i32 noundef %533) #10
  br label %540

540:                                              ; preds = %538, %524
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %541

541:                                              ; preds = %540, %523
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 -102, ptr %2, align 2
  %542 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %542, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %543 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %543, align 4, !annotation !8
  %544 = load ptr, ptr %126, align 4
  %545 = load i8, ptr %544, align 1
  %546 = zext i8 %545 to i16
  store i16 %546, ptr %3, align 4
  %547 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %547, align 2
  %548 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %548, align 4
  %549 = load ptr, ptr %123, align 4
  %550 = call i32 @i2c_transfer(ptr noundef %549, ptr noundef nonnull %3, i32 noundef 1) #9
  %551 = icmp ne i32 %550, 1
  %552 = load i32, ptr @debug, align 4
  %553 = icmp ne i32 %552, 0
  %554 = select i1 %551, i1 %553, i1 false
  br i1 %554, label %555, label %557

555:                                              ; preds = %541
  %556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 154, i32 noundef 0, i32 noundef %550) #10
  br label %557

557:                                              ; preds = %555, %541
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt6000_set_frontend(ptr noundef %0) #0 {
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
  %13 = alloca [1 x i8], align 1
  %14 = alloca [1 x i8], align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [1 x i8], align 1
  %19 = alloca [1 x i8], align 1
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [1 x i8], align 1
  %24 = alloca [1 x i8], align 1
  %25 = alloca [2 x %struct.i2c_msg], align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [1 x i8], align 1
  %29 = alloca [1 x i8], align 1
  %30 = alloca [2 x %struct.i2c_msg], align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [1 x i8], align 1
  %34 = alloca [1 x i8], align 1
  %35 = alloca [2 x %struct.i2c_msg], align 4
  %36 = alloca [2 x i8], align 2
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [1 x i8], align 1
  %39 = alloca [1 x i8], align 1
  %40 = alloca [2 x %struct.i2c_msg], align 4
  %41 = alloca [2 x i8], align 2
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [1 x i8], align 1
  %44 = alloca [1 x i8], align 1
  %45 = alloca [2 x %struct.i2c_msg], align 4
  %46 = alloca [2 x i8], align 2
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [2 x i8], align 2
  %49 = alloca %struct.i2c_msg, align 4
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %1
  %56 = tail call i32 %53(ptr noundef %0) #9
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call i32 %58(ptr noundef %0, i32 noundef 0) #9
  br label %62

62:                                               ; preds = %60, %55, %1
  %63 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %64 = load i32, ptr %63, align 4
  switch i32 %64, label %482 [
    i32 6000000, label %67
    i32 7000000, label %65
    i32 8000000, label %66
  ]

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %65, %62
  %68 = phi i32 [ 29257, %66 ], [ 25600, %65 ], [ 21943, %62 ]
  %69 = trunc i32 %68 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #9
  store i8 91, ptr %48, align 2
  %70 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 %69, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #9
  %71 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 2, ptr %71, align 4, !annotation !8
  %72 = getelementptr inbounds %struct.nxt6000_state, ptr %51, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i16
  store i16 %75, ptr %49, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %76, align 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %77, align 4
  %78 = load ptr, ptr %51, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %49, i32 noundef 1) #9
  %80 = icmp ne i32 %79, 1
  %81 = load i32, ptr @debug, align 4
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %87

84:                                               ; preds = %67
  %85 = and i32 %68, 255
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 91, i32 noundef %85, i32 noundef %79) #10
  br label %87

87:                                               ; preds = %84, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #9
  br i1 %80, label %482, label %88

88:                                               ; preds = %87
  %89 = lshr i32 %68, 8
  %90 = trunc i32 %89 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #9
  store i8 92, ptr %46, align 2
  %91 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 %90, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #9
  %92 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 2, ptr %92, align 4, !annotation !8
  %93 = load ptr, ptr %72, align 4
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %47, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %96, align 2
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %97, align 4
  %98 = load ptr, ptr %51, align 4
  %99 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %47, i32 noundef 1) #9
  %100 = icmp ne i32 %99, 1
  %101 = load i32, ptr @debug, align 4
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %104, label %106

104:                                              ; preds = %88
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 92, i32 noundef %89, i32 noundef %99) #10
  br label %106

106:                                              ; preds = %104, %88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #9
  br i1 %100, label %482, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %109 = load i32, ptr %108, align 4
  switch i32 %109, label %482 [
    i32 0, label %110
    i32 1, label %151
    i32 4, label %193
    i32 2, label %193
    i32 3, label %235
  ]

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %43) #9
  store i8 68, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %44) #9
  store i8 0, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %45) #9
  %111 = getelementptr inbounds i8, ptr %45, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %111, i8 0, i32 16, i1 false) #9, !annotation !8
  %112 = load ptr, ptr %72, align 4
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %45, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %115, align 2
  store i16 1, ptr %111, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %43, ptr %116, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1
  %118 = load i8, ptr %112, align 1
  %119 = zext i8 %118 to i16
  store i16 %119, ptr %117, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 1
  store i16 1, ptr %120, align 2
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 2
  store i16 1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 3
  store ptr %44, ptr %122, align 4
  %123 = load ptr, ptr %51, align 4
  %124 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %45, i32 noundef 2) #9
  %125 = icmp ne i32 %124, 2
  %126 = load i32, ptr @debug, align 4
  %127 = icmp ne i32 %126, 0
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %131

129:                                              ; preds = %110
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 68, i32 noundef %124) #10
  br label %131

131:                                              ; preds = %129, %110
  %132 = load i8, ptr %44, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %45) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %44) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %43) #9
  %133 = and i8 %132, -4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #9
  store i8 68, ptr %41, align 2
  %134 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 %133, ptr %134, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #9
  %135 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 2, ptr %135, align 4, !annotation !8
  %136 = load ptr, ptr %72, align 4
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i16
  store i16 %138, ptr %42, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %139, align 2
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %140, align 4
  %141 = load ptr, ptr %51, align 4
  %142 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %42, i32 noundef 1) #9
  %143 = icmp ne i32 %142, 1
  %144 = load i32, ptr @debug, align 4
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %150

147:                                              ; preds = %131
  %148 = zext i8 %133 to i32
  %149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 68, i32 noundef %148, i32 noundef %142) #10
  br label %150

150:                                              ; preds = %147, %131
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #9
  br i1 %143, label %482, label %276

151:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %38) #9
  store i8 68, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %39) #9
  store i8 0, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %40) #9
  %152 = getelementptr inbounds i8, ptr %40, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %152, i8 0, i32 16, i1 false) #9, !annotation !8
  %153 = load ptr, ptr %72, align 4
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %40, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %156, align 2
  store i16 1, ptr %152, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %38, ptr %157, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1
  %159 = load i8, ptr %153, align 1
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %158, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1, i32 1
  store i16 1, ptr %161, align 2
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1, i32 2
  store i16 1, ptr %162, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1, i32 3
  store ptr %39, ptr %163, align 4
  %164 = load ptr, ptr %51, align 4
  %165 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %40, i32 noundef 2) #9
  %166 = icmp ne i32 %165, 2
  %167 = load i32, ptr @debug, align 4
  %168 = icmp ne i32 %167, 0
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %170, label %172

170:                                              ; preds = %151
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 68, i32 noundef %165) #10
  br label %172

172:                                              ; preds = %170, %151
  %173 = load i8, ptr %39, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %40) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %39) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %38) #9
  %174 = and i8 %173, -4
  %175 = or i8 %174, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #9
  store i8 68, ptr %36, align 2
  %176 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 %175, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #9
  %177 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 2, ptr %177, align 4, !annotation !8
  %178 = load ptr, ptr %72, align 4
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i16
  store i16 %180, ptr %37, align 4
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %181, align 2
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %182, align 4
  %183 = load ptr, ptr %51, align 4
  %184 = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %37, i32 noundef 1) #9
  %185 = icmp ne i32 %184, 1
  %186 = load i32, ptr @debug, align 4
  %187 = icmp ne i32 %186, 0
  %188 = select i1 %185, i1 %187, i1 false
  br i1 %188, label %189, label %192

189:                                              ; preds = %172
  %190 = zext i8 %175 to i32
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 68, i32 noundef %190, i32 noundef %184) #10
  br label %192

192:                                              ; preds = %189, %172
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #9
  br i1 %185, label %482, label %276

193:                                              ; preds = %107, %107
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %33) #9
  store i8 68, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %34) #9
  store i8 0, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %35) #9
  %194 = getelementptr inbounds i8, ptr %35, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %194, i8 0, i32 16, i1 false) #9, !annotation !8
  %195 = load ptr, ptr %72, align 4
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i16
  store i16 %197, ptr %35, align 4
  %198 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %198, align 2
  store i16 1, ptr %194, align 4
  %199 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %33, ptr %199, align 4
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1
  %201 = load i8, ptr %195, align 1
  %202 = zext i8 %201 to i16
  store i16 %202, ptr %200, align 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 1
  store i16 1, ptr %203, align 2
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 2
  store i16 1, ptr %204, align 4
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 3
  store ptr %34, ptr %205, align 4
  %206 = load ptr, ptr %51, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %35, i32 noundef 2) #9
  %208 = icmp ne i32 %207, 2
  %209 = load i32, ptr @debug, align 4
  %210 = icmp ne i32 %209, 0
  %211 = select i1 %208, i1 %210, i1 false
  br i1 %211, label %212, label %214

212:                                              ; preds = %193
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 68, i32 noundef %207) #10
  br label %214

214:                                              ; preds = %212, %193
  %215 = load i8, ptr %34, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %35) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #9
  %216 = and i8 %215, -4
  %217 = or i8 %216, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #9
  store i8 68, ptr %31, align 2
  %218 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 %217, ptr %218, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #9
  %219 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 2, ptr %219, align 4, !annotation !8
  %220 = load ptr, ptr %72, align 4
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i16
  store i16 %222, ptr %32, align 4
  %223 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %223, align 2
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %224, align 4
  %225 = load ptr, ptr %51, align 4
  %226 = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %32, i32 noundef 1) #9
  %227 = icmp ne i32 %226, 1
  %228 = load i32, ptr @debug, align 4
  %229 = icmp ne i32 %228, 0
  %230 = select i1 %227, i1 %229, i1 false
  br i1 %230, label %231, label %234

231:                                              ; preds = %214
  %232 = zext i8 %217 to i32
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 68, i32 noundef %232, i32 noundef %226) #10
  br label %234

234:                                              ; preds = %231, %214
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #9
  br i1 %227, label %482, label %276

235:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #9
  store i8 68, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #9
  store i8 0, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #9
  %236 = getelementptr inbounds i8, ptr %30, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %236, i8 0, i32 16, i1 false) #9, !annotation !8
  %237 = load ptr, ptr %72, align 4
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %238 to i16
  store i16 %239, ptr %30, align 4
  %240 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %240, align 2
  store i16 1, ptr %236, align 4
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %28, ptr %241, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1
  %243 = load i8, ptr %237, align 1
  %244 = zext i8 %243 to i16
  store i16 %244, ptr %242, align 4
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 1
  store i16 1, ptr %245, align 2
  %246 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 2
  store i16 1, ptr %246, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 3
  store ptr %29, ptr %247, align 4
  %248 = load ptr, ptr %51, align 4
  %249 = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %30, i32 noundef 2) #9
  %250 = icmp ne i32 %249, 2
  %251 = load i32, ptr @debug, align 4
  %252 = icmp ne i32 %251, 0
  %253 = select i1 %250, i1 %252, i1 false
  br i1 %253, label %254, label %256

254:                                              ; preds = %235
  %255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 68, i32 noundef %249) #10
  br label %256

256:                                              ; preds = %254, %235
  %257 = load i8, ptr %29, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #9
  %258 = or i8 %257, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #9
  store i8 68, ptr %26, align 2
  %259 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %258, ptr %259, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #9
  %260 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %260, align 4, !annotation !8
  %261 = load ptr, ptr %72, align 4
  %262 = load i8, ptr %261, align 1
  %263 = zext i8 %262 to i16
  store i16 %263, ptr %27, align 4
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %264, align 2
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %265, align 4
  %266 = load ptr, ptr %51, align 4
  %267 = call i32 @i2c_transfer(ptr noundef %266, ptr noundef nonnull %27, i32 noundef 1) #9
  %268 = icmp ne i32 %267, 1
  %269 = load i32, ptr @debug, align 4
  %270 = icmp ne i32 %269, 0
  %271 = select i1 %268, i1 %270, i1 false
  br i1 %271, label %272, label %275

272:                                              ; preds = %256
  %273 = zext i8 %258 to i32
  %274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 68, i32 noundef %273, i32 noundef %267) #10
  br label %275

275:                                              ; preds = %272, %256
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #9
  br i1 %268, label %482, label %276

276:                                              ; preds = %275, %234, %192, %150
  %277 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %278 = load i32, ptr %277, align 4
  switch i32 %278, label %482 [
    i32 0, label %279
    i32 1, label %361
    i32 2, label %361
  ]

279:                                              ; preds = %276
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #9
  store i8 -126, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #9
  store i8 0, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #9
  %280 = getelementptr inbounds i8, ptr %25, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %280, i8 0, i32 16, i1 false) #9, !annotation !8
  %281 = load ptr, ptr %72, align 4
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i16
  store i16 %283, ptr %25, align 4
  %284 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %284, align 2
  store i16 1, ptr %280, align 4
  %285 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %23, ptr %285, align 4
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1
  %287 = load i8, ptr %281, align 1
  %288 = zext i8 %287 to i16
  store i16 %288, ptr %286, align 4
  %289 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 1
  store i16 1, ptr %289, align 2
  %290 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 2
  store i16 1, ptr %290, align 4
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 3
  store ptr %24, ptr %291, align 4
  %292 = load ptr, ptr %51, align 4
  %293 = call i32 @i2c_transfer(ptr noundef %292, ptr noundef nonnull %25, i32 noundef 2) #9
  %294 = icmp ne i32 %293, 2
  %295 = load i32, ptr @debug, align 4
  %296 = icmp ne i32 %295, 0
  %297 = select i1 %294, i1 %296, i1 false
  br i1 %297, label %298, label %300

298:                                              ; preds = %279
  %299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 130, i32 noundef %293) #10
  br label %300

300:                                              ; preds = %298, %279
  %301 = load i8, ptr %24, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #9
  %302 = and i8 %301, -4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #9
  store i8 -126, ptr %21, align 2
  %303 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 %302, ptr %303, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #9
  %304 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %304, align 4, !annotation !8
  %305 = load ptr, ptr %72, align 4
  %306 = load i8, ptr %305, align 1
  %307 = zext i8 %306 to i16
  store i16 %307, ptr %22, align 4
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %308, align 2
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %309, align 4
  %310 = load ptr, ptr %51, align 4
  %311 = call i32 @i2c_transfer(ptr noundef %310, ptr noundef nonnull %22, i32 noundef 1) #9
  %312 = icmp ne i32 %311, 1
  %313 = load i32, ptr @debug, align 4
  %314 = icmp ne i32 %313, 0
  %315 = select i1 %312, i1 %314, i1 false
  br i1 %315, label %316, label %319

316:                                              ; preds = %300
  %317 = zext i8 %302 to i32
  %318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 130, i32 noundef %317, i32 noundef %311) #10
  br label %319

319:                                              ; preds = %316, %300
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #9
  br i1 %312, label %482, label %320

320:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #9
  store i8 68, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #9
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #9
  %321 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %321, i8 0, i32 16, i1 false) #9, !annotation !8
  %322 = load ptr, ptr %72, align 4
  %323 = load i8, ptr %322, align 1
  %324 = zext i8 %323 to i16
  store i16 %324, ptr %20, align 4
  %325 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %325, align 2
  store i16 1, ptr %321, align 4
  %326 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %326, align 4
  %327 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %328 = load i8, ptr %322, align 1
  %329 = zext i8 %328 to i16
  store i16 %329, ptr %327, align 4
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %330, align 2
  %331 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 1, ptr %331, align 4
  %332 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %332, align 4
  %333 = load ptr, ptr %51, align 4
  %334 = call i32 @i2c_transfer(ptr noundef %333, ptr noundef nonnull %20, i32 noundef 2) #9
  %335 = icmp ne i32 %334, 2
  %336 = load i32, ptr @debug, align 4
  %337 = icmp ne i32 %336, 0
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %339, label %341

339:                                              ; preds = %320
  %340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 68, i32 noundef %334) #10
  br label %341

341:                                              ; preds = %339, %320
  %342 = load i8, ptr %19, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #9
  %343 = and i8 %342, -5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 68, ptr %16, align 2
  %344 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %343, ptr %344, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %345 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %345, align 4, !annotation !8
  %346 = load ptr, ptr %72, align 4
  %347 = load i8, ptr %346, align 1
  %348 = zext i8 %347 to i16
  store i16 %348, ptr %17, align 4
  %349 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %349, align 2
  %350 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %350, align 4
  %351 = load ptr, ptr %51, align 4
  %352 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %17, i32 noundef 1) #9
  %353 = icmp ne i32 %352, 1
  %354 = load i32, ptr @debug, align 4
  %355 = icmp ne i32 %354, 0
  %356 = select i1 %353, i1 %355, i1 false
  br i1 %356, label %357, label %360

357:                                              ; preds = %341
  %358 = zext i8 %343 to i32
  %359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 68, i32 noundef %358, i32 noundef %352) #10
  br label %360

360:                                              ; preds = %357, %341
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  br i1 %353, label %482, label %444

361:                                              ; preds = %276, %276
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 -126, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #9
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #9
  %362 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %362, i8 0, i32 16, i1 false) #9, !annotation !8
  %363 = load ptr, ptr %72, align 4
  %364 = load i8, ptr %363, align 1
  %365 = zext i8 %364 to i16
  store i16 %365, ptr %15, align 4
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %366, align 2
  store i16 1, ptr %362, align 4
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %13, ptr %367, align 4
  %368 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %369 = load i8, ptr %363, align 1
  %370 = zext i8 %369 to i16
  store i16 %370, ptr %368, align 4
  %371 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %371, align 2
  %372 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 1, ptr %372, align 4
  %373 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %14, ptr %373, align 4
  %374 = load ptr, ptr %51, align 4
  %375 = call i32 @i2c_transfer(ptr noundef %374, ptr noundef nonnull %15, i32 noundef 2) #9
  %376 = icmp ne i32 %375, 2
  %377 = load i32, ptr @debug, align 4
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %376, i1 %378, i1 false
  br i1 %379, label %380, label %382

380:                                              ; preds = %361
  %381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 130, i32 noundef %375) #10
  br label %382

382:                                              ; preds = %380, %361
  %383 = load i8, ptr %14, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  %384 = and i8 %383, -4
  %385 = or i8 %384, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  store i8 -126, ptr %11, align 2
  %386 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %385, ptr %386, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %387 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %387, align 4, !annotation !8
  %388 = load ptr, ptr %72, align 4
  %389 = load i8, ptr %388, align 1
  %390 = zext i8 %389 to i16
  store i16 %390, ptr %12, align 4
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %391, align 2
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %392, align 4
  %393 = load ptr, ptr %51, align 4
  %394 = call i32 @i2c_transfer(ptr noundef %393, ptr noundef nonnull %12, i32 noundef 1) #9
  %395 = icmp ne i32 %394, 1
  %396 = load i32, ptr @debug, align 4
  %397 = icmp ne i32 %396, 0
  %398 = select i1 %395, i1 %397, i1 false
  br i1 %398, label %399, label %402

399:                                              ; preds = %382
  %400 = zext i8 %385 to i32
  %401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 130, i32 noundef %400, i32 noundef %394) #10
  br label %402

402:                                              ; preds = %399, %382
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  br i1 %395, label %482, label %403

403:                                              ; preds = %402
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 68, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %404 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %404, i8 0, i32 16, i1 false) #9, !annotation !8
  %405 = load ptr, ptr %72, align 4
  %406 = load i8, ptr %405, align 1
  %407 = zext i8 %406 to i16
  store i16 %407, ptr %10, align 4
  %408 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %408, align 2
  store i16 1, ptr %404, align 4
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %409, align 4
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %411 = load i8, ptr %405, align 1
  %412 = zext i8 %411 to i16
  store i16 %412, ptr %410, align 4
  %413 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %413, align 2
  %414 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %414, align 4
  %415 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %415, align 4
  %416 = load ptr, ptr %51, align 4
  %417 = call i32 @i2c_transfer(ptr noundef %416, ptr noundef nonnull %10, i32 noundef 2) #9
  %418 = icmp ne i32 %417, 2
  %419 = load i32, ptr @debug, align 4
  %420 = icmp ne i32 %419, 0
  %421 = select i1 %418, i1 %420, i1 false
  br i1 %421, label %422, label %424

422:                                              ; preds = %403
  %423 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 68, i32 noundef %417) #10
  br label %424

424:                                              ; preds = %422, %403
  %425 = load i8, ptr %9, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %426 = or i8 %425, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 68, ptr %6, align 2
  %427 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %426, ptr %427, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %428 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %428, align 4, !annotation !8
  %429 = load ptr, ptr %72, align 4
  %430 = load i8, ptr %429, align 1
  %431 = zext i8 %430 to i16
  store i16 %431, ptr %7, align 4
  %432 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %432, align 2
  %433 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %433, align 4
  %434 = load ptr, ptr %51, align 4
  %435 = call i32 @i2c_transfer(ptr noundef %434, ptr noundef nonnull %7, i32 noundef 1) #9
  %436 = icmp ne i32 %435, 1
  %437 = load i32, ptr @debug, align 4
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %436, i1 %438, i1 false
  br i1 %439, label %440, label %443

440:                                              ; preds = %424
  %441 = zext i8 %426 to i32
  %442 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 68, i32 noundef %441, i32 noundef %435) #10
  br label %443

443:                                              ; preds = %440, %424
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br i1 %436, label %482, label %444

444:                                              ; preds = %443, %360
  %445 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %446 = load i32, ptr %445, align 4
  switch i32 %446, label %482 [
    i32 0, label %447
    i32 1, label %464
  ]

447:                                              ; preds = %444
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 75, ptr %4, align 2
  %448 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %448, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %449 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %449, align 4, !annotation !8
  %450 = load ptr, ptr %72, align 4
  %451 = load i8, ptr %450, align 1
  %452 = zext i8 %451 to i16
  store i16 %452, ptr %5, align 4
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %453, align 2
  %454 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %454, align 4
  %455 = load ptr, ptr %51, align 4
  %456 = call i32 @i2c_transfer(ptr noundef %455, ptr noundef nonnull %5, i32 noundef 1) #9
  %457 = icmp ne i32 %456, 1
  %458 = load i32, ptr @debug, align 4
  %459 = icmp ne i32 %458, 0
  %460 = select i1 %457, i1 %459, i1 false
  br i1 %460, label %461, label %463

461:                                              ; preds = %447
  %462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 75, i32 noundef 0, i32 noundef %456) #10
  br label %463

463:                                              ; preds = %461, %447
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br i1 %457, label %482, label %481

464:                                              ; preds = %444
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 75, ptr %2, align 2
  %465 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 1, ptr %465, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %466 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %466, align 4, !annotation !8
  %467 = load ptr, ptr %72, align 4
  %468 = load i8, ptr %467, align 1
  %469 = zext i8 %468 to i16
  store i16 %469, ptr %3, align 4
  %470 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %470, align 2
  %471 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %471, align 4
  %472 = load ptr, ptr %51, align 4
  %473 = call i32 @i2c_transfer(ptr noundef %472, ptr noundef nonnull %3, i32 noundef 1) #9
  %474 = icmp ne i32 %473, 1
  %475 = load i32, ptr @debug, align 4
  %476 = icmp ne i32 %475, 0
  %477 = select i1 %474, i1 %476, i1 false
  br i1 %477, label %478, label %480

478:                                              ; preds = %464
  %479 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 75, i32 noundef 1, i32 noundef %473) #10
  br label %480

480:                                              ; preds = %478, %464
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br i1 %474, label %482, label %481

481:                                              ; preds = %480, %463
  call void @msleep(i32 noundef 500) #9
  br label %482

482:                                              ; preds = %481, %480, %463, %444, %443, %402, %360, %319, %276, %275, %234, %192, %150, %107, %106, %87, %62
  %483 = phi i32 [ 0, %481 ], [ -5, %87 ], [ -22, %62 ], [ -5, %106 ], [ -22, %107 ], [ -5, %275 ], [ -5, %234 ], [ -5, %192 ], [ -5, %150 ], [ -22, %276 ], [ -5, %402 ], [ -5, %319 ], [ -5, %443 ], [ -5, %360 ], [ -22, %444 ], [ -5, %480 ], [ -5, %463 ]
  ret i32 %483
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nxt6000_fe_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 500, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt6000_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
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
  %21 = alloca [1 x i8], align 1
  %22 = alloca [1 x i8], align 1
  %23 = alloca [2 x %struct.i2c_msg], align 4
  %24 = alloca [1 x i8], align 1
  %25 = alloca [1 x i8], align 1
  %26 = alloca [2 x %struct.i2c_msg], align 4
  %27 = alloca [1 x i8], align 1
  %28 = alloca [1 x i8], align 1
  %29 = alloca [2 x %struct.i2c_msg], align 4
  %30 = alloca [1 x i8], align 1
  %31 = alloca [1 x i8], align 1
  %32 = alloca [2 x %struct.i2c_msg], align 4
  %33 = alloca [1 x i8], align 1
  %34 = alloca [1 x i8], align 1
  %35 = alloca [2 x %struct.i2c_msg], align 4
  %36 = alloca [1 x i8], align 1
  %37 = alloca [1 x i8], align 1
  %38 = alloca [2 x %struct.i2c_msg], align 4
  %39 = alloca [1 x i8], align 1
  %40 = alloca [1 x i8], align 1
  %41 = alloca [2 x %struct.i2c_msg], align 4
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %39) #9
  store i8 65, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %40) #9
  store i8 0, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %41) #9
  %44 = getelementptr inbounds i8, ptr %41, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %44, i8 0, i32 16, i1 false) #9, !annotation !8
  %45 = getelementptr inbounds %struct.nxt6000_state, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %41, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 1, ptr %44, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %39, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 1
  %52 = load i8, ptr %46, align 1
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 1, i32 1
  store i16 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 1, i32 2
  store i16 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 1, i32 3
  store ptr %40, ptr %56, align 4
  %57 = load ptr, ptr %43, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %41, i32 noundef 2) #9
  %59 = icmp ne i32 %58, 2
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ne i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %65

63:                                               ; preds = %2
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 65, i32 noundef %58) #10
  br label %65

65:                                               ; preds = %63, %2
  %66 = load i8, ptr %40, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %41) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %40) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %39) #9
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, ptr %1, align 4
  %72 = or i32 %71, 1
  store i32 %72, ptr %1, align 4
  br label %73

73:                                               ; preds = %70, %65
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %36) #9
  store i8 82, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #9
  store i8 0, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %38) #9
  %74 = getelementptr inbounds i8, ptr %38, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %74, i8 0, i32 16, i1 false) #9, !annotation !8
  %75 = load ptr, ptr %45, align 4
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i16
  store i16 %77, ptr %38, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %78, align 2
  store i16 1, ptr %74, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %36, ptr %79, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 1
  %81 = load i8, ptr %75, align 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 1, i32 1
  store i16 1, ptr %83, align 2
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 1, i32 2
  store i16 1, ptr %84, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 1, i32 3
  store ptr %37, ptr %85, align 4
  %86 = load ptr, ptr %43, align 4
  %87 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %38, i32 noundef 2) #9
  %88 = icmp ne i32 %87, 2
  %89 = load i32, ptr @debug, align 4
  %90 = icmp ne i32 %89, 0
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %94

92:                                               ; preds = %73
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 82, i32 noundef %87) #10
  br label %94

94:                                               ; preds = %92, %73
  %95 = load i8, ptr %37, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %38) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %36) #9
  %96 = and i8 %95, 16
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %1, align 4
  %100 = or i32 %99, 2
  store i32 %100, ptr %1, align 4
  br label %101

101:                                              ; preds = %98, %94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %33) #9
  store i8 50, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %34) #9
  store i8 0, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %35) #9
  %102 = getelementptr inbounds i8, ptr %35, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %102, i8 0, i32 16, i1 false) #9, !annotation !8
  %103 = load ptr, ptr %45, align 4
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i16
  store i16 %105, ptr %35, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %106, align 2
  store i16 1, ptr %102, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %33, ptr %107, align 4
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1
  %109 = load i8, ptr %103, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %108, align 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 1
  store i16 1, ptr %111, align 2
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 2
  store i16 1, ptr %112, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 3
  store ptr %34, ptr %113, align 4
  %114 = load ptr, ptr %43, align 4
  %115 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %35, i32 noundef 2) #9
  %116 = icmp ne i32 %115, 2
  %117 = load i32, ptr @debug, align 4
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %122

120:                                              ; preds = %101
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 50, i32 noundef %115) #10
  br label %122

122:                                              ; preds = %120, %101
  %123 = load i8, ptr %34, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %35) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #9
  %124 = icmp sgt i8 %123, -1
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr %1, align 4
  %127 = or i32 %126, 4
  store i32 %127, ptr %1, align 4
  br label %128

128:                                              ; preds = %125, %122
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %30) #9
  store i8 33, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %31) #9
  store i8 0, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #9
  %129 = getelementptr inbounds i8, ptr %32, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %129, i8 0, i32 16, i1 false) #9, !annotation !8
  %130 = load ptr, ptr %45, align 4
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %32, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %133, align 2
  store i16 1, ptr %129, align 4
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %30, ptr %134, align 4
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1
  %136 = load i8, ptr %130, align 1
  %137 = zext i8 %136 to i16
  store i16 %137, ptr %135, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 1
  store i16 1, ptr %138, align 2
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 2
  store i16 1, ptr %139, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 3
  store ptr %31, ptr %140, align 4
  %141 = load ptr, ptr %43, align 4
  %142 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %32, i32 noundef 2) #9
  %143 = icmp ne i32 %142, 2
  %144 = load i32, ptr @debug, align 4
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %149

147:                                              ; preds = %128
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 33, i32 noundef %142) #10
  br label %149

149:                                              ; preds = %147, %128
  %150 = load i8, ptr %31, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %30) #9
  %151 = and i8 %150, 3
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr %1, align 4
  %155 = or i32 %154, 8
  store i32 %155, ptr %1, align 4
  br label %156

156:                                              ; preds = %153, %149
  %157 = and i32 %67, 64
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load i32, ptr %1, align 4
  %161 = icmp eq i32 %160, 15
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 31, ptr %1, align 4
  br label %163

163:                                              ; preds = %162, %159, %156
  %164 = load i32, ptr @debug, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %447, label %166

166:                                              ; preds = %163
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #9
  store i8 33, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #9
  store i8 0, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #9
  %168 = getelementptr inbounds i8, ptr %29, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %168, i8 0, i32 16, i1 false) #9, !annotation !8
  %169 = load ptr, ptr %45, align 4
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i16
  store i16 %171, ptr %29, align 4
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %172, align 2
  store i16 1, ptr %168, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %27, ptr %173, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1
  %175 = load i8, ptr %169, align 1
  %176 = zext i8 %175 to i16
  store i16 %176, ptr %174, align 4
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 1
  store i16 1, ptr %177, align 2
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 2
  store i16 1, ptr %178, align 4
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 3
  store ptr %28, ptr %179, align 4
  %180 = load ptr, ptr %43, align 4
  %181 = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %29, i32 noundef 2) #9
  %182 = icmp ne i32 %181, 2
  %183 = load i32, ptr @debug, align 4
  %184 = icmp ne i32 %183, 0
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %188

186:                                              ; preds = %166
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 33, i32 noundef %181) #10
  br label %188

188:                                              ; preds = %186, %166
  %189 = load i8, ptr %28, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #9
  %190 = zext i8 %189 to i32
  %191 = and i32 %190, 1
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %191) #10
  %193 = lshr i32 %190, 1
  %194 = and i32 %193, 1
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %194) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #9
  store i8 50, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #9
  store i8 0, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #9
  %196 = getelementptr inbounds i8, ptr %26, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %196, i8 0, i32 16, i1 false) #9, !annotation !8
  %197 = load ptr, ptr %45, align 4
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i16
  store i16 %199, ptr %26, align 4
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %200, align 2
  store i16 1, ptr %196, align 4
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %24, ptr %201, align 4
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1
  %203 = load i8, ptr %197, align 1
  %204 = zext i8 %203 to i16
  store i16 %204, ptr %202, align 4
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 1
  store i16 1, ptr %205, align 2
  %206 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 2
  store i16 1, ptr %206, align 4
  %207 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 3
  store ptr %25, ptr %207, align 4
  %208 = load ptr, ptr %43, align 4
  %209 = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %26, i32 noundef 2) #9
  %210 = icmp ne i32 %209, 2
  %211 = load i32, ptr @debug, align 4
  %212 = icmp ne i32 %211, 0
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %214, label %216

214:                                              ; preds = %188
  %215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 50, i32 noundef %209) #10
  br label %216

216:                                              ; preds = %214, %188
  %217 = load i8, ptr %25, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #9
  %218 = zext i8 %217 to i32
  %219 = lshr i32 %218, 7
  %220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %219) #10
  %221 = lshr i32 %218, 4
  %222 = and i32 %221, 7
  %223 = icmp ult i32 %222, 5
  br i1 %223, label %224, label %227

224:                                              ; preds = %216
  %225 = getelementptr inbounds [5 x ptr], ptr @switch.table.nxt6000_read_status, i32 0, i32 %222
  %226 = load ptr, ptr %225, align 4
  br label %227

227:                                              ; preds = %224, %216
  %228 = phi ptr [ %226, %224 ], [ @.str.11, %216 ]
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %228) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #9
  store i8 65, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #9
  store i8 0, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #9
  %230 = getelementptr inbounds i8, ptr %23, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %230, i8 0, i32 16, i1 false) #9, !annotation !8
  %231 = load ptr, ptr %45, align 4
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i16
  store i16 %233, ptr %23, align 4
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %234, align 2
  store i16 1, ptr %230, align 4
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %21, ptr %235, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1
  %237 = load i8, ptr %231, align 1
  %238 = zext i8 %237 to i16
  store i16 %238, ptr %236, align 4
  %239 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 1
  store i16 1, ptr %239, align 2
  %240 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 2
  store i16 1, ptr %240, align 4
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 3
  store ptr %22, ptr %241, align 4
  %242 = load ptr, ptr %43, align 4
  %243 = call i32 @i2c_transfer(ptr noundef %242, ptr noundef nonnull %23, i32 noundef 2) #9
  %244 = icmp ne i32 %243, 2
  %245 = load i32, ptr @debug, align 4
  %246 = icmp ne i32 %245, 0
  %247 = select i1 %244, i1 %246, i1 false
  br i1 %247, label %248, label %250

248:                                              ; preds = %227
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 65, i32 noundef %243) #10
  br label %250

250:                                              ; preds = %248, %227
  %251 = load i8, ptr %22, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #9
  %252 = zext i8 %251 to i32
  %253 = lshr i32 %252, 7
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %253) #10
  %255 = lshr i32 %252, 6
  %256 = and i32 %255, 1
  %257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %256) #10
  %258 = lshr i32 %252, 5
  %259 = and i32 %258, 1
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %259) #10
  %261 = lshr i32 %252, 4
  %262 = and i32 %261, 1
  %263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %262) #10
  %264 = and i32 %252, 15
  %265 = icmp ult i32 %264, 7
  br i1 %265, label %266, label %269

266:                                              ; preds = %250
  %267 = getelementptr inbounds [7 x ptr], ptr @switch.table.nxt6000_read_status.50, i32 0, i32 %264
  %268 = load ptr, ptr %267, align 4
  br label %269

269:                                              ; preds = %266, %250
  %270 = phi ptr [ %268, %266 ], [ @.str.23, %250 ]
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %270) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #9
  store i8 82, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #9
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #9
  %272 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %272, i8 0, i32 16, i1 false) #9, !annotation !8
  %273 = load ptr, ptr %45, align 4
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i16
  store i16 %275, ptr %20, align 4
  %276 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %276, align 2
  store i16 1, ptr %272, align 4
  %277 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %277, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %279 = load i8, ptr %273, align 1
  %280 = zext i8 %279 to i16
  store i16 %280, ptr %278, align 4
  %281 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %281, align 2
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 1, ptr %282, align 4
  %283 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %283, align 4
  %284 = load ptr, ptr %43, align 4
  %285 = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %20, i32 noundef 2) #9
  %286 = icmp ne i32 %285, 2
  %287 = load i32, ptr @debug, align 4
  %288 = icmp ne i32 %287, 0
  %289 = select i1 %286, i1 %288, i1 false
  br i1 %289, label %290, label %292

290:                                              ; preds = %269
  %291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 82, i32 noundef %285) #10
  br label %292

292:                                              ; preds = %290, %269
  %293 = load i8, ptr %19, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #9
  %294 = zext i8 %293 to i32
  %295 = lshr i32 %294, 4
  %296 = and i32 %295, 1
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %296) #10
  %298 = and i32 %294, 4
  %299 = icmp eq i32 %298, 0
  %300 = select i1 %299, ptr @.str.26, ptr @.str.25
  %301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %300) #10
  %302 = and i32 %295, 3
  %303 = getelementptr inbounds [4 x ptr], ptr @switch.table.nxt6000_read_status.51, i32 0, i32 %302
  %304 = load ptr, ptr %303, align 4
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %304) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #9
  store i8 105, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #9
  %306 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %306, i8 0, i32 16, i1 false) #9, !annotation !8
  %307 = load ptr, ptr %45, align 4
  %308 = load i8, ptr %307, align 1
  %309 = zext i8 %308 to i16
  store i16 %309, ptr %17, align 4
  %310 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %310, align 2
  store i16 1, ptr %306, align 4
  %311 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %311, align 4
  %312 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %313 = load i8, ptr %307, align 1
  %314 = zext i8 %313 to i16
  store i16 %314, ptr %312, align 4
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %315, align 2
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %316, align 4
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %317, align 4
  %318 = load ptr, ptr %43, align 4
  %319 = call i32 @i2c_transfer(ptr noundef %318, ptr noundef nonnull %17, i32 noundef 2) #9
  %320 = icmp ne i32 %319, 2
  %321 = load i32, ptr @debug, align 4
  %322 = icmp ne i32 %321, 0
  %323 = select i1 %320, i1 %322, i1 false
  br i1 %323, label %324, label %326

324:                                              ; preds = %292
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 105, i32 noundef %319) #10
  br label %326

326:                                              ; preds = %324, %292
  %327 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #9
  %328 = zext i8 %327 to i32
  %329 = lshr i32 %328, 4
  %330 = and i32 %329, 7
  %331 = icmp ult i32 %330, 5
  br i1 %331, label %332, label %335

332:                                              ; preds = %326
  %333 = getelementptr inbounds [5 x ptr], ptr @switch.table.nxt6000_read_status.52, i32 0, i32 %330
  %334 = load ptr, ptr %333, align 4
  br label %335

335:                                              ; preds = %332, %326
  %336 = phi ptr [ %334, %332 ], [ @.str.36, %326 ]
  %337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %336) #10
  %338 = and i32 %328, 7
  %339 = icmp ult i32 %338, 5
  br i1 %339, label %340, label %343

340:                                              ; preds = %335
  %341 = getelementptr inbounds [5 x ptr], ptr @switch.table.nxt6000_read_status.53, i32 0, i32 %338
  %342 = load ptr, ptr %341, align 4
  br label %343

343:                                              ; preds = %340, %335
  %344 = phi ptr [ %342, %340 ], [ @.str.42, %335 ]
  %345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %344) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 106, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %346 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %346, i8 0, i32 16, i1 false) #9, !annotation !8
  %347 = load ptr, ptr %45, align 4
  %348 = load i8, ptr %347, align 1
  %349 = zext i8 %348 to i16
  store i16 %349, ptr %14, align 4
  %350 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %350, align 2
  store i16 1, ptr %346, align 4
  %351 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %351, align 4
  %352 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %353 = load i8, ptr %347, align 1
  %354 = zext i8 %353 to i16
  store i16 %354, ptr %352, align 4
  %355 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %355, align 2
  %356 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %356, align 4
  %357 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %357, align 4
  %358 = load ptr, ptr %43, align 4
  %359 = call i32 @i2c_transfer(ptr noundef %358, ptr noundef nonnull %14, i32 noundef 2) #9
  %360 = icmp ne i32 %359, 2
  %361 = load i32, ptr @debug, align 4
  %362 = icmp ne i32 %361, 0
  %363 = select i1 %360, i1 %362, i1 false
  br i1 %363, label %364, label %366

364:                                              ; preds = %343
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 106, i32 noundef %359) #10
  br label %366

366:                                              ; preds = %364, %343
  %367 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  %368 = zext i8 %367 to i32
  %369 = and i32 %368, 1
  %370 = icmp eq i32 %369, 0
  %371 = select i1 %370, ptr @.str.26, ptr @.str.25
  %372 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %371) #10
  %373 = lshr i32 %368, 4
  %374 = and i32 %373, 3
  %375 = getelementptr inbounds [4 x ptr], ptr @switch.table.nxt6000_read_status.54, i32 0, i32 %374
  %376 = load ptr, ptr %375, align 4
  %377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %376) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 -111, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %378 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %378, i8 0, i32 16, i1 false) #9, !annotation !8
  %379 = load ptr, ptr %45, align 4
  %380 = load i8, ptr %379, align 1
  %381 = zext i8 %380 to i16
  store i16 %381, ptr %11, align 4
  %382 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %382, align 2
  store i16 1, ptr %378, align 4
  %383 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %383, align 4
  %384 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %385 = load i8, ptr %379, align 1
  %386 = zext i8 %385 to i16
  store i16 %386, ptr %384, align 4
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %387, align 2
  %388 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %388, align 4
  %389 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %389, align 4
  %390 = load ptr, ptr %43, align 4
  %391 = call i32 @i2c_transfer(ptr noundef %390, ptr noundef nonnull %11, i32 noundef 2) #9
  %392 = icmp ne i32 %391, 2
  %393 = load i32, ptr @debug, align 4
  %394 = icmp ne i32 %393, 0
  %395 = select i1 %392, i1 %394, i1 false
  br i1 %395, label %396, label %398

396:                                              ; preds = %366
  %397 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 145, i32 noundef %391) #10
  br label %398

398:                                              ; preds = %396, %366
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 -110, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %399 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %399, i8 0, i32 16, i1 false) #9, !annotation !8
  %400 = load ptr, ptr %45, align 4
  %401 = load i8, ptr %400, align 1
  %402 = zext i8 %401 to i16
  store i16 %402, ptr %8, align 4
  %403 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %403, align 2
  store i16 1, ptr %399, align 4
  %404 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %404, align 4
  %405 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %406 = load i8, ptr %400, align 1
  %407 = zext i8 %406 to i16
  store i16 %407, ptr %405, align 4
  %408 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %408, align 2
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %409, align 4
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %410, align 4
  %411 = load ptr, ptr %43, align 4
  %412 = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %8, i32 noundef 2) #9
  %413 = icmp ne i32 %412, 2
  %414 = load i32, ptr @debug, align 4
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %413, i1 %415, i1 false
  br i1 %416, label %417, label %419

417:                                              ; preds = %398
  %418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 146, i32 noundef %412) #10
  br label %419

419:                                              ; preds = %417, %398
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 -110, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %420 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %420, i8 0, i32 16, i1 false) #9, !annotation !8
  %421 = load ptr, ptr %45, align 4
  %422 = load i8, ptr %421, align 1
  %423 = zext i8 %422 to i16
  store i16 %423, ptr %5, align 4
  %424 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %424, align 2
  store i16 1, ptr %420, align 4
  %425 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %425, align 4
  %426 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %427 = load i8, ptr %421, align 1
  %428 = zext i8 %427 to i16
  store i16 %428, ptr %426, align 4
  %429 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %429, align 2
  %430 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %430, align 4
  %431 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %431, align 4
  %432 = load ptr, ptr %43, align 4
  %433 = call i32 @i2c_transfer(ptr noundef %432, ptr noundef nonnull %5, i32 noundef 2) #9
  %434 = icmp ne i32 %433, 2
  %435 = load i32, ptr @debug, align 4
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %434, i1 %436, i1 false
  br i1 %437, label %438, label %440

438:                                              ; preds = %419
  %439 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 146, i32 noundef %433) #10
  br label %440

440:                                              ; preds = %438, %419
  %441 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %442 = lshr i8 %441, 4
  %443 = and i8 %442, 1
  %444 = zext i8 %443 to i32
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %444) #10
  %446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #10
  br label %447

447:                                              ; preds = %440, %163
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt6000_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  store i8 52, ptr %11, align 2
  %15 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 24, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %16 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %16, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.nxt6000_state, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %12, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %22, align 4
  %23 = load ptr, ptr %14, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %12, i32 noundef 1) #9
  %25 = icmp ne i32 %24, 1
  %26 = load i32, ptr @debug, align 4
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 52, i32 noundef 24, i32 noundef %24) #10
  br label %31

31:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 59, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %32 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %32, i8 0, i32 16, i1 false) #9, !annotation !8
  %33 = load ptr, ptr %17, align 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %10, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %36, align 2
  store i16 1, ptr %32, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %39 = load i8, ptr %33, align 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %43, align 4
  %44 = load ptr, ptr %14, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %10, i32 noundef 2) #9
  %46 = icmp ne i32 %45, 2
  %47 = load i32, ptr @debug, align 4
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 59, i32 noundef %45) #10
  br label %52

52:                                               ; preds = %50, %31
  %53 = load i8, ptr %9, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 60, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %56 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #9, !annotation !8
  %57 = load ptr, ptr %17, align 4
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %7, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %60, align 2
  store i16 1, ptr %56, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %63 = load i8, ptr %57, align 1
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %67, align 4
  %68 = load ptr, ptr %14, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %7, i32 noundef 2) #9
  %70 = icmp ne i32 %69, 2
  %71 = load i32, ptr @debug, align 4
  %72 = icmp ne i32 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %76

74:                                               ; preds = %52
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 60, i32 noundef %69) #10
  br label %76

76:                                               ; preds = %74, %52
  %77 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %78 = zext i8 %77 to i32
  %79 = or i32 %55, %78
  store i32 %79, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 52, ptr %3, align 2
  %80 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 24, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %81 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %81, align 4, !annotation !8
  %82 = load ptr, ptr %17, align 4
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %4, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %86, align 4
  %87 = load ptr, ptr %14, align 4
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %4, i32 noundef 1) #9
  %89 = icmp ne i32 %88, 1
  %90 = load i32, ptr @debug, align 4
  %91 = icmp ne i32 %90, 0
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %93, label %95

93:                                               ; preds = %76
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 52, i32 noundef 24, i32 noundef %88) #10
  br label %95

95:                                               ; preds = %93, %76
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt6000_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 73, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.nxt6000_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %19 = load i8, ptr %13, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #9
  %26 = icmp ne i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 73, i32 noundef %25) #10
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 74, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %34 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #9, !annotation !8
  %35 = load ptr, ptr %12, align 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %38, align 2
  store i16 1, ptr %34, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %41 = load i8, ptr %35, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %45, align 4
  %46 = load ptr, ptr %10, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %5, i32 noundef 2) #9
  %48 = icmp ne i32 %47, 2
  %49 = load i32, ptr @debug, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 74, i32 noundef %47) #10
  br label %54

54:                                               ; preds = %52, %32
  %55 = zext i8 %33 to i16
  %56 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %57 = and i8 %56, 3
  %58 = zext i8 %57 to i16
  %59 = mul nsw i16 %58, -256
  %60 = xor i16 %55, 511
  %61 = add nsw i16 %60, %59
  store i16 %61, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt6000_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 100, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.nxt6000_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 1
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
  %23 = icmp ne i32 %22, 2
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nxt6000_readreg, i32 noundef 100, i32 noundef %22) #10
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %31 = lshr i8 %30, 3
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt6000_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 -127, ptr %5, align 2
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 1, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %12 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.nxt6000_state, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %6, i32 noundef 1) #9
  %21 = icmp ne i32 %20, 1
  %22 = load i32, ptr @debug, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 129, i32 noundef 1, i32 noundef %20) #10
  br label %27

27:                                               ; preds = %25, %10
  %28 = select i1 %21, i32 -5, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br label %48

29:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 -127, ptr %3, align 2
  %30 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %31 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %31, align 4, !annotation !8
  %32 = getelementptr inbounds %struct.nxt6000_state, ptr %8, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %4, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = load ptr, ptr %8, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %4, i32 noundef 1) #9
  %40 = icmp ne i32 %39, 1
  %41 = load i32, ptr @debug, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nxt6000_writereg, i32 noundef 129, i32 noundef 0, i32 noundef %39) #10
  br label %46

46:                                               ; preds = %44, %29
  %47 = select i1 %40, i32 -5, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %48

48:                                               ; preds = %46, %27
  %49 = phi i32 [ %28, %27 ], [ %47, %46 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
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
