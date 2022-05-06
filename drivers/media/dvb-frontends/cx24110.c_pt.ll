; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cx24110.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24110.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24110_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24110_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24110_attach:\09\09\09\09\09"
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
%struct.anon.73 = type { i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx24110_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@cx24110_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24110 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 29500000, i32 1000000, i32 45000000, i32 0, i32 1073743535 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @cx24110_release, ptr null, ptr @cx24110_initfe, ptr null, ptr null, ptr null, ptr @_cx24110_pll_write, ptr null, ptr null, ptr @cx24110_set_frontend, ptr null, ptr @cx24110_get_frontend, ptr @cx24110_read_status, ptr @cx24110_read_ber, ptr @cx24110_read_signal_strength, ptr @cx24110_read_snr, ptr @cx24110_read_ucblocks, ptr null, ptr @cx24110_send_diseqc_msg, ptr null, ptr @cx24110_diseqc_send_burst, ptr @cx24110_set_tone, ptr @cx24110_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [54 x i8] c"description=Conexant CX24110 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [22 x i8] c"author=Peter Hettkamp\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_cx24110_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24110_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24110_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24110_attach to i32), ptr @__kstrtab_cx24110_attach, ptr @__kstrtabns_cx24110_attach }, section "___ksymtab+cx24110_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [26 x i8] c"\017cx24110: %s: init chip\0A\00", align 1
@__func__.cx24110_initfe = private unnamed_addr constant [15 x i8] c"cx24110_initfe\00", align 1
@cx24110_regdata = internal unnamed_addr constant [38 x %struct.anon.73] [%struct.anon.73 { i8 9, i8 1 }, %struct.anon.73 { i8 9, i8 0 }, %struct.anon.73 { i8 1, i8 -24 }, %struct.anon.73 { i8 2, i8 23 }, %struct.anon.73 { i8 3, i8 41 }, %struct.anon.73 { i8 5, i8 3 }, %struct.anon.73 { i8 6, i8 -91 }, %struct.anon.73 { i8 7, i8 1 }, %struct.anon.73 { i8 10, i8 0 }, %struct.anon.73 { i8 11, i8 1 }, %struct.anon.73 { i8 12, i8 17 }, %struct.anon.73 { i8 13, i8 111 }, %struct.anon.73 { i8 16, i8 64 }, %struct.anon.73 { i8 21, i8 -1 }, %struct.anon.73 { i8 22, i8 0 }, %struct.anon.73 { i8 23, i8 4 }, %struct.anon.73 { i8 24, i8 -82 }, %struct.anon.73 { i8 33, i8 16 }, %struct.anon.73 { i8 35, i8 24 }, %struct.anon.73 { i8 36, i8 36 }, %struct.anon.73 { i8 53, i8 64 }, %struct.anon.73 { i8 54, i8 -1 }, %struct.anon.73 { i8 55, i8 0 }, %struct.anon.73 { i8 56, i8 7 }, %struct.anon.73 { i8 65, i8 0 }, %struct.anon.73 { i8 66, i8 0 }, %struct.anon.73 { i8 67, i8 0 }, %struct.anon.73 { i8 86, i8 77 }, %struct.anon.73 { i8 87, i8 0 }, %struct.anon.73 { i8 97, i8 -107 }, %struct.anon.73 { i8 98, i8 5 }, %struct.anon.73 { i8 99, i8 0 }, %struct.anon.73 { i8 100, i8 32 }, %struct.anon.73 { i8 109, i8 48 }, %struct.anon.73 { i8 112, i8 21 }, %struct.anon.73 { i8 115, i8 0 }, %struct.anon.73 { i8 116, i8 0 }, %struct.anon.73 { i8 117, i8 0 }], align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"\017cx24110: %s: writereg error (err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.cx24110_writereg = private unnamed_addr constant [17 x i8] c"cx24110_writereg\00", align 1
@cx24110_set_fec.rate = internal unnamed_addr constant [9 x i32] [i32 -1, i32 1, i32 2, i32 3, i32 5, i32 7, i32 -1, i32 0, i32 0], align 4
@cx24110_set_fec.g1 = internal unnamed_addr constant [9 x i32] [i32 -1, i32 1, i32 2, i32 5, i32 21, i32 69, i32 -1, i32 0, i32 0], align 4
@cx24110_set_fec.g2 = internal unnamed_addr constant [9 x i32] [i32 -1, i32 1, i32 3, i32 6, i32 26, i32 122, i32 -1, i32 0, i32 0], align 4
@cx24110_set_symbolrate.bands = internal unnamed_addr constant [3 x i32] [i32 5000000, i32 15000000, i32 45499500], align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\017cx24110: cx24110 debug: entering %s(%d)\0A\00", align 1
@__func__.cx24110_set_symbolrate = private unnamed_addr constant [23 x i8] c"cx24110_set_symbolrate\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\017cx24110: cx24110 debug: fclk %d Hz\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\017cx24110: srate= %d (range %d, up to %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\017cx24110: fclk = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"\017cx24110: ratio= %08x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_cx24110_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.cx24110_get_frontend = private unnamed_addr constant [3 x i32] [i32 177732, i32 236976, i32 315968], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cx24110_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1060) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cx24110_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  %11 = getelementptr inbounds %struct.cx24110_state, ptr %7, i32 0, i32 3
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.cx24110_state, ptr %7, i32 0, i32 4
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cx24110_state, ptr %7, i32 0, i32 5
  store i32 0, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #9, !annotation !8
  %15 = load i8, ptr %0, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %14, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %22, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #9
  %24 = icmp eq i32 %23, 2
  %25 = load i8, ptr %4, align 1
  %26 = zext i8 %25 to i32
  %27 = select i1 %24, i32 %26, i32 %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  switch i32 %27, label %32 [
    i32 105, label %28
    i32 90, label %28
  ]

28:                                               ; preds = %9, %9
  %29 = getelementptr inbounds %struct.cx24110_state, ptr %7, i32 0, i32 2
  %30 = getelementptr inbounds %struct.cx24110_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %30, ptr noundef nonnull align 4 dereferenceable(544) @cx24110_ops, i32 544, i1 false)
  %31 = getelementptr inbounds %struct.cx24110_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %31, align 8
  br label %33

32:                                               ; preds = %9, %2
  call void @kfree(ptr noundef %7) #9
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cx24110_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_initfe(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24110_initfe) #10
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds i8, ptr %2, i32 1
  %12 = getelementptr inbounds i8, ptr %3, i32 4
  %13 = getelementptr inbounds %struct.cx24110_state, ptr %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %16

16:                                               ; preds = %35, %10
  %17 = phi i32 [ 0, %10 ], [ %36, %35 ]
  %18 = getelementptr [38 x %struct.anon.73], ptr @cx24110_regdata, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr [38 x %struct.anon.73], ptr @cx24110_regdata, i32 0, i32 %17, i32 1
  %21 = load i8, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 %19, ptr %2, align 2
  store i8 %21, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i32 0, ptr %12, align 4, !annotation !8
  %22 = load ptr, ptr %13, align 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %3, align 4
  store i16 0, ptr %14, align 2
  store i16 2, ptr %12, align 4
  store ptr %2, ptr %15, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %3, i32 noundef 1) #9
  %27 = icmp eq i32 %26, 1
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %16
  %32 = zext i8 %21 to i32
  %33 = zext i8 %19 to i32
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %26, i32 noundef %33, i32 noundef %32) #10
  br label %35

35:                                               ; preds = %31, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %36 = add nuw nsw i32 %17, 1
  %37 = icmp eq i32 %36, 38
  br i1 %37, label %38, label %16

38:                                               ; preds = %35
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_cx24110_pll_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [1 x i8], align 1
  %26 = alloca [1 x i8], align 1
  %27 = alloca [2 x %struct.i2c_msg], align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 4
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq i32 %2, 3
  br i1 %34, label %35, label %262

35:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #9
  store i8 109, ptr %30, align 2
  %36 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 48, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #9
  %37 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 2, ptr %37, align 4, !annotation !8
  %38 = getelementptr inbounds %struct.cx24110_state, ptr %33, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %31, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %43, align 4
  %44 = load ptr, ptr %33, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %31, i32 noundef 1) #9
  %46 = icmp eq i32 %45, 1
  %47 = load i32, ptr @debug, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %35
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %45, i32 noundef 109, i32 noundef 48) #10
  br label %52

52:                                               ; preds = %50, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #9
  store i8 112, ptr %28, align 2
  %53 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 21, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #9
  %54 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %54, align 4, !annotation !8
  %55 = load ptr, ptr %38, align 4
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %29, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %59, align 4
  %60 = load ptr, ptr %33, align 4
  %61 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %29, i32 noundef 1) #9
  %62 = icmp eq i32 %61, 1
  %63 = load i32, ptr @debug, align 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %68, label %66

66:                                               ; preds = %52
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %61, i32 noundef 112, i32 noundef 21) #10
  br label %68

68:                                               ; preds = %66, %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #9
  %69 = getelementptr inbounds i8, ptr %27, i32 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 1
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 2
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 3
  %76 = getelementptr inbounds i8, ptr %23, i32 1
  %77 = getelementptr inbounds i8, ptr %24, i32 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  br label %80

80:                                               ; preds = %106, %68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #9
  store i8 109, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #9
  store i8 0, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %69, i8 0, i32 16, i1 false) #9, !annotation !8
  %81 = load ptr, ptr %38, align 4
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %27, align 4
  store i16 0, ptr %70, align 2
  store i16 1, ptr %69, align 4
  store ptr %25, ptr %71, align 4
  %84 = load i8, ptr %81, align 1
  %85 = zext i8 %84 to i16
  store i16 %85, ptr %72, align 4
  store i16 1, ptr %73, align 2
  store i16 1, ptr %74, align 4
  store ptr %26, ptr %75, align 4
  %86 = load ptr, ptr %33, align 4
  %87 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %27, i32 noundef 2) #9
  %88 = icmp eq i32 %87, 2
  %89 = load i8, ptr %26, align 1
  %90 = zext i8 %89 to i32
  %91 = select i1 %88, i32 %90, i32 %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #9
  %92 = and i32 %91, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #9
  store i8 114, ptr %23, align 2
  store i8 0, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #9
  store i32 0, ptr %77, align 4, !annotation !8
  %95 = load ptr, ptr %38, align 4
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %24, align 4
  store i16 0, ptr %78, align 2
  store i16 2, ptr %77, align 4
  store ptr %23, ptr %79, align 4
  %98 = load ptr, ptr %33, align 4
  %99 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %24, i32 noundef 1) #9
  %100 = icmp eq i32 %99, 1
  %101 = load i32, ptr @debug, align 4
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %100, i1 true, i1 %102
  br i1 %103, label %106, label %104

104:                                              ; preds = %94
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %99, i32 noundef 114, i32 noundef 0) #10
  br label %106

106:                                              ; preds = %104, %94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #9
  br label %80

107:                                              ; preds = %80
  %108 = load i8, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #9
  store i8 114, ptr %21, align 2
  %109 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 %108, ptr %109, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #9
  %110 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %110, align 4, !annotation !8
  %111 = load ptr, ptr %38, align 4
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i16
  store i16 %113, ptr %22, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %114, align 2
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %115, align 4
  %116 = load ptr, ptr %33, align 4
  %117 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %22, i32 noundef 1) #9
  %118 = icmp eq i32 %117, 1
  %119 = load i32, ptr @debug, align 4
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %125, label %122

122:                                              ; preds = %107
  %123 = zext i8 %108 to i32
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %117, i32 noundef 114, i32 noundef %123) #10
  br label %125

125:                                              ; preds = %122, %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #9
  %126 = getelementptr inbounds i8, ptr %20, i32 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  br label %133

133:                                              ; preds = %133, %125
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #9
  store i8 109, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #9
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %126, i8 0, i32 16, i1 false) #9, !annotation !8
  %134 = load ptr, ptr %38, align 4
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %20, align 4
  store i16 0, ptr %127, align 2
  store i16 1, ptr %126, align 4
  store ptr %18, ptr %128, align 4
  %137 = load i8, ptr %134, align 1
  %138 = zext i8 %137 to i16
  store i16 %138, ptr %129, align 4
  store i16 1, ptr %130, align 2
  store i16 1, ptr %131, align 4
  store ptr %19, ptr %132, align 4
  %139 = load ptr, ptr %33, align 4
  %140 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %20, i32 noundef 2) #9
  %141 = icmp eq i32 %140, 2
  %142 = load i8, ptr %19, align 1
  %143 = zext i8 %142 to i32
  %144 = select i1 %141, i32 %143, i32 %140
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #9
  %145 = and i32 %144, 192
  %146 = icmp eq i32 %145, 128
  br i1 %146, label %133, label %147

147:                                              ; preds = %133
  %148 = getelementptr i8, ptr %1, i32 1
  %149 = load i8, ptr %148, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 114, ptr %16, align 2
  %150 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %149, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %151 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %151, align 4, !annotation !8
  %152 = load ptr, ptr %38, align 4
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %17, align 4
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %155, align 2
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %156, align 4
  %157 = load ptr, ptr %33, align 4
  %158 = call i32 @i2c_transfer(ptr noundef %157, ptr noundef nonnull %17, i32 noundef 1) #9
  %159 = icmp eq i32 %158, 1
  %160 = load i32, ptr @debug, align 4
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %166, label %163

163:                                              ; preds = %147
  %164 = zext i8 %149 to i32
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %158, i32 noundef 114, i32 noundef %164) #10
  br label %166

166:                                              ; preds = %163, %147
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  %167 = getelementptr inbounds i8, ptr %15, i32 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  br label %174

174:                                              ; preds = %174, %166
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 109, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #9
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %167, i8 0, i32 16, i1 false) #9, !annotation !8
  %175 = load ptr, ptr %38, align 4
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i16
  store i16 %177, ptr %15, align 4
  store i16 0, ptr %168, align 2
  store i16 1, ptr %167, align 4
  store ptr %13, ptr %169, align 4
  %178 = load i8, ptr %175, align 1
  %179 = zext i8 %178 to i16
  store i16 %179, ptr %170, align 4
  store i16 1, ptr %171, align 2
  store i16 1, ptr %172, align 4
  store ptr %14, ptr %173, align 4
  %180 = load ptr, ptr %33, align 4
  %181 = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %15, i32 noundef 2) #9
  %182 = icmp eq i32 %181, 2
  %183 = load i8, ptr %14, align 1
  %184 = zext i8 %183 to i32
  %185 = select i1 %182, i32 %184, i32 %181
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  %186 = and i32 %185, 192
  %187 = icmp eq i32 %186, 128
  br i1 %187, label %174, label %188

188:                                              ; preds = %174
  %189 = getelementptr i8, ptr %1, i32 2
  %190 = load i8, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  store i8 114, ptr %11, align 2
  %191 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %190, ptr %191, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %192 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %192, align 4, !annotation !8
  %193 = load ptr, ptr %38, align 4
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i16
  store i16 %195, ptr %12, align 4
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %196, align 2
  %197 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %197, align 4
  %198 = load ptr, ptr %33, align 4
  %199 = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %12, i32 noundef 1) #9
  %200 = icmp eq i32 %199, 1
  %201 = load i32, ptr @debug, align 4
  %202 = icmp eq i32 %201, 0
  %203 = select i1 %200, i1 true, i1 %202
  br i1 %203, label %207, label %204

204:                                              ; preds = %188
  %205 = zext i8 %190 to i32
  %206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %199, i32 noundef 114, i32 noundef %205) #10
  br label %207

207:                                              ; preds = %204, %188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  %208 = getelementptr inbounds i8, ptr %10, i32 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %212 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  br label %215

215:                                              ; preds = %215, %207
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 109, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %208, i8 0, i32 16, i1 false) #9, !annotation !8
  %216 = load ptr, ptr %38, align 4
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i16
  store i16 %218, ptr %10, align 4
  store i16 0, ptr %209, align 2
  store i16 1, ptr %208, align 4
  store ptr %8, ptr %210, align 4
  %219 = load i8, ptr %216, align 1
  %220 = zext i8 %219 to i16
  store i16 %220, ptr %211, align 4
  store i16 1, ptr %212, align 2
  store i16 1, ptr %213, align 4
  store ptr %9, ptr %214, align 4
  %221 = load ptr, ptr %33, align 4
  %222 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %10, i32 noundef 2) #9
  %223 = icmp eq i32 %222, 2
  %224 = load i8, ptr %9, align 1
  %225 = zext i8 %224 to i32
  %226 = select i1 %223, i32 %225, i32 %222
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %227 = and i32 %226, 192
  %228 = icmp eq i32 %227, 128
  br i1 %228, label %215, label %229

229:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 109, ptr %6, align 2
  %230 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 50, ptr %230, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %231 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %231, align 4, !annotation !8
  %232 = load ptr, ptr %38, align 4
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i16
  store i16 %234, ptr %7, align 4
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %235, align 2
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %236, align 4
  %237 = load ptr, ptr %33, align 4
  %238 = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %7, i32 noundef 1) #9
  %239 = icmp eq i32 %238, 1
  %240 = load i32, ptr @debug, align 4
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %239, i1 true, i1 %241
  br i1 %242, label %245, label %243

243:                                              ; preds = %229
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %238, i32 noundef 109, i32 noundef 50) #10
  br label %245

245:                                              ; preds = %243, %229
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 109, ptr %4, align 2
  %246 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 48, ptr %246, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %247 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %247, align 4, !annotation !8
  %248 = load ptr, ptr %38, align 4
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i16
  store i16 %250, ptr %5, align 4
  %251 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %251, align 2
  %252 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %252, align 4
  %253 = load ptr, ptr %33, align 4
  %254 = call i32 @i2c_transfer(ptr noundef %253, ptr noundef nonnull %5, i32 noundef 1) #9
  %255 = icmp eq i32 %254, 1
  %256 = load i32, ptr @debug, align 4
  %257 = icmp eq i32 %256, 0
  %258 = select i1 %255, i1 true, i1 %257
  br i1 %258, label %261, label %259

259:                                              ; preds = %245
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %254, i32 noundef 109, i32 noundef 48) #10
  br label %261

261:                                              ; preds = %259, %245
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %262

262:                                              ; preds = %261, %3
  %263 = phi i32 [ 0, %261 ], [ -22, %3 ]
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_set_frontend(ptr noundef %0) #0 {
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
  %26 = alloca [1 x i8], align 1
  %27 = alloca [1 x i8], align 1
  %28 = alloca [2 x %struct.i2c_msg], align 4
  %29 = alloca [2 x i8], align 2
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [2 x i8], align 2
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [1 x i8], align 1
  %36 = alloca [1 x i8], align 1
  %37 = alloca [2 x %struct.i2c_msg], align 4
  %38 = alloca [2 x i8], align 2
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [1 x i8], align 1
  %41 = alloca [1 x i8], align 1
  %42 = alloca [2 x %struct.i2c_msg], align 4
  %43 = alloca [2 x i8], align 2
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [1 x i8], align 1
  %46 = alloca [1 x i8], align 1
  %47 = alloca [2 x %struct.i2c_msg], align 4
  %48 = alloca [2 x i8], align 2
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [2 x i8], align 2
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [2 x i8], align 2
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca [1 x i8], align 1
  %55 = alloca [1 x i8], align 1
  %56 = alloca [2 x %struct.i2c_msg], align 4
  %57 = alloca [2 x i8], align 2
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [1 x i8], align 1
  %60 = alloca [1 x i8], align 1
  %61 = alloca [2 x %struct.i2c_msg], align 4
  %62 = alloca [2 x i8], align 2
  %63 = alloca %struct.i2c_msg, align 4
  %64 = alloca [2 x i8], align 2
  %65 = alloca %struct.i2c_msg, align 4
  %66 = alloca [1 x i8], align 1
  %67 = alloca [1 x i8], align 1
  %68 = alloca [2 x %struct.i2c_msg], align 4
  %69 = alloca [2 x i8], align 2
  %70 = alloca %struct.i2c_msg, align 4
  %71 = alloca [1 x i8], align 1
  %72 = alloca [1 x i8], align 1
  %73 = alloca [2 x %struct.i2c_msg], align 4
  %74 = alloca [2 x i8], align 2
  %75 = alloca %struct.i2c_msg, align 4
  %76 = alloca [1 x i8], align 1
  %77 = alloca [1 x i8], align 1
  %78 = alloca [2 x %struct.i2c_msg], align 4
  %79 = alloca [2 x i8], align 2
  %80 = alloca %struct.i2c_msg, align 4
  %81 = alloca [1 x i8], align 1
  %82 = alloca [1 x i8], align 1
  %83 = alloca [2 x %struct.i2c_msg], align 4
  %84 = alloca [2 x i8], align 2
  %85 = alloca %struct.i2c_msg, align 4
  %86 = alloca [1 x i8], align 1
  %87 = alloca [1 x i8], align 1
  %88 = alloca [2 x %struct.i2c_msg], align 4
  %89 = alloca [2 x i8], align 2
  %90 = alloca %struct.i2c_msg, align 4
  %91 = alloca [1 x i8], align 1
  %92 = alloca [1 x i8], align 1
  %93 = alloca [2 x %struct.i2c_msg], align 4
  %94 = alloca [2 x i8], align 2
  %95 = alloca %struct.i2c_msg, align 4
  %96 = alloca [1 x i8], align 1
  %97 = alloca [1 x i8], align 1
  %98 = alloca [2 x %struct.i2c_msg], align 4
  %99 = alloca [2 x i8], align 2
  %100 = alloca %struct.i2c_msg, align 4
  %101 = alloca [1 x i8], align 1
  %102 = alloca [1 x i8], align 1
  %103 = alloca [2 x %struct.i2c_msg], align 4
  %104 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %1
  %110 = tail call i32 %107(ptr noundef %0) #9
  %111 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = tail call i32 %112(ptr noundef %0, i32 noundef 0) #9
  br label %116

116:                                              ; preds = %114, %109, %1
  %117 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %118 = load i32, ptr %117, align 4
  switch i32 %118, label %377 [
    i32 0, label %119
    i32 1, label %229
    i32 2, label %339
  ]

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %101) #9
  store i8 55, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %102) #9
  store i8 0, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %103) #9
  %120 = getelementptr inbounds i8, ptr %103, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %120, i8 0, i32 16, i1 false) #9, !annotation !8
  %121 = getelementptr inbounds %struct.cx24110_state, ptr %105, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %103, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 0, i32 1
  store i16 0, ptr %125, align 2
  store i16 1, ptr %120, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 0, i32 3
  store ptr %101, ptr %126, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 1
  %128 = load i8, ptr %122, align 1
  %129 = zext i8 %128 to i16
  store i16 %129, ptr %127, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 1, i32 1
  store i16 1, ptr %130, align 2
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 1, i32 2
  store i16 1, ptr %131, align 4
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 1, i32 3
  store ptr %102, ptr %132, align 4
  %133 = load ptr, ptr %105, align 4
  %134 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %103, i32 noundef 2) #9
  %135 = icmp eq i32 %134, 2
  %136 = load i8, ptr %102, align 1
  %137 = zext i8 %136 to i32
  %138 = select i1 %135, i32 %137, i32 %134
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %103) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %102) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %101) #9
  %139 = or i32 %138, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %99) #9
  store i8 55, ptr %99, align 2
  %140 = getelementptr inbounds i8, ptr %99, i32 1
  %141 = trunc i32 %139 to i8
  store i8 %141, ptr %140, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %100) #9
  %142 = getelementptr inbounds i8, ptr %100, i32 4
  store i32 2, ptr %142, align 4, !annotation !8
  %143 = load ptr, ptr %121, align 4
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i16
  store i16 %145, ptr %100, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %100, i32 0, i32 1
  store i16 0, ptr %146, align 2
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %100, i32 0, i32 3
  store ptr %99, ptr %147, align 4
  %148 = load ptr, ptr %105, align 4
  %149 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %100, i32 noundef 1) #9
  %150 = icmp eq i32 %149, 1
  %151 = load i32, ptr @debug, align 4
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %150, i1 true, i1 %152
  br i1 %153, label %156, label %154

154:                                              ; preds = %119
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %149, i32 noundef 55, i32 noundef %139) #10
  br label %156

156:                                              ; preds = %154, %119
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %100) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %99) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %96) #9
  store i8 5, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %97) #9
  store i8 0, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %98) #9
  %157 = getelementptr inbounds i8, ptr %98, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %157, i8 0, i32 16, i1 false) #9, !annotation !8
  %158 = load ptr, ptr %121, align 4
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %98, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 0, i32 1
  store i16 0, ptr %161, align 2
  store i16 1, ptr %157, align 4
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 0, i32 3
  store ptr %96, ptr %162, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 1
  %164 = load i8, ptr %158, align 1
  %165 = zext i8 %164 to i16
  store i16 %165, ptr %163, align 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 1, i32 1
  store i16 1, ptr %166, align 2
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 1, i32 2
  store i16 1, ptr %167, align 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 1, i32 3
  store ptr %97, ptr %168, align 4
  %169 = load ptr, ptr %105, align 4
  %170 = call i32 @i2c_transfer(ptr noundef %169, ptr noundef nonnull %98, i32 noundef 2) #9
  %171 = icmp eq i32 %170, 2
  %172 = load i8, ptr %97, align 1
  %173 = zext i8 %172 to i32
  %174 = select i1 %171, i32 %173, i32 %170
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %98) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %97) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %96) #9
  %175 = and i32 %174, 247
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %94) #9
  store i8 5, ptr %94, align 2
  %176 = getelementptr inbounds i8, ptr %94, i32 1
  %177 = trunc i32 %175 to i8
  store i8 %177, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %95) #9
  %178 = getelementptr inbounds i8, ptr %95, i32 4
  store i32 2, ptr %178, align 4, !annotation !8
  %179 = load ptr, ptr %121, align 4
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i16
  store i16 %181, ptr %95, align 4
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 1
  store i16 0, ptr %182, align 2
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 3
  store ptr %94, ptr %183, align 4
  %184 = load ptr, ptr %105, align 4
  %185 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %95, i32 noundef 1) #9
  %186 = icmp eq i32 %185, 1
  %187 = load i32, ptr @debug, align 4
  %188 = icmp eq i32 %187, 0
  %189 = select i1 %186, i1 true, i1 %188
  br i1 %189, label %192, label %190

190:                                              ; preds = %156
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %185, i32 noundef 5, i32 noundef %175) #10
  br label %192

192:                                              ; preds = %190, %156
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %95) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %94) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %91) #9
  store i8 34, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %92) #9
  store i8 0, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %93) #9
  %193 = getelementptr inbounds i8, ptr %93, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %193, i8 0, i32 16, i1 false) #9, !annotation !8
  %194 = load ptr, ptr %121, align 4
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i16
  store i16 %196, ptr %93, align 4
  %197 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 1
  store i16 0, ptr %197, align 2
  store i16 1, ptr %193, align 4
  %198 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 3
  store ptr %91, ptr %198, align 4
  %199 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 1
  %200 = load i8, ptr %194, align 1
  %201 = zext i8 %200 to i16
  store i16 %201, ptr %199, align 4
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 1, i32 1
  store i16 1, ptr %202, align 2
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 1, i32 2
  store i16 1, ptr %203, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 1, i32 3
  store ptr %92, ptr %204, align 4
  %205 = load ptr, ptr %105, align 4
  %206 = call i32 @i2c_transfer(ptr noundef %205, ptr noundef nonnull %93, i32 noundef 2) #9
  %207 = icmp eq i32 %206, 2
  %208 = load i8, ptr %92, align 1
  %209 = zext i8 %208 to i32
  %210 = select i1 %207, i32 %209, i32 %206
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %93) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %92) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %91) #9
  %211 = and i32 %210, 239
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %89) #9
  store i8 34, ptr %89, align 2
  %212 = getelementptr inbounds i8, ptr %89, i32 1
  %213 = trunc i32 %211 to i8
  store i8 %213, ptr %212, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %90) #9
  %214 = getelementptr inbounds i8, ptr %90, i32 4
  store i32 2, ptr %214, align 4, !annotation !8
  %215 = load ptr, ptr %121, align 4
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i16
  store i16 %217, ptr %90, align 4
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 1
  store i16 0, ptr %218, align 2
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 3
  store ptr %89, ptr %219, align 4
  %220 = load ptr, ptr %105, align 4
  %221 = call i32 @i2c_transfer(ptr noundef %220, ptr noundef nonnull %90, i32 noundef 1) #9
  %222 = icmp eq i32 %221, 1
  %223 = load i32, ptr @debug, align 4
  %224 = icmp eq i32 %223, 0
  %225 = select i1 %222, i1 true, i1 %224
  br i1 %225, label %228, label %226

226:                                              ; preds = %192
  %227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %221, i32 noundef 34, i32 noundef %211) #10
  br label %228

228:                                              ; preds = %226, %192
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %90) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %89) #9
  br label %377

229:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %86) #9
  store i8 55, ptr %86, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %87) #9
  store i8 0, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %88) #9
  %230 = getelementptr inbounds i8, ptr %88, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %230, i8 0, i32 16, i1 false) #9, !annotation !8
  %231 = getelementptr inbounds %struct.cx24110_state, ptr %105, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i16
  store i16 %234, ptr %88, align 4
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 1
  store i16 0, ptr %235, align 2
  store i16 1, ptr %230, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 3
  store ptr %86, ptr %236, align 4
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 1
  %238 = load i8, ptr %232, align 1
  %239 = zext i8 %238 to i16
  store i16 %239, ptr %237, align 4
  %240 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 1, i32 1
  store i16 1, ptr %240, align 2
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 1, i32 2
  store i16 1, ptr %241, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 1, i32 3
  store ptr %87, ptr %242, align 4
  %243 = load ptr, ptr %105, align 4
  %244 = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %88, i32 noundef 2) #9
  %245 = icmp eq i32 %244, 2
  %246 = load i8, ptr %87, align 1
  %247 = zext i8 %246 to i32
  %248 = select i1 %245, i32 %247, i32 %244
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %88) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %87) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %86) #9
  %249 = or i32 %248, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %84) #9
  store i8 55, ptr %84, align 2
  %250 = getelementptr inbounds i8, ptr %84, i32 1
  %251 = trunc i32 %249 to i8
  store i8 %251, ptr %250, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %85) #9
  %252 = getelementptr inbounds i8, ptr %85, i32 4
  store i32 2, ptr %252, align 4, !annotation !8
  %253 = load ptr, ptr %231, align 4
  %254 = load i8, ptr %253, align 1
  %255 = zext i8 %254 to i16
  store i16 %255, ptr %85, align 4
  %256 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 1
  store i16 0, ptr %256, align 2
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 3
  store ptr %84, ptr %257, align 4
  %258 = load ptr, ptr %105, align 4
  %259 = call i32 @i2c_transfer(ptr noundef %258, ptr noundef nonnull %85, i32 noundef 1) #9
  %260 = icmp eq i32 %259, 1
  %261 = load i32, ptr @debug, align 4
  %262 = icmp eq i32 %261, 0
  %263 = select i1 %260, i1 true, i1 %262
  br i1 %263, label %266, label %264

264:                                              ; preds = %229
  %265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %259, i32 noundef 55, i32 noundef %249) #10
  br label %266

266:                                              ; preds = %264, %229
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %85) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %84) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %81) #9
  store i8 5, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %82) #9
  store i8 0, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %83) #9
  %267 = getelementptr inbounds i8, ptr %83, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %267, i8 0, i32 16, i1 false) #9, !annotation !8
  %268 = load ptr, ptr %231, align 4
  %269 = load i8, ptr %268, align 1
  %270 = zext i8 %269 to i16
  store i16 %270, ptr %83, align 4
  %271 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  store i16 0, ptr %271, align 2
  store i16 1, ptr %267, align 4
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 3
  store ptr %81, ptr %272, align 4
  %273 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 1
  %274 = load i8, ptr %268, align 1
  %275 = zext i8 %274 to i16
  store i16 %275, ptr %273, align 4
  %276 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 1, i32 1
  store i16 1, ptr %276, align 2
  %277 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 1, i32 2
  store i16 1, ptr %277, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 1, i32 3
  store ptr %82, ptr %278, align 4
  %279 = load ptr, ptr %105, align 4
  %280 = call i32 @i2c_transfer(ptr noundef %279, ptr noundef nonnull %83, i32 noundef 2) #9
  %281 = icmp eq i32 %280, 2
  %282 = load i8, ptr %82, align 1
  %283 = zext i8 %282 to i32
  %284 = select i1 %281, i32 %283, i32 %280
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %83) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %82) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %81) #9
  %285 = or i32 %284, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %79) #9
  store i8 5, ptr %79, align 2
  %286 = getelementptr inbounds i8, ptr %79, i32 1
  %287 = trunc i32 %285 to i8
  store i8 %287, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %80) #9
  %288 = getelementptr inbounds i8, ptr %80, i32 4
  store i32 2, ptr %288, align 4, !annotation !8
  %289 = load ptr, ptr %231, align 4
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i16
  store i16 %291, ptr %80, align 4
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %80, i32 0, i32 1
  store i16 0, ptr %292, align 2
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %80, i32 0, i32 3
  store ptr %79, ptr %293, align 4
  %294 = load ptr, ptr %105, align 4
  %295 = call i32 @i2c_transfer(ptr noundef %294, ptr noundef nonnull %80, i32 noundef 1) #9
  %296 = icmp eq i32 %295, 1
  %297 = load i32, ptr @debug, align 4
  %298 = icmp eq i32 %297, 0
  %299 = select i1 %296, i1 true, i1 %298
  br i1 %299, label %302, label %300

300:                                              ; preds = %266
  %301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %295, i32 noundef 5, i32 noundef %285) #10
  br label %302

302:                                              ; preds = %300, %266
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %80) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %79) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %76) #9
  store i8 34, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %77) #9
  store i8 0, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %78) #9
  %303 = getelementptr inbounds i8, ptr %78, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %303, i8 0, i32 16, i1 false) #9, !annotation !8
  %304 = load ptr, ptr %231, align 4
  %305 = load i8, ptr %304, align 1
  %306 = zext i8 %305 to i16
  store i16 %306, ptr %78, align 4
  %307 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 1
  store i16 0, ptr %307, align 2
  store i16 1, ptr %303, align 4
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 3
  store ptr %76, ptr %308, align 4
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 1
  %310 = load i8, ptr %304, align 1
  %311 = zext i8 %310 to i16
  store i16 %311, ptr %309, align 4
  %312 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 1, i32 1
  store i16 1, ptr %312, align 2
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 1, i32 2
  store i16 1, ptr %313, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 1, i32 3
  store ptr %77, ptr %314, align 4
  %315 = load ptr, ptr %105, align 4
  %316 = call i32 @i2c_transfer(ptr noundef %315, ptr noundef nonnull %78, i32 noundef 2) #9
  %317 = icmp eq i32 %316, 2
  %318 = load i8, ptr %77, align 1
  %319 = zext i8 %318 to i32
  %320 = select i1 %317, i32 %319, i32 %316
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %78) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %77) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %76) #9
  %321 = or i32 %320, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %74) #9
  store i8 34, ptr %74, align 2
  %322 = getelementptr inbounds i8, ptr %74, i32 1
  %323 = trunc i32 %321 to i8
  store i8 %323, ptr %322, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %75) #9
  %324 = getelementptr inbounds i8, ptr %75, i32 4
  store i32 2, ptr %324, align 4, !annotation !8
  %325 = load ptr, ptr %231, align 4
  %326 = load i8, ptr %325, align 1
  %327 = zext i8 %326 to i16
  store i16 %327, ptr %75, align 4
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  store i16 0, ptr %328, align 2
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 3
  store ptr %74, ptr %329, align 4
  %330 = load ptr, ptr %105, align 4
  %331 = call i32 @i2c_transfer(ptr noundef %330, ptr noundef nonnull %75, i32 noundef 1) #9
  %332 = icmp eq i32 %331, 1
  %333 = load i32, ptr @debug, align 4
  %334 = icmp eq i32 %333, 0
  %335 = select i1 %332, i1 true, i1 %334
  br i1 %335, label %338, label %336

336:                                              ; preds = %302
  %337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %331, i32 noundef 34, i32 noundef %321) #10
  br label %338

338:                                              ; preds = %336, %302
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %75) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %74) #9
  br label %377

339:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %71) #9
  store i8 55, ptr %71, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %72) #9
  store i8 0, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %73) #9
  %340 = getelementptr inbounds i8, ptr %73, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %340, i8 0, i32 16, i1 false) #9, !annotation !8
  %341 = getelementptr inbounds %struct.cx24110_state, ptr %105, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = load i8, ptr %342, align 1
  %344 = zext i8 %343 to i16
  store i16 %344, ptr %73, align 4
  %345 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  store i16 0, ptr %345, align 2
  store i16 1, ptr %340, align 4
  %346 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  store ptr %71, ptr %346, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 1
  %348 = load i8, ptr %342, align 1
  %349 = zext i8 %348 to i16
  store i16 %349, ptr %347, align 4
  %350 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 1, i32 1
  store i16 1, ptr %350, align 2
  %351 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 1, i32 2
  store i16 1, ptr %351, align 4
  %352 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 1, i32 3
  store ptr %72, ptr %352, align 4
  %353 = load ptr, ptr %105, align 4
  %354 = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %73, i32 noundef 2) #9
  %355 = icmp eq i32 %354, 2
  %356 = load i8, ptr %72, align 1
  %357 = zext i8 %356 to i32
  %358 = select i1 %355, i32 %357, i32 %354
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %73) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %72) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %71) #9
  %359 = and i32 %358, 254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %69) #9
  store i8 55, ptr %69, align 2
  %360 = getelementptr inbounds i8, ptr %69, i32 1
  %361 = trunc i32 %359 to i8
  store i8 %361, ptr %360, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %70) #9
  %362 = getelementptr inbounds i8, ptr %70, i32 4
  store i32 2, ptr %362, align 4, !annotation !8
  %363 = load ptr, ptr %341, align 4
  %364 = load i8, ptr %363, align 1
  %365 = zext i8 %364 to i16
  store i16 %365, ptr %70, align 4
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 1
  store i16 0, ptr %366, align 2
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 3
  store ptr %69, ptr %367, align 4
  %368 = load ptr, ptr %105, align 4
  %369 = call i32 @i2c_transfer(ptr noundef %368, ptr noundef nonnull %70, i32 noundef 1) #9
  %370 = icmp eq i32 %369, 1
  %371 = load i32, ptr @debug, align 4
  %372 = icmp eq i32 %371, 0
  %373 = select i1 %370, i1 true, i1 %372
  br i1 %373, label %376, label %374

374:                                              ; preds = %339
  %375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %369, i32 noundef 55, i32 noundef %359) #10
  br label %376

376:                                              ; preds = %374, %339
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %70) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %69) #9
  br label %377

377:                                              ; preds = %376, %338, %228, %116
  %378 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %379 = load i32, ptr %378, align 4
  %380 = call i32 @llvm.umin.i32(i32 %379, i32 9) #9
  %381 = icmp ugt i32 %379, 8
  br i1 %381, label %382, label %542

382:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %66) #9
  store i8 55, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %67) #9
  store i8 0, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %68) #9
  %383 = getelementptr inbounds i8, ptr %68, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %383, i8 0, i32 16, i1 false) #9, !annotation !8
  %384 = getelementptr inbounds %struct.cx24110_state, ptr %105, i32 0, i32 1
  %385 = load ptr, ptr %384, align 4
  %386 = load i8, ptr %385, align 1
  %387 = zext i8 %386 to i16
  store i16 %387, ptr %68, align 4
  %388 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 1
  store i16 0, ptr %388, align 2
  store i16 1, ptr %383, align 4
  %389 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 3
  store ptr %66, ptr %389, align 4
  %390 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 1
  %391 = load i8, ptr %385, align 1
  %392 = zext i8 %391 to i16
  store i16 %392, ptr %390, align 4
  %393 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 1, i32 1
  store i16 1, ptr %393, align 2
  %394 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 1, i32 2
  store i16 1, ptr %394, align 4
  %395 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 1, i32 3
  store ptr %67, ptr %395, align 4
  %396 = load ptr, ptr %105, align 4
  %397 = call i32 @i2c_transfer(ptr noundef %396, ptr noundef nonnull %68, i32 noundef 2) #9
  %398 = icmp eq i32 %397, 2
  %399 = load i8, ptr %67, align 1
  %400 = zext i8 %399 to i32
  %401 = select i1 %398, i32 %400, i32 %397
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %68) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %67) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %66) #9
  %402 = and i32 %401, 223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %64) #9
  store i8 55, ptr %64, align 2
  %403 = getelementptr inbounds i8, ptr %64, i32 1
  %404 = trunc i32 %402 to i8
  store i8 %404, ptr %403, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #9
  %405 = getelementptr inbounds i8, ptr %65, i32 4
  store i32 2, ptr %405, align 4, !annotation !8
  %406 = load ptr, ptr %384, align 4
  %407 = load i8, ptr %406, align 1
  %408 = zext i8 %407 to i16
  store i16 %408, ptr %65, align 4
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %409, align 2
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %410, align 4
  %411 = load ptr, ptr %105, align 4
  %412 = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %65, i32 noundef 1) #9
  %413 = icmp eq i32 %412, 1
  %414 = load i32, ptr @debug, align 4
  %415 = icmp eq i32 %414, 0
  %416 = select i1 %413, i1 true, i1 %415
  br i1 %416, label %419, label %417

417:                                              ; preds = %382
  %418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %412, i32 noundef 55, i32 noundef %402) #10
  br label %419

419:                                              ; preds = %417, %382
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %64) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %62) #9
  store i8 24, ptr %62, align 2
  %420 = getelementptr inbounds i8, ptr %62, i32 1
  store i8 -82, ptr %420, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #9
  %421 = getelementptr inbounds i8, ptr %63, i32 4
  store i32 2, ptr %421, align 4, !annotation !8
  %422 = load ptr, ptr %384, align 4
  %423 = load i8, ptr %422, align 1
  %424 = zext i8 %423 to i16
  store i16 %424, ptr %63, align 4
  %425 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  store i16 0, ptr %425, align 2
  %426 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  store ptr %62, ptr %426, align 4
  %427 = load ptr, ptr %105, align 4
  %428 = call i32 @i2c_transfer(ptr noundef %427, ptr noundef nonnull %63, i32 noundef 1) #9
  %429 = icmp eq i32 %428, 1
  %430 = load i32, ptr @debug, align 4
  %431 = icmp eq i32 %430, 0
  %432 = select i1 %429, i1 true, i1 %431
  br i1 %432, label %435, label %433

433:                                              ; preds = %419
  %434 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %428, i32 noundef 24, i32 noundef 174) #10
  br label %435

435:                                              ; preds = %433, %419
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %62) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %59) #9
  store i8 5, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %60) #9
  store i8 0, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %61) #9
  %436 = getelementptr inbounds i8, ptr %61, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %436, i8 0, i32 16, i1 false) #9, !annotation !8
  %437 = load ptr, ptr %384, align 4
  %438 = load i8, ptr %437, align 1
  %439 = zext i8 %438 to i16
  store i16 %439, ptr %61, align 4
  %440 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %440, align 2
  store i16 1, ptr %436, align 4
  %441 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %59, ptr %441, align 4
  %442 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 1
  %443 = load i8, ptr %437, align 1
  %444 = zext i8 %443 to i16
  store i16 %444, ptr %442, align 4
  %445 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 1, i32 1
  store i16 1, ptr %445, align 2
  %446 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 1, i32 2
  store i16 1, ptr %446, align 4
  %447 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 1, i32 3
  store ptr %60, ptr %447, align 4
  %448 = load ptr, ptr %105, align 4
  %449 = call i32 @i2c_transfer(ptr noundef %448, ptr noundef nonnull %61, i32 noundef 2) #9
  %450 = icmp eq i32 %449, 2
  %451 = load i8, ptr %60, align 1
  %452 = zext i8 %451 to i32
  %453 = select i1 %450, i32 %452, i32 %449
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %61) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %60) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %59) #9
  %454 = and i32 %453, 240
  %455 = or i32 %454, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #9
  store i8 5, ptr %57, align 2
  %456 = getelementptr inbounds i8, ptr %57, i32 1
  %457 = trunc i32 %455 to i8
  store i8 %457, ptr %456, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #9
  %458 = getelementptr inbounds i8, ptr %58, i32 4
  store i32 2, ptr %458, align 4, !annotation !8
  %459 = load ptr, ptr %384, align 4
  %460 = load i8, ptr %459, align 1
  %461 = zext i8 %460 to i16
  store i16 %461, ptr %58, align 4
  %462 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  store i16 0, ptr %462, align 2
  %463 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  store ptr %57, ptr %463, align 4
  %464 = load ptr, ptr %105, align 4
  %465 = call i32 @i2c_transfer(ptr noundef %464, ptr noundef nonnull %58, i32 noundef 1) #9
  %466 = icmp eq i32 %465, 1
  %467 = load i32, ptr @debug, align 4
  %468 = icmp eq i32 %467, 0
  %469 = select i1 %466, i1 true, i1 %468
  br i1 %469, label %472, label %470

470:                                              ; preds = %435
  %471 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %465, i32 noundef 5, i32 noundef %455) #10
  br label %472

472:                                              ; preds = %470, %435
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %54) #9
  store i8 34, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %55) #9
  store i8 0, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %56) #9
  %473 = getelementptr inbounds i8, ptr %56, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %473, i8 0, i32 16, i1 false) #9, !annotation !8
  %474 = load ptr, ptr %384, align 4
  %475 = load i8, ptr %474, align 1
  %476 = zext i8 %475 to i16
  store i16 %476, ptr %56, align 4
  %477 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %477, align 2
  store i16 1, ptr %473, align 4
  %478 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %54, ptr %478, align 4
  %479 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 1
  %480 = load i8, ptr %474, align 1
  %481 = zext i8 %480 to i16
  store i16 %481, ptr %479, align 4
  %482 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 1, i32 1
  store i16 1, ptr %482, align 2
  %483 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 1, i32 2
  store i16 1, ptr %483, align 4
  %484 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 1, i32 3
  store ptr %55, ptr %484, align 4
  %485 = load ptr, ptr %105, align 4
  %486 = call i32 @i2c_transfer(ptr noundef %485, ptr noundef nonnull %56, i32 noundef 2) #9
  %487 = icmp eq i32 %486, 2
  %488 = load i8, ptr %55, align 1
  %489 = zext i8 %488 to i32
  %490 = select i1 %487, i32 %489, i32 %486
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %56) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %55) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %54) #9
  %491 = and i32 %490, 240
  %492 = or i32 %491, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #9
  store i8 34, ptr %52, align 2
  %493 = getelementptr inbounds i8, ptr %52, i32 1
  %494 = trunc i32 %492 to i8
  store i8 %494, ptr %493, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #9
  %495 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 2, ptr %495, align 4, !annotation !8
  %496 = load ptr, ptr %384, align 4
  %497 = load i8, ptr %496, align 1
  %498 = zext i8 %497 to i16
  store i16 %498, ptr %53, align 4
  %499 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %499, align 2
  %500 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %500, align 4
  %501 = load ptr, ptr %105, align 4
  %502 = call i32 @i2c_transfer(ptr noundef %501, ptr noundef nonnull %53, i32 noundef 1) #9
  %503 = icmp eq i32 %502, 1
  %504 = load i32, ptr @debug, align 4
  %505 = icmp eq i32 %504, 0
  %506 = select i1 %503, i1 true, i1 %505
  br i1 %506, label %509, label %507

507:                                              ; preds = %472
  %508 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %502, i32 noundef 34, i32 noundef %492) #10
  br label %509

509:                                              ; preds = %507, %472
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #9
  store i8 26, ptr %50, align 2
  %510 = getelementptr inbounds i8, ptr %50, i32 1
  store i8 5, ptr %510, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #9
  %511 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 2, ptr %511, align 4, !annotation !8
  %512 = load ptr, ptr %384, align 4
  %513 = load i8, ptr %512, align 1
  %514 = zext i8 %513 to i16
  store i16 %514, ptr %51, align 4
  %515 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %515, align 2
  %516 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %516, align 4
  %517 = load ptr, ptr %105, align 4
  %518 = call i32 @i2c_transfer(ptr noundef %517, ptr noundef nonnull %51, i32 noundef 1) #9
  %519 = icmp eq i32 %518, 1
  %520 = load i32, ptr @debug, align 4
  %521 = icmp eq i32 %520, 0
  %522 = select i1 %519, i1 true, i1 %521
  br i1 %522, label %525, label %523

523:                                              ; preds = %509
  %524 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %518, i32 noundef 26, i32 noundef 5) #10
  br label %525

525:                                              ; preds = %523, %509
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #9
  store i8 27, ptr %48, align 2
  %526 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 6, ptr %526, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #9
  %527 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 2, ptr %527, align 4, !annotation !8
  %528 = load ptr, ptr %384, align 4
  %529 = load i8, ptr %528, align 1
  %530 = zext i8 %529 to i16
  store i16 %530, ptr %49, align 4
  %531 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %531, align 2
  %532 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %532, align 4
  %533 = load ptr, ptr %105, align 4
  %534 = call i32 @i2c_transfer(ptr noundef %533, ptr noundef nonnull %49, i32 noundef 1) #9
  %535 = icmp eq i32 %534, 1
  %536 = load i32, ptr @debug, align 4
  %537 = icmp eq i32 %536, 0
  %538 = select i1 %535, i1 true, i1 %537
  br i1 %538, label %541, label %539

539:                                              ; preds = %525
  %540 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %534, i32 noundef 27, i32 noundef 6) #10
  br label %541

541:                                              ; preds = %539, %525
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #9
  br label %695

542:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %45) #9
  store i8 55, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %46) #9
  store i8 0, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %47) #9
  %543 = getelementptr inbounds i8, ptr %47, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %543, i8 0, i32 16, i1 false) #9, !annotation !8
  %544 = getelementptr inbounds %struct.cx24110_state, ptr %105, i32 0, i32 1
  %545 = load ptr, ptr %544, align 4
  %546 = load i8, ptr %545, align 1
  %547 = zext i8 %546 to i16
  store i16 %547, ptr %47, align 4
  %548 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %548, align 2
  store i16 1, ptr %543, align 4
  %549 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %45, ptr %549, align 4
  %550 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 1
  %551 = load i8, ptr %545, align 1
  %552 = zext i8 %551 to i16
  store i16 %552, ptr %550, align 4
  %553 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 1, i32 1
  store i16 1, ptr %553, align 2
  %554 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 1, i32 2
  store i16 1, ptr %554, align 4
  %555 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 1, i32 3
  store ptr %46, ptr %555, align 4
  %556 = load ptr, ptr %105, align 4
  %557 = call i32 @i2c_transfer(ptr noundef %556, ptr noundef nonnull %47, i32 noundef 2) #9
  %558 = icmp eq i32 %557, 2
  %559 = load i8, ptr %46, align 1
  %560 = zext i8 %559 to i32
  %561 = select i1 %558, i32 %560, i32 %557
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %47) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %46) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %45) #9
  %562 = or i32 %561, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #9
  store i8 55, ptr %43, align 2
  %563 = getelementptr inbounds i8, ptr %43, i32 1
  %564 = trunc i32 %562 to i8
  store i8 %564, ptr %563, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #9
  %565 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 2, ptr %565, align 4, !annotation !8
  %566 = load ptr, ptr %544, align 4
  %567 = load i8, ptr %566, align 1
  %568 = zext i8 %567 to i16
  store i16 %568, ptr %44, align 4
  %569 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %569, align 2
  %570 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %570, align 4
  %571 = load ptr, ptr %105, align 4
  %572 = call i32 @i2c_transfer(ptr noundef %571, ptr noundef nonnull %44, i32 noundef 1) #9
  %573 = icmp eq i32 %572, 1
  %574 = load i32, ptr @debug, align 4
  %575 = icmp eq i32 %574, 0
  %576 = select i1 %573, i1 true, i1 %575
  br i1 %576, label %579, label %577

577:                                              ; preds = %542
  %578 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %572, i32 noundef 55, i32 noundef %562) #10
  br label %579

579:                                              ; preds = %577, %542
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #9
  switch i32 %380, label %580 [
    i32 6, label %695
    i32 0, label %695
  ]

580:                                              ; preds = %579
  %581 = getelementptr [9 x i32], ptr @cx24110_set_fec.rate, i32 0, i32 %380
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %40) #9
  store i8 5, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %41) #9
  store i8 0, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %42) #9
  %582 = getelementptr inbounds i8, ptr %42, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %582, i8 0, i32 16, i1 false) #9, !annotation !8
  %583 = load ptr, ptr %544, align 4
  %584 = load i8, ptr %583, align 1
  %585 = zext i8 %584 to i16
  store i16 %585, ptr %42, align 4
  %586 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %586, align 2
  store i16 1, ptr %582, align 4
  %587 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %40, ptr %587, align 4
  %588 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1
  %589 = load i8, ptr %583, align 1
  %590 = zext i8 %589 to i16
  store i16 %590, ptr %588, align 4
  %591 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1, i32 1
  store i16 1, ptr %591, align 2
  %592 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1, i32 2
  store i16 1, ptr %592, align 4
  %593 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1, i32 3
  store ptr %41, ptr %593, align 4
  %594 = load ptr, ptr %105, align 4
  %595 = call i32 @i2c_transfer(ptr noundef %594, ptr noundef nonnull %42, i32 noundef 2) #9
  %596 = icmp eq i32 %595, 2
  %597 = load i8, ptr %41, align 1
  %598 = zext i8 %597 to i32
  %599 = select i1 %596, i32 %598, i32 %595
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %42) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %41) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %40) #9
  %600 = and i32 %599, 240
  %601 = load i32, ptr %581, align 4
  %602 = or i32 %601, %600
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #9
  store i8 5, ptr %38, align 2
  %603 = getelementptr inbounds i8, ptr %38, i32 1
  %604 = trunc i32 %602 to i8
  store i8 %604, ptr %603, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #9
  %605 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 2, ptr %605, align 4, !annotation !8
  %606 = load ptr, ptr %544, align 4
  %607 = load i8, ptr %606, align 1
  %608 = zext i8 %607 to i16
  store i16 %608, ptr %39, align 4
  %609 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %609, align 2
  %610 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %610, align 4
  %611 = load ptr, ptr %105, align 4
  %612 = call i32 @i2c_transfer(ptr noundef %611, ptr noundef nonnull %39, i32 noundef 1) #9
  %613 = icmp eq i32 %612, 1
  %614 = load i32, ptr @debug, align 4
  %615 = icmp eq i32 %614, 0
  %616 = select i1 %613, i1 true, i1 %615
  br i1 %616, label %619, label %617

617:                                              ; preds = %580
  %618 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %612, i32 noundef 5, i32 noundef %602) #10
  br label %619

619:                                              ; preds = %617, %580
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #9
  store i8 34, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %36) #9
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %37) #9
  %620 = getelementptr inbounds i8, ptr %37, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %620, i8 0, i32 16, i1 false) #9, !annotation !8
  %621 = load ptr, ptr %544, align 4
  %622 = load i8, ptr %621, align 1
  %623 = zext i8 %622 to i16
  store i16 %623, ptr %37, align 4
  %624 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %624, align 2
  store i16 1, ptr %620, align 4
  %625 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %35, ptr %625, align 4
  %626 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1
  %627 = load i8, ptr %621, align 1
  %628 = zext i8 %627 to i16
  store i16 %628, ptr %626, align 4
  %629 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1, i32 1
  store i16 1, ptr %629, align 2
  %630 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1, i32 2
  store i16 1, ptr %630, align 4
  %631 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1, i32 3
  store ptr %36, ptr %631, align 4
  %632 = load ptr, ptr %105, align 4
  %633 = call i32 @i2c_transfer(ptr noundef %632, ptr noundef nonnull %37, i32 noundef 2) #9
  %634 = icmp eq i32 %633, 2
  %635 = load i8, ptr %36, align 1
  %636 = zext i8 %635 to i32
  %637 = select i1 %634, i32 %636, i32 %633
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %36) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #9
  %638 = and i32 %637, 240
  %639 = or i32 %638, %601
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #9
  store i8 34, ptr %33, align 2
  %640 = getelementptr inbounds i8, ptr %33, i32 1
  %641 = trunc i32 %639 to i8
  store i8 %641, ptr %640, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #9
  %642 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 2, ptr %642, align 4, !annotation !8
  %643 = load ptr, ptr %544, align 4
  %644 = load i8, ptr %643, align 1
  %645 = zext i8 %644 to i16
  store i16 %645, ptr %34, align 4
  %646 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %646, align 2
  %647 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %647, align 4
  %648 = load ptr, ptr %105, align 4
  %649 = call i32 @i2c_transfer(ptr noundef %648, ptr noundef nonnull %34, i32 noundef 1) #9
  %650 = icmp eq i32 %649, 1
  %651 = load i32, ptr @debug, align 4
  %652 = icmp eq i32 %651, 0
  %653 = select i1 %650, i1 true, i1 %652
  br i1 %653, label %656, label %654

654:                                              ; preds = %619
  %655 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %649, i32 noundef 34, i32 noundef %639) #10
  br label %656

656:                                              ; preds = %654, %619
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #9
  %657 = getelementptr [9 x i32], ptr @cx24110_set_fec.g1, i32 0, i32 %380
  %658 = load i32, ptr %657, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #9
  store i8 26, ptr %31, align 2
  %659 = getelementptr inbounds i8, ptr %31, i32 1
  %660 = trunc i32 %658 to i8
  store i8 %660, ptr %659, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #9
  %661 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 2, ptr %661, align 4, !annotation !8
  %662 = load ptr, ptr %544, align 4
  %663 = load i8, ptr %662, align 1
  %664 = zext i8 %663 to i16
  store i16 %664, ptr %32, align 4
  %665 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %665, align 2
  %666 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %666, align 4
  %667 = load ptr, ptr %105, align 4
  %668 = call i32 @i2c_transfer(ptr noundef %667, ptr noundef nonnull %32, i32 noundef 1) #9
  %669 = icmp eq i32 %668, 1
  %670 = load i32, ptr @debug, align 4
  %671 = icmp eq i32 %670, 0
  %672 = select i1 %669, i1 true, i1 %671
  br i1 %672, label %675, label %673

673:                                              ; preds = %656
  %674 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %668, i32 noundef 26, i32 noundef %658) #10
  br label %675

675:                                              ; preds = %673, %656
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #9
  %676 = getelementptr [9 x i32], ptr @cx24110_set_fec.g2, i32 0, i32 %380
  %677 = load i32, ptr %676, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #9
  store i8 27, ptr %29, align 2
  %678 = getelementptr inbounds i8, ptr %29, i32 1
  %679 = trunc i32 %677 to i8
  store i8 %679, ptr %678, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #9
  %680 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 2, ptr %680, align 4, !annotation !8
  %681 = load ptr, ptr %544, align 4
  %682 = load i8, ptr %681, align 1
  %683 = zext i8 %682 to i16
  store i16 %683, ptr %30, align 4
  %684 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %684, align 2
  %685 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %685, align 4
  %686 = load ptr, ptr %105, align 4
  %687 = call i32 @i2c_transfer(ptr noundef %686, ptr noundef nonnull %30, i32 noundef 1) #9
  %688 = icmp eq i32 %687, 1
  %689 = load i32, ptr @debug, align 4
  %690 = icmp eq i32 %689, 0
  %691 = select i1 %688, i1 true, i1 %690
  br i1 %691, label %694, label %692

692:                                              ; preds = %675
  %693 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %687, i32 noundef 27, i32 noundef %677) #10
  br label %694

694:                                              ; preds = %692, %675
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #9
  br label %695

695:                                              ; preds = %694, %579, %579, %541
  %696 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %697 = load i32, ptr %696, align 4
  %698 = load i32, ptr @debug, align 4
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %702, label %700

700:                                              ; preds = %695
  %701 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx24110_set_symbolrate, i32 noundef %697) #10
  br label %702

702:                                              ; preds = %700, %695
  %703 = call i32 @llvm.umin.i32(i32 %697, i32 45499500) #9
  %704 = call i32 @llvm.umax.i32(i32 %703, i32 500000) #9
  %705 = icmp ugt i32 %704, 5000000
  %706 = icmp ugt i32 %704, 15000000
  %707 = select i1 %706, i32 2, i32 1
  %708 = select i1 %705, i32 %707, i32 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #9
  store i8 7, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #9
  store i8 0, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #9
  %709 = getelementptr inbounds i8, ptr %28, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %709, i8 0, i32 16, i1 false) #9, !annotation !8
  %710 = getelementptr inbounds %struct.cx24110_state, ptr %105, i32 0, i32 1
  %711 = load ptr, ptr %710, align 4
  %712 = load i8, ptr %711, align 1
  %713 = zext i8 %712 to i16
  store i16 %713, ptr %28, align 4
  %714 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %714, align 2
  store i16 1, ptr %709, align 4
  %715 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %26, ptr %715, align 4
  %716 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1
  %717 = load i8, ptr %711, align 1
  %718 = zext i8 %717 to i16
  store i16 %718, ptr %716, align 4
  %719 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 1
  store i16 1, ptr %719, align 2
  %720 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 2
  store i16 1, ptr %720, align 4
  %721 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 3
  store ptr %27, ptr %721, align 4
  %722 = load ptr, ptr %105, align 4
  %723 = call i32 @i2c_transfer(ptr noundef %722, ptr noundef nonnull %28, i32 noundef 2) #9
  %724 = icmp eq i32 %723, 2
  %725 = load i8, ptr %27, align 1
  %726 = zext i8 %725 to i32
  %727 = select i1 %724, i32 %726, i32 %723
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #9
  %728 = and i32 %727, 252
  %729 = icmp ult i32 %704, 22749750
  br i1 %729, label %730, label %764

730:                                              ; preds = %702
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #9
  store i8 7, ptr %24, align 2
  %731 = getelementptr inbounds i8, ptr %24, i32 1
  %732 = trunc i32 %728 to i8
  store i8 %732, ptr %731, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  %733 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %733, align 4, !annotation !8
  %734 = load ptr, ptr %710, align 4
  %735 = load i8, ptr %734, align 1
  %736 = zext i8 %735 to i16
  store i16 %736, ptr %25, align 4
  %737 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %737, align 2
  %738 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %738, align 4
  %739 = load ptr, ptr %105, align 4
  %740 = call i32 @i2c_transfer(ptr noundef %739, ptr noundef nonnull %25, i32 noundef 1) #9
  %741 = icmp eq i32 %740, 1
  %742 = load i32, ptr @debug, align 4
  %743 = icmp eq i32 %742, 0
  %744 = select i1 %741, i1 true, i1 %743
  br i1 %744, label %747, label %745

745:                                              ; preds = %730
  %746 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %740, i32 noundef 7, i32 noundef %728) #10
  br label %747

747:                                              ; preds = %745, %730
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #9
  store i8 6, ptr %22, align 2
  %748 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 120, ptr %748, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %749 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %749, align 4, !annotation !8
  %750 = load ptr, ptr %710, align 4
  %751 = load i8, ptr %750, align 1
  %752 = zext i8 %751 to i16
  store i16 %752, ptr %23, align 4
  %753 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %753, align 2
  %754 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %754, align 4
  %755 = load ptr, ptr %105, align 4
  %756 = call i32 @i2c_transfer(ptr noundef %755, ptr noundef nonnull %23, i32 noundef 1) #9
  %757 = icmp eq i32 %756, 1
  %758 = load i32, ptr @debug, align 4
  %759 = icmp eq i32 %758, 0
  %760 = select i1 %757, i1 true, i1 %759
  br i1 %760, label %763, label %761

761:                                              ; preds = %747
  %762 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %756, i32 noundef 6, i32 noundef 120) #10
  br label %763

763:                                              ; preds = %761, %747
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #9
  br label %873

764:                                              ; preds = %702
  %765 = icmp ult i32 %704, 30333000
  br i1 %765, label %766, label %801

766:                                              ; preds = %764
  %767 = or i32 %728, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 7, ptr %20, align 2
  %768 = getelementptr inbounds i8, ptr %20, i32 1
  %769 = trunc i32 %767 to i8
  store i8 %769, ptr %768, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %770 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %770, align 4, !annotation !8
  %771 = load ptr, ptr %710, align 4
  %772 = load i8, ptr %771, align 1
  %773 = zext i8 %772 to i16
  store i16 %773, ptr %21, align 4
  %774 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %774, align 2
  %775 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %775, align 4
  %776 = load ptr, ptr %105, align 4
  %777 = call i32 @i2c_transfer(ptr noundef %776, ptr noundef nonnull %21, i32 noundef 1) #9
  %778 = icmp eq i32 %777, 1
  %779 = load i32, ptr @debug, align 4
  %780 = icmp eq i32 %779, 0
  %781 = select i1 %778, i1 true, i1 %780
  br i1 %781, label %784, label %782

782:                                              ; preds = %766
  %783 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %777, i32 noundef 7, i32 noundef %767) #10
  br label %784

784:                                              ; preds = %782, %766
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i8 6, ptr %18, align 2
  %785 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 -91, ptr %785, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %786 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %786, align 4, !annotation !8
  %787 = load ptr, ptr %710, align 4
  %788 = load i8, ptr %787, align 1
  %789 = zext i8 %788 to i16
  store i16 %789, ptr %19, align 4
  %790 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %790, align 2
  %791 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %791, align 4
  %792 = load ptr, ptr %105, align 4
  %793 = call i32 @i2c_transfer(ptr noundef %792, ptr noundef nonnull %19, i32 noundef 1) #9
  %794 = icmp eq i32 %793, 1
  %795 = load i32, ptr @debug, align 4
  %796 = icmp eq i32 %795, 0
  %797 = select i1 %794, i1 true, i1 %796
  br i1 %797, label %800, label %798

798:                                              ; preds = %784
  %799 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %793, i32 noundef 6, i32 noundef 165) #10
  br label %800

800:                                              ; preds = %798, %784
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  br label %873

801:                                              ; preds = %764
  %802 = icmp ult i32 %704, 40444000
  br i1 %802, label %803, label %838

803:                                              ; preds = %801
  %804 = or i32 %728, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 7, ptr %16, align 2
  %805 = getelementptr inbounds i8, ptr %16, i32 1
  %806 = trunc i32 %804 to i8
  store i8 %806, ptr %805, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %807 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %807, align 4, !annotation !8
  %808 = load ptr, ptr %710, align 4
  %809 = load i8, ptr %808, align 1
  %810 = zext i8 %809 to i16
  store i16 %810, ptr %17, align 4
  %811 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %811, align 2
  %812 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %812, align 4
  %813 = load ptr, ptr %105, align 4
  %814 = call i32 @i2c_transfer(ptr noundef %813, ptr noundef nonnull %17, i32 noundef 1) #9
  %815 = icmp eq i32 %814, 1
  %816 = load i32, ptr @debug, align 4
  %817 = icmp eq i32 %816, 0
  %818 = select i1 %815, i1 true, i1 %817
  br i1 %818, label %821, label %819

819:                                              ; preds = %803
  %820 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %814, i32 noundef 7, i32 noundef %804) #10
  br label %821

821:                                              ; preds = %819, %803
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 6, ptr %14, align 2
  %822 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -121, ptr %822, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %823 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %823, align 4, !annotation !8
  %824 = load ptr, ptr %710, align 4
  %825 = load i8, ptr %824, align 1
  %826 = zext i8 %825 to i16
  store i16 %826, ptr %15, align 4
  %827 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %827, align 2
  %828 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %828, align 4
  %829 = load ptr, ptr %105, align 4
  %830 = call i32 @i2c_transfer(ptr noundef %829, ptr noundef nonnull %15, i32 noundef 1) #9
  %831 = icmp eq i32 %830, 1
  %832 = load i32, ptr @debug, align 4
  %833 = icmp eq i32 %832, 0
  %834 = select i1 %831, i1 true, i1 %833
  br i1 %834, label %837, label %835

835:                                              ; preds = %821
  %836 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %830, i32 noundef 6, i32 noundef 135) #10
  br label %837

837:                                              ; preds = %835, %821
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  br label %873

838:                                              ; preds = %801
  %839 = or i32 %728, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 7, ptr %12, align 2
  %840 = getelementptr inbounds i8, ptr %12, i32 1
  %841 = trunc i32 %839 to i8
  store i8 %841, ptr %840, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %842 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %842, align 4, !annotation !8
  %843 = load ptr, ptr %710, align 4
  %844 = load i8, ptr %843, align 1
  %845 = zext i8 %844 to i16
  store i16 %845, ptr %13, align 4
  %846 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %846, align 2
  %847 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %847, align 4
  %848 = load ptr, ptr %105, align 4
  %849 = call i32 @i2c_transfer(ptr noundef %848, ptr noundef nonnull %13, i32 noundef 1) #9
  %850 = icmp eq i32 %849, 1
  %851 = load i32, ptr @debug, align 4
  %852 = icmp eq i32 %851, 0
  %853 = select i1 %850, i1 true, i1 %852
  br i1 %853, label %856, label %854

854:                                              ; preds = %838
  %855 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %849, i32 noundef 7, i32 noundef %839) #10
  br label %856

856:                                              ; preds = %854, %838
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 6, ptr %10, align 2
  %857 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 120, ptr %857, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %858 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %858, align 4, !annotation !8
  %859 = load ptr, ptr %710, align 4
  %860 = load i8, ptr %859, align 1
  %861 = zext i8 %860 to i16
  store i16 %861, ptr %11, align 4
  %862 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %862, align 2
  %863 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %863, align 4
  %864 = load ptr, ptr %105, align 4
  %865 = call i32 @i2c_transfer(ptr noundef %864, ptr noundef nonnull %11, i32 noundef 1) #9
  %866 = icmp eq i32 %865, 1
  %867 = load i32, ptr @debug, align 4
  %868 = icmp eq i32 %867, 0
  %869 = select i1 %866, i1 true, i1 %868
  br i1 %869, label %872, label %870

870:                                              ; preds = %856
  %871 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %865, i32 noundef 6, i32 noundef 120) #10
  br label %872

872:                                              ; preds = %870, %856
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  br label %873

873:                                              ; preds = %872, %837, %800, %763
  %874 = phi i32 [ 45499500, %763 ], [ 60666000, %800 ], [ 80888000, %837 ], [ 90999000, %872 ]
  %875 = load i32, ptr @debug, align 4
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %881, label %877

877:                                              ; preds = %873
  %878 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %874) #10
  %879 = load i32, ptr @debug, align 4
  %880 = icmp eq i32 %879, 0
  br label %881

881:                                              ; preds = %877, %873
  %882 = phi i1 [ %880, %877 ], [ true, %873 ]
  %883 = shl nuw i32 %704, 6
  %884 = lshr exact i32 %874, 2
  %885 = freeze i32 %883
  %886 = freeze i32 %884
  %887 = udiv i32 %885, %886
  %888 = mul i32 %887, %886
  %889 = sub i32 %885, %888
  %890 = shl i32 %889, 8
  %891 = shl nuw nsw i32 %887, 8
  %892 = freeze i32 %884
  %893 = udiv i32 %890, %892
  %894 = add nuw nsw i32 %893, %891
  %895 = mul i32 %893, %892
  %896 = sub i32 %890, %895
  %897 = shl i32 %896, 8
  %898 = shl nuw nsw i32 %894, 8
  %899 = freeze i32 %897
  %900 = freeze i32 %884
  %901 = udiv i32 %899, %900
  %902 = add nuw nsw i32 %898, %901
  %903 = mul i32 %901, %900
  %904 = sub i32 %899, %903
  %905 = shl nuw nsw i32 %904, 1
  %906 = shl nuw nsw i32 %902, 1
  %907 = udiv i32 %905, %884
  %908 = add nuw nsw i32 %906, %907
  br i1 %882, label %921, label %909

909:                                              ; preds = %881
  %910 = getelementptr [3 x i32], ptr @cx24110_set_symbolrate.bands, i32 0, i32 %708
  %911 = load i32, ptr %910, align 4
  %912 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %704, i32 noundef %708, i32 noundef %911) #10
  %913 = load i32, ptr @debug, align 4
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %921, label %915

915:                                              ; preds = %909
  %916 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %874) #10
  %917 = load i32, ptr @debug, align 4
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %921, label %919

919:                                              ; preds = %915
  %920 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %908) #10
  br label %921

921:                                              ; preds = %919, %915, %909, %881
  %922 = lshr i32 %908, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 1, ptr %8, align 2
  %923 = getelementptr inbounds i8, ptr %8, i32 1
  %924 = trunc i32 %922 to i8
  store i8 %924, ptr %923, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %925 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %925, align 4, !annotation !8
  %926 = load ptr, ptr %710, align 4
  %927 = load i8, ptr %926, align 1
  %928 = zext i8 %927 to i16
  store i16 %928, ptr %9, align 4
  %929 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %929, align 2
  %930 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %930, align 4
  %931 = load ptr, ptr %105, align 4
  %932 = call i32 @i2c_transfer(ptr noundef %931, ptr noundef nonnull %9, i32 noundef 1) #9
  %933 = icmp eq i32 %932, 1
  %934 = load i32, ptr @debug, align 4
  %935 = icmp eq i32 %934, 0
  %936 = select i1 %933, i1 true, i1 %935
  br i1 %936, label %940, label %937

937:                                              ; preds = %921
  %938 = and i32 %922, 255
  %939 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %932, i32 noundef 1, i32 noundef %938) #10
  br label %940

940:                                              ; preds = %937, %921
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  %941 = lshr i32 %908, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 2, ptr %6, align 2
  %942 = getelementptr inbounds i8, ptr %6, i32 1
  %943 = trunc i32 %941 to i8
  store i8 %943, ptr %942, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %944 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %944, align 4, !annotation !8
  %945 = load ptr, ptr %710, align 4
  %946 = load i8, ptr %945, align 1
  %947 = zext i8 %946 to i16
  store i16 %947, ptr %7, align 4
  %948 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %948, align 2
  %949 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %949, align 4
  %950 = load ptr, ptr %105, align 4
  %951 = call i32 @i2c_transfer(ptr noundef %950, ptr noundef nonnull %7, i32 noundef 1) #9
  %952 = icmp eq i32 %951, 1
  %953 = load i32, ptr @debug, align 4
  %954 = icmp eq i32 %953, 0
  %955 = select i1 %952, i1 true, i1 %954
  br i1 %955, label %959, label %956

956:                                              ; preds = %940
  %957 = and i32 %941, 255
  %958 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %951, i32 noundef 2, i32 noundef %957) #10
  br label %959

959:                                              ; preds = %956, %940
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 3, ptr %4, align 2
  %960 = getelementptr inbounds i8, ptr %4, i32 1
  %961 = trunc i32 %908 to i8
  store i8 %961, ptr %960, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %962 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %962, align 4, !annotation !8
  %963 = load ptr, ptr %710, align 4
  %964 = load i8, ptr %963, align 1
  %965 = zext i8 %964 to i16
  store i16 %965, ptr %5, align 4
  %966 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %966, align 2
  %967 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %967, align 4
  %968 = load ptr, ptr %105, align 4
  %969 = call i32 @i2c_transfer(ptr noundef %968, ptr noundef nonnull %5, i32 noundef 1) #9
  %970 = icmp eq i32 %969, 1
  %971 = load i32, ptr @debug, align 4
  %972 = icmp eq i32 %971, 0
  %973 = select i1 %970, i1 true, i1 %972
  br i1 %973, label %977, label %974

974:                                              ; preds = %959
  %975 = and i32 %908, 255
  %976 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %969, i32 noundef 3, i32 noundef %975) #10
  br label %977

977:                                              ; preds = %974, %959
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 4, ptr %2, align 2
  %978 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 5, ptr %978, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %979 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %979, align 4, !annotation !8
  %980 = load ptr, ptr %710, align 4
  %981 = load i8, ptr %980, align 1
  %982 = zext i8 %981 to i16
  store i16 %982, ptr %3, align 4
  %983 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %983, align 2
  %984 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %984, align 4
  %985 = load ptr, ptr %105, align 4
  %986 = call i32 @i2c_transfer(ptr noundef %985, ptr noundef nonnull %3, i32 noundef 1) #9
  %987 = icmp eq i32 %986, 1
  %988 = load i32, ptr @debug, align 4
  %989 = icmp eq i32 %988, 0
  %990 = select i1 %987, i1 true, i1 %989
  br i1 %990, label %993, label %991

991:                                              ; preds = %977
  %992 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %986, i32 noundef 4, i32 noundef 5) #10
  br label %993

993:                                              ; preds = %991, %977
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #9
  store i8 7, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #9
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #9
  %23 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %23, i8 0, i32 16, i1 false) #9, !annotation !8
  %24 = getelementptr inbounds %struct.cx24110_state, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %20, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 1, ptr %23, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %31 = load i8, ptr %25, align 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %35, align 4
  %36 = load ptr, ptr %22, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %20, i32 noundef 2) #9
  %38 = icmp eq i32 %37, 2
  %39 = load i8, ptr %19, align 1
  %40 = zext i8 %39 to i32
  %41 = select i1 %38, i32 %40, i32 %37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #9
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %47, label %44

44:                                               ; preds = %2
  %45 = getelementptr inbounds [3 x i32], ptr @switch.table.cx24110_get_frontend, i32 0, i32 %42
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %2
  %48 = phi i32 [ %46, %44 ], [ 355464, %2 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #9
  store i8 68, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #9
  %49 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %49, i8 0, i32 16, i1 false) #9, !annotation !8
  %50 = load ptr, ptr %24, align 4
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %17, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %53, align 2
  store i16 1, ptr %49, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %56 = load i8, ptr %50, align 1
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %60, align 4
  %61 = load ptr, ptr %22, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %17, i32 noundef 2) #9
  %63 = icmp eq i32 %62, 2
  %64 = load i8, ptr %16, align 1
  %65 = zext i8 %64 to i32
  %66 = select i1 %63, i32 %65, i32 %62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #9
  %67 = and i32 %66, 31
  %68 = mul nuw nsw i32 %67, %48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 69, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %69 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %69, i8 0, i32 16, i1 false) #9, !annotation !8
  %70 = load ptr, ptr %24, align 4
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %14, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %73, align 2
  store i16 1, ptr %69, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %76 = load i8, ptr %70, align 1
  %77 = zext i8 %76 to i16
  store i16 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %78, align 2
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %79, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %80, align 4
  %81 = load ptr, ptr %22, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %14, i32 noundef 2) #9
  %83 = icmp eq i32 %82, 2
  %84 = load i8, ptr %13, align 1
  %85 = zext i8 %84 to i32
  %86 = select i1 %83, i32 %85, i32 %82
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  %87 = mul i32 %86, %48
  %88 = lshr i32 %87, 8
  %89 = add nuw nsw i32 %88, %68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 70, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %90 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %90, i8 0, i32 16, i1 false) #9, !annotation !8
  %91 = load ptr, ptr %24, align 4
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i16
  store i16 %93, ptr %11, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %94, align 2
  store i16 1, ptr %90, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %95, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %97 = load i8, ptr %91, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %96, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %99, align 2
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %100, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %101, align 4
  %102 = load ptr, ptr %22, align 4
  %103 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %11, i32 noundef 2) #9
  %104 = icmp eq i32 %103, 2
  %105 = load i8, ptr %10, align 1
  %106 = zext i8 %105 to i32
  %107 = select i1 %104, i32 %106, i32 %103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  %108 = mul i32 %107, %48
  %109 = lshr i32 %108, 16
  %110 = add nuw nsw i32 %89, %109
  %111 = load i32, ptr %1, align 4
  %112 = add i32 %110, %111
  store i32 %112, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 34, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %113 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %113, i8 0, i32 16, i1 false) #9, !annotation !8
  %114 = load ptr, ptr %24, align 4
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %8, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %117, align 2
  store i16 1, ptr %113, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %118, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %120 = load i8, ptr %114, align 1
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %119, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %122, align 2
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %123, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %124, align 4
  %125 = load ptr, ptr %22, align 4
  %126 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %8, i32 noundef 2) #9
  %127 = icmp eq i32 %126, 2
  %128 = load i8, ptr %7, align 1
  %129 = zext i8 %128 to i32
  %130 = select i1 %127, i32 %129, i32 %126
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %131 = lshr i32 %130, 4
  %132 = and i32 %131, 1
  %133 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %132, ptr %133, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 34, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %134 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %134, i8 0, i32 16, i1 false) #9, !annotation !8
  %135 = load ptr, ptr %24, align 4
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i16
  store i16 %137, ptr %5, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %138, align 2
  store i16 1, ptr %134, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %139, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %141 = load i8, ptr %135, align 1
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %140, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %144, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %145, align 4
  %146 = load ptr, ptr %22, align 4
  %147 = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %5, i32 noundef 2) #9
  %148 = icmp eq i32 %147, 2
  %149 = load i8, ptr %4, align 1
  %150 = zext i8 %149 to i32
  %151 = select i1 %148, i32 %150, i32 %147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %152 = and i32 %151, 8
  %153 = icmp eq i32 %152, 0
  %154 = and i32 %151, 15
  %155 = select i1 %153, i32 %154, i32 0
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %155, ptr %156, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 85, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.cx24110_state, ptr %10, i32 0, i32 1
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
  %26 = icmp eq i32 %25, 2
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = select i1 %26, i32 %28, i32 %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %30 = lshr i32 %29, 4
  %31 = and i32 %30, 1
  %32 = lshr i32 %29, 2
  %33 = and i32 %32, 2
  %34 = or i32 %33, %31
  store i32 %34, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 8, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %35 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %35, i8 0, i32 16, i1 false) #9, !annotation !8
  %36 = load ptr, ptr %12, align 4
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %5, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %39, align 2
  store i16 1, ptr %35, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %42 = load i8, ptr %36, align 1
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %46, align 4
  %47 = load ptr, ptr %10, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %5, i32 noundef 2) #9
  %49 = icmp eq i32 %48, 2
  %50 = load i8, ptr %4, align 1
  %51 = zext i8 %50 to i32
  %52 = select i1 %49, i32 %51, i32 %48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %53 = and i32 %52, 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %2
  %56 = load i32, ptr %1, align 4
  %57 = or i32 %56, 4
  store i32 %57, ptr %1, align 4
  br label %58

58:                                               ; preds = %55, %2
  %59 = and i32 %52, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr %1, align 4
  %63 = or i32 %62, 8
  store i32 %63, ptr %1, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = and i32 %52, 96
  %66 = icmp eq i32 %65, 96
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, ptr %1, align 4
  %69 = or i32 %68, 16
  store i32 %69, ptr %1, align 4
  br label %70

70:                                               ; preds = %67, %64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
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
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [1 x i8], align 1
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #9
  store i8 36, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #9
  %20 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #9, !annotation !8
  %21 = getelementptr inbounds %struct.cx24110_state, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %17, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %20, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %28 = load i8, ptr %22, align 1
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %32, align 4
  %33 = load ptr, ptr %19, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %17, i32 noundef 2) #9
  %35 = icmp eq i32 %34, 2
  %36 = load i8, ptr %16, align 1
  %37 = zext i8 %36 to i32
  %38 = select i1 %35, i32 %37, i32 %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #9
  %39 = and i32 %38, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %129, label %41

41:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #9
  store i8 36, ptr %13, align 2
  %42 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 4, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #9
  %43 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %43, align 4, !annotation !8
  %44 = load ptr, ptr %21, align 4
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %14, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %48, align 4
  %49 = load ptr, ptr %19, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %14, i32 noundef 1) #9
  %51 = icmp eq i32 %50, 1
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %41
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %50, i32 noundef 36, i32 noundef 4) #10
  br label %57

57:                                               ; preds = %55, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 37, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  %58 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %58, i8 0, i32 16, i1 false) #9, !annotation !8
  %59 = load ptr, ptr %21, align 4
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %12, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %62, align 2
  store i16 1, ptr %58, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %65 = load i8, ptr %59, align 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %67, align 2
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %69, align 4
  %70 = load ptr, ptr %19, align 4
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %12, i32 noundef 2) #9
  %72 = icmp eq i32 %71, 2
  %73 = load i8, ptr %11, align 1
  %74 = zext i8 %73 to i32
  %75 = select i1 %72, i32 %74, i32 %71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 38, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  %76 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %76, i8 0, i32 16, i1 false) #9, !annotation !8
  %77 = load ptr, ptr %21, align 4
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %9, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %80, align 2
  store i16 1, ptr %76, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %83 = load i8, ptr %77, align 1
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %82, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %85, align 2
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %87, align 4
  %88 = load ptr, ptr %19, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %9, i32 noundef 2) #9
  %90 = icmp eq i32 %89, 2
  %91 = load i8, ptr %8, align 1
  %92 = zext i8 %91 to i32
  %93 = select i1 %90, i32 %92, i32 %89
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  %94 = shl i32 %93, 8
  %95 = or i32 %94, %75
  %96 = getelementptr inbounds %struct.cx24110_state, ptr %19, i32 0, i32 3
  store i32 %95, ptr %96, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 36, ptr %5, align 2
  %97 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 4, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %98 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %98, align 4, !annotation !8
  %99 = load ptr, ptr %21, align 4
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %6, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %102, align 2
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %103, align 4
  %104 = load ptr, ptr %19, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %6, i32 noundef 1) #9
  %106 = icmp eq i32 %105, 1
  %107 = load i32, ptr @debug, align 4
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %112, label %110

110:                                              ; preds = %57
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %105, i32 noundef 36, i32 noundef 4) #10
  br label %112

112:                                              ; preds = %110, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 36, ptr %3, align 2
  %113 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 20, ptr %113, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %114 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %114, align 4, !annotation !8
  %115 = load ptr, ptr %21, align 4
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i16
  store i16 %117, ptr %4, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %118, align 2
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %119, align 4
  %120 = load ptr, ptr %19, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %4, i32 noundef 1) #9
  %122 = icmp eq i32 %121, 1
  %123 = load i32, ptr @debug, align 4
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %128, label %126

126:                                              ; preds = %112
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %121, i32 noundef 36, i32 noundef 20) #10
  br label %128

128:                                              ; preds = %126, %112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %129

129:                                              ; preds = %128, %2
  %130 = getelementptr inbounds %struct.cx24110_state, ptr %19, i32 0, i32 3
  %131 = load i32, ptr %130, align 4
  store i32 %131, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 39, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.cx24110_state, ptr %7, i32 0, i32 1
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
  %23 = icmp eq i32 %22, 2
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  %26 = select i1 %23, i32 %25, i32 %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %27 = trunc i32 %26 to i16
  %28 = and i16 %27, 255
  %29 = xor i16 %28, 128
  %30 = mul nuw i16 %29, 257
  store i16 %30, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [1 x i8], align 1
  %12 = alloca [1 x i8], align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 106, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  %16 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %16, i8 0, i32 16, i1 false) #9, !annotation !8
  %17 = getelementptr inbounds %struct.cx24110_state, ptr %15, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %13, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 1, ptr %16, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %24 = load i8, ptr %18, align 1
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %28, align 4
  %29 = load ptr, ptr %15, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %13, i32 noundef 2) #9
  %31 = icmp eq i32 %30, 2
  %32 = load i8, ptr %12, align 1
  %33 = zext i8 %32 to i32
  %34 = select i1 %31, i32 %33, i32 %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %93, label %37

37:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 105, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %38 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %38, i8 0, i32 16, i1 false) #9, !annotation !8
  %39 = load ptr, ptr %17, align 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %10, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %42, align 2
  store i16 1, ptr %38, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %45 = load i8, ptr %39, align 1
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %49, align 4
  %50 = load ptr, ptr %15, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %10, i32 noundef 2) #9
  %52 = icmp eq i32 %51, 2
  %53 = load i8, ptr %9, align 1
  %54 = zext i8 %53 to i32
  %55 = select i1 %52, i32 %54, i32 %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 104, ptr %5, align 1
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
  %68 = load ptr, ptr %15, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %7, i32 noundef 2) #9
  %70 = icmp eq i32 %69, 2
  %71 = load i8, ptr %6, align 1
  %72 = zext i8 %71 to i32
  %73 = select i1 %70, i32 %72, i32 %69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %74 = shl i32 %73, 8
  %75 = or i32 %74, %55
  %76 = getelementptr inbounds %struct.cx24110_state, ptr %15, i32 0, i32 5
  store i32 %75, ptr %76, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 106, ptr %3, align 2
  %77 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -124, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %78 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %78, align 4, !annotation !8
  %79 = load ptr, ptr %17, align 4
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %4, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %82, align 2
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %83, align 4
  %84 = load ptr, ptr %15, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %4, i32 noundef 1) #9
  %86 = icmp eq i32 %85, 1
  %87 = load i32, ptr @debug, align 4
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %37
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %85, i32 noundef 106, i32 noundef 132) #10
  br label %92

92:                                               ; preds = %90, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %93

93:                                               ; preds = %92, %2
  %94 = getelementptr inbounds %struct.cx24110_state, ptr %15, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = trunc i32 %95 to i16
  store i16 %96, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [1 x i8], align 1
  %12 = alloca [1 x i8], align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [1 x i8], align 1
  %17 = alloca [1 x i8], align 1
  %18 = alloca [2 x %struct.i2c_msg], align 4
  %19 = alloca [1 x i8], align 1
  %20 = alloca [1 x i8], align 1
  %21 = alloca [2 x %struct.i2c_msg], align 4
  %22 = alloca [1 x i8], align 1
  %23 = alloca [1 x i8], align 1
  %24 = alloca [2 x %struct.i2c_msg], align 4
  %25 = alloca [2 x i8], align 2
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [1 x i8], align 1
  %28 = alloca [1 x i8], align 1
  %29 = alloca [2 x %struct.i2c_msg], align 4
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #9
  store i8 16, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #9
  store i8 0, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #9
  %32 = getelementptr inbounds i8, ptr %29, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %32, i8 0, i32 16, i1 false) #9, !annotation !8
  %33 = getelementptr inbounds %struct.cx24110_state, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %29, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %37, align 2
  store i16 1, ptr %32, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %27, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1
  %40 = load i8, ptr %34, align 1
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 1
  store i16 1, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 2
  store i16 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 3
  store ptr %28, ptr %44, align 4
  %45 = load ptr, ptr %31, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %29, i32 noundef 2) #9
  %47 = icmp eq i32 %46, 2
  %48 = load i8, ptr %28, align 1
  %49 = zext i8 %48 to i32
  %50 = select i1 %47, i32 %49, i32 %46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #9
  %51 = and i32 %50, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %203, label %53

53:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #9
  store i8 16, ptr %25, align 2
  %54 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 96, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #9
  %55 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %55, align 4, !annotation !8
  %56 = load ptr, ptr %33, align 4
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %26, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %60, align 4
  %61 = load ptr, ptr %31, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %26, i32 noundef 1) #9
  %63 = icmp eq i32 %62, 1
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %53
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %62, i32 noundef 16, i32 noundef 96) #10
  br label %69

69:                                               ; preds = %67, %53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #9
  store i8 18, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #9
  store i8 0, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #9
  %70 = getelementptr inbounds i8, ptr %24, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %70, i8 0, i32 16, i1 false) #9, !annotation !8
  %71 = load ptr, ptr %33, align 4
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i16
  store i16 %73, ptr %24, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %74, align 2
  store i16 1, ptr %70, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %22, ptr %75, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1
  %77 = load i8, ptr %71, align 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %76, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 1
  store i16 1, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 2
  store i16 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 3
  store ptr %23, ptr %81, align 4
  %82 = load ptr, ptr %31, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %24, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #9
  store i8 19, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #9
  store i8 0, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #9
  %84 = getelementptr inbounds i8, ptr %21, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %84, i8 0, i32 16, i1 false) #9, !annotation !8
  %85 = load ptr, ptr %33, align 4
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %21, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %88, align 2
  store i16 1, ptr %84, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %19, ptr %89, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1
  %91 = load i8, ptr %85, align 1
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %90, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 1
  store i16 1, ptr %93, align 2
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 2
  store i16 1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 3
  store ptr %20, ptr %95, align 4
  %96 = load ptr, ptr %31, align 4
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %21, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 20, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #9
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #9
  %98 = getelementptr inbounds i8, ptr %18, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %98, i8 0, i32 16, i1 false) #9, !annotation !8
  %99 = load ptr, ptr %33, align 4
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %18, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %102, align 2
  store i16 1, ptr %98, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %16, ptr %103, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1
  %105 = load i8, ptr %99, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %104, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 1
  store i16 1, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 2
  store i16 1, ptr %108, align 4
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 3
  store ptr %17, ptr %109, align 4
  %110 = load ptr, ptr %31, align 4
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %18, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 16, ptr %14, align 2
  %112 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 112, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %113 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %113, align 4, !annotation !8
  %114 = load ptr, ptr %33, align 4
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %15, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %118, align 4
  %119 = load ptr, ptr %31, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %15, i32 noundef 1) #9
  %121 = icmp eq i32 %120, 1
  %122 = load i32, ptr @debug, align 4
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %121, i1 true, i1 %123
  br i1 %124, label %127, label %125

125:                                              ; preds = %69
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %120, i32 noundef 16, i32 noundef 112) #10
  br label %127

127:                                              ; preds = %125, %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 18, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  %128 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %128, i8 0, i32 16, i1 false) #9, !annotation !8
  %129 = load ptr, ptr %33, align 4
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i16
  store i16 %131, ptr %13, align 4
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %132, align 2
  store i16 1, ptr %128, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %133, align 4
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %135 = load i8, ptr %129, align 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %134, align 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %137, align 2
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %138, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %139, align 4
  %140 = load ptr, ptr %31, align 4
  %141 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %13, i32 noundef 2) #9
  %142 = icmp eq i32 %141, 2
  %143 = load i8, ptr %12, align 1
  %144 = zext i8 %143 to i32
  %145 = select i1 %142, i32 %144, i32 %141
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 19, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %146 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %146, i8 0, i32 16, i1 false) #9, !annotation !8
  %147 = load ptr, ptr %33, align 4
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i16
  store i16 %149, ptr %10, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %150, align 2
  store i16 1, ptr %146, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %151, align 4
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %153 = load i8, ptr %147, align 1
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %152, align 4
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %155, align 2
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %156, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %157, align 4
  %158 = load ptr, ptr %31, align 4
  %159 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %10, i32 noundef 2) #9
  %160 = icmp eq i32 %159, 2
  %161 = load i8, ptr %9, align 1
  %162 = zext i8 %161 to i32
  %163 = select i1 %160, i32 %162, i32 %159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %164 = shl i32 %163, 8
  %165 = or i32 %164, %145
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 20, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %166 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %166, i8 0, i32 16, i1 false) #9, !annotation !8
  %167 = load ptr, ptr %33, align 4
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i16
  store i16 %169, ptr %7, align 4
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %170, align 2
  store i16 1, ptr %166, align 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %171, align 4
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %173 = load i8, ptr %167, align 1
  %174 = zext i8 %173 to i16
  store i16 %174, ptr %172, align 4
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %175, align 2
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %176, align 4
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %177, align 4
  %178 = load ptr, ptr %31, align 4
  %179 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %7, i32 noundef 2) #9
  %180 = icmp eq i32 %179, 2
  %181 = load i8, ptr %6, align 1
  %182 = zext i8 %181 to i32
  %183 = select i1 %180, i32 %182, i32 %179
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %184 = shl i32 %183, 16
  %185 = or i32 %165, %184
  %186 = getelementptr inbounds %struct.cx24110_state, ptr %31, i32 0, i32 4
  store i32 %185, ptr %186, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 16, ptr %3, align 2
  %187 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 32, ptr %187, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %188 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %188, align 4, !annotation !8
  %189 = load ptr, ptr %33, align 4
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i16
  store i16 %191, ptr %4, align 4
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %192, align 2
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %193, align 4
  %194 = load ptr, ptr %31, align 4
  %195 = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %4, i32 noundef 1) #9
  %196 = icmp eq i32 %195, 1
  %197 = load i32, ptr @debug, align 4
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %196, i1 true, i1 %198
  br i1 %199, label %202, label %200

200:                                              ; preds = %127
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %195, i32 noundef 16, i32 noundef 32) #10
  br label %202

202:                                              ; preds = %200, %127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %203

203:                                              ; preds = %202, %2
  %204 = getelementptr inbounds %struct.cx24110_state, ptr %31, i32 0, i32 4
  %205 = load i32, ptr %204, align 4
  store i32 %205, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
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
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = add i8 %21, -7
  %23 = icmp ult i8 %22, -4
  br i1 %23, label %164, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds i8, ptr %16, i32 1
  %26 = getelementptr inbounds i8, ptr %17, i32 4
  %27 = getelementptr inbounds %struct.cx24110_state, ptr %19, i32 0, i32 1
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  br label %30

30:                                               ; preds = %48, %24
  %31 = phi i32 [ 0, %24 ], [ %49, %48 ]
  %32 = add nuw nsw i32 %31, 121
  %33 = getelementptr [6 x i8], ptr %1, i32 0, i32 %31
  %34 = load i8, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  %35 = trunc i32 %32 to i8
  store i8 %35, ptr %16, align 2
  store i8 %34, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  store i32 0, ptr %26, align 4, !annotation !8
  %36 = load ptr, ptr %27, align 4
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %17, align 4
  store i16 0, ptr %28, align 2
  store i16 2, ptr %26, align 4
  store ptr %16, ptr %29, align 4
  %39 = load ptr, ptr %19, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %17, i32 noundef 1) #9
  %41 = icmp eq i32 %40, 1
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  %46 = zext i8 %34 to i32
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %40, i32 noundef %32, i32 noundef %46) #10
  br label %48

48:                                               ; preds = %45, %30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  %49 = add nuw nsw i32 %31, 1
  %50 = load i8, ptr %20, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %30, label %53

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 119, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #9
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #9
  %54 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %54, i8 0, i32 16, i1 false) #9, !annotation !8
  %55 = getelementptr inbounds %struct.cx24110_state, ptr %19, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %15, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %59, align 2
  store i16 1, ptr %54, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %13, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %62 = load i8, ptr %56, align 1
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %14, ptr %66, align 4
  %67 = load ptr, ptr %19, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %15, i32 noundef 2) #9
  %69 = icmp eq i32 %68, 2
  %70 = load i8, ptr %14, align 1
  %71 = zext i8 %70 to i32
  %72 = select i1 %69, i32 %71, i32 %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  %73 = and i32 %72, 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %53
  %76 = and i32 %72, -5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  store i8 119, ptr %11, align 2
  %77 = getelementptr inbounds i8, ptr %11, i32 1
  %78 = trunc i32 %76 to i8
  store i8 %78, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %79 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %79, align 4, !annotation !8
  %80 = load ptr, ptr %55, align 4
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %12, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %83, align 2
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %84, align 4
  %85 = load ptr, ptr %19, align 4
  %86 = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %12, i32 noundef 1) #9
  %87 = icmp eq i32 %86, 1
  %88 = load i32, ptr @debug, align 4
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %93, label %91

91:                                               ; preds = %75
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %86, i32 noundef 119, i32 noundef %76) #10
  br label %93

93:                                               ; preds = %91, %75
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  call void @msleep(i32 noundef 30) #9
  br label %94

94:                                               ; preds = %93, %53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 118, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %95 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %95, i8 0, i32 16, i1 false) #9, !annotation !8
  %96 = load ptr, ptr %55, align 4
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %10, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %99, align 2
  store i16 1, ptr %95, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %100, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %102 = load i8, ptr %96, align 1
  %103 = zext i8 %102 to i16
  store i16 %103, ptr %101, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %104, align 2
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %105, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %106, align 4
  %107 = load ptr, ptr %19, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %10, i32 noundef 2) #9
  %109 = icmp eq i32 %108, 2
  %110 = load i8, ptr %9, align 1
  %111 = zext i8 %110 to i32
  %112 = select i1 %109, i32 %111, i32 %108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %113 = and i32 %112, 144
  %114 = load i8, ptr %20, align 1
  %115 = add i8 %114, 1
  %116 = and i8 %115, 3
  %117 = zext i8 %116 to i32
  %118 = or i32 %113, %117
  %119 = or i32 %118, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 118, ptr %6, align 2
  %120 = getelementptr inbounds i8, ptr %6, i32 1
  %121 = trunc i32 %119 to i8
  store i8 %121, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %122 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %122, align 4, !annotation !8
  %123 = load ptr, ptr %55, align 4
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i16
  store i16 %125, ptr %7, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %126, align 2
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %127, align 4
  %128 = load ptr, ptr %19, align 4
  %129 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %7, i32 noundef 1) #9
  %130 = icmp eq i32 %129, 1
  %131 = load i32, ptr @debug, align 4
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %130, i1 true, i1 %132
  br i1 %133, label %136, label %134

134:                                              ; preds = %94
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %129, i32 noundef 118, i32 noundef %119) #10
  br label %136

136:                                              ; preds = %134, %94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %137 = load volatile i32, ptr @jiffies, align 64
  %138 = add i32 %137, 10
  %139 = getelementptr inbounds i8, ptr %5, i32 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  br label %146

146:                                              ; preds = %150, %136
  %147 = load volatile i32, ptr @jiffies, align 64
  %148 = sub i32 %138, %147
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 118, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %139, i8 0, i32 16, i1 false) #9, !annotation !8
  %151 = load ptr, ptr %55, align 4
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i16
  store i16 %153, ptr %5, align 4
  store i16 0, ptr %140, align 2
  store i16 1, ptr %139, align 4
  store ptr %3, ptr %141, align 4
  %154 = load i8, ptr %151, align 1
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %142, align 4
  store i16 1, ptr %143, align 2
  store i16 1, ptr %144, align 4
  store ptr %4, ptr %145, align 4
  %156 = load ptr, ptr %19, align 4
  %157 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %5, i32 noundef 2) #9
  %158 = icmp eq i32 %157, 2
  %159 = load i8, ptr %4, align 1
  %160 = zext i8 %159 to i32
  %161 = select i1 %158, i32 %160, i32 %157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %162 = and i32 %161, 64
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %146, label %164

164:                                              ; preds = %150, %146, %2
  %165 = phi i32 [ -22, %2 ], [ 0, %146 ], [ 0, %150 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_diseqc_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
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
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  switch i32 %1, label %126 [
    i32 0, label %19
    i32 1, label %18
  ]

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %2
  %20 = phi i32 [ 72, %18 ], [ 64, %2 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 119, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #9
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #9
  %21 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %21, i8 0, i32 16, i1 false) #9, !annotation !8
  %22 = getelementptr inbounds %struct.cx24110_state, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %15, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %26, align 2
  store i16 1, ptr %21, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %13, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %29 = load i8, ptr %23, align 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %14, ptr %33, align 4
  %34 = load ptr, ptr %17, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %15, i32 noundef 2) #9
  %36 = icmp eq i32 %35, 2
  %37 = load i8, ptr %14, align 1
  %38 = zext i8 %37 to i32
  %39 = select i1 %36, i32 %38, i32 %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %19
  %43 = or i32 %39, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  store i8 119, ptr %11, align 2
  %44 = getelementptr inbounds i8, ptr %11, i32 1
  %45 = trunc i32 %43 to i8
  store i8 %45, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %46 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %46, align 4, !annotation !8
  %47 = load ptr, ptr %22, align 4
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %12, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %51, align 4
  %52 = load ptr, ptr %17, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %12, i32 noundef 1) #9
  %54 = icmp eq i32 %53, 1
  %55 = load i32, ptr @debug, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %42
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %53, i32 noundef 119, i32 noundef %43) #10
  br label %60

60:                                               ; preds = %58, %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  br label %61

61:                                               ; preds = %60, %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 118, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %62 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %62, i8 0, i32 16, i1 false) #9, !annotation !8
  %63 = load ptr, ptr %22, align 4
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %10, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %66, align 2
  store i16 1, ptr %62, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %67, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %69 = load i8, ptr %63, align 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %71, align 2
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %72, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %73, align 4
  %74 = load ptr, ptr %17, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %10, i32 noundef 2) #9
  %76 = icmp eq i32 %75, 2
  %77 = load i8, ptr %9, align 1
  %78 = zext i8 %77 to i32
  %79 = select i1 %76, i32 %78, i32 %75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %80 = and i32 %79, 144
  %81 = or i32 %20, %80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 118, ptr %6, align 2
  %82 = getelementptr inbounds i8, ptr %6, i32 1
  %83 = trunc i32 %81 to i8
  store i8 %83, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %84 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %84, align 4, !annotation !8
  %85 = load ptr, ptr %22, align 4
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %7, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %88, align 2
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %89, align 4
  %90 = load ptr, ptr %17, align 4
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %7, i32 noundef 1) #9
  %92 = icmp eq i32 %91, 1
  %93 = load i32, ptr @debug, align 4
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %92, i1 true, i1 %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %61
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %91, i32 noundef 118, i32 noundef %81) #10
  br label %98

98:                                               ; preds = %96, %61
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = add i32 %99, 10
  %101 = getelementptr inbounds i8, ptr %5, i32 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  br label %108

108:                                              ; preds = %112, %98
  %109 = load volatile i32, ptr @jiffies, align 64
  %110 = sub i32 %100, %109
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 118, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %101, i8 0, i32 16, i1 false) #9, !annotation !8
  %113 = load ptr, ptr %22, align 4
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %5, align 4
  store i16 0, ptr %102, align 2
  store i16 1, ptr %101, align 4
  store ptr %3, ptr %103, align 4
  %116 = load i8, ptr %113, align 1
  %117 = zext i8 %116 to i16
  store i16 %117, ptr %104, align 4
  store i16 1, ptr %105, align 2
  store i16 1, ptr %106, align 4
  store ptr %4, ptr %107, align 4
  %118 = load ptr, ptr %17, align 4
  %119 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %5, i32 noundef 2) #9
  %120 = icmp eq i32 %119, 2
  %121 = load i8, ptr %4, align 1
  %122 = zext i8 %121 to i32
  %123 = select i1 %120, i32 %122, i32 %119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %124 = and i32 %123, 64
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %108, label %126

126:                                              ; preds = %112, %108, %2
  %127 = phi i32 [ -22, %2 ], [ 0, %108 ], [ 0, %112 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 118, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %10 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #9, !annotation !8
  %11 = getelementptr inbounds %struct.cx24110_state, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %7, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 1, ptr %10, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %18 = load i8, ptr %12, align 1
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %22, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 2) #9
  %25 = icmp eq i32 %24, 2
  %26 = load i8, ptr %6, align 1
  %27 = zext i8 %26 to i32
  %28 = select i1 %25, i32 %27, i32 %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %29 = and i32 %28, -17
  %30 = icmp eq i32 %1, 0
  %31 = select i1 %30, i32 16, i32 0
  %32 = or i32 %29, %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 118, ptr %3, align 2
  %33 = getelementptr inbounds i8, ptr %3, i32 1
  %34 = trunc i32 %32 to i8
  store i8 %34, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %35 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %35, align 4, !annotation !8
  %36 = load ptr, ptr %11, align 4
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %4, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %40, align 4
  %41 = load ptr, ptr %9, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %4, i32 noundef 1) #9
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %49, label %44

44:                                               ; preds = %2
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %42, i32 noundef 118, i32 noundef %32) #10
  br label %49

49:                                               ; preds = %47, %44, %2
  %50 = phi i32 [ -121, %47 ], [ -121, %44 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24110_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
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
  switch i32 %1, label %95 [
    i32 0, label %15
    i32 1, label %55
  ]

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 118, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  %16 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %16, i8 0, i32 16, i1 false) #9, !annotation !8
  %17 = getelementptr inbounds %struct.cx24110_state, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %12, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 1, ptr %16, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %24 = load i8, ptr %18, align 1
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %28, align 4
  %29 = load ptr, ptr %14, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %12, i32 noundef 2) #9
  %31 = icmp eq i32 %30, 2
  %32 = load i8, ptr %11, align 1
  %33 = zext i8 %32 to i32
  %34 = select i1 %31, i32 %33, i32 %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  %35 = and i32 %34, 59
  %36 = or i32 %35, 192
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 118, ptr %8, align 2
  %37 = getelementptr inbounds i8, ptr %8, i32 1
  %38 = trunc i32 %36 to i8
  store i8 %38, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %39 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %39, align 4, !annotation !8
  %40 = load ptr, ptr %17, align 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %9, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %44, align 4
  %45 = load ptr, ptr %14, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %9, i32 noundef 1) #9
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %15
  %49 = load i32, ptr @debug, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %46, i32 noundef 118, i32 noundef %36) #10
  br label %53

53:                                               ; preds = %51, %48, %15
  %54 = phi i32 [ -121, %51 ], [ -121, %48 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  br label %95

55:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 118, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %56 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #9, !annotation !8
  %57 = getelementptr inbounds %struct.cx24110_state, ptr %14, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %7, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %61, align 2
  store i16 1, ptr %56, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %64 = load i8, ptr %58, align 1
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %66, align 2
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %68, align 4
  %69 = load ptr, ptr %14, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %7, i32 noundef 2) #9
  %71 = icmp eq i32 %70, 2
  %72 = load i8, ptr %6, align 1
  %73 = zext i8 %72 to i32
  %74 = select i1 %71, i32 %73, i32 %70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %75 = and i32 %74, 59
  %76 = or i32 %75, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 118, ptr %3, align 2
  %77 = getelementptr inbounds i8, ptr %3, i32 1
  %78 = trunc i32 %76 to i8
  store i8 %78, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %79 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %79, align 4, !annotation !8
  %80 = load ptr, ptr %57, align 4
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %4, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %83, align 2
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %84, align 4
  %85 = load ptr, ptr %14, align 4
  %86 = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %4, i32 noundef 1) #9
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %93, label %88

88:                                               ; preds = %55
  %89 = load i32, ptr @debug, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx24110_writereg, i32 noundef %86, i32 noundef 118, i32 noundef %76) #10
  br label %93

93:                                               ; preds = %91, %88, %55
  %94 = phi i32 [ -121, %91 ], [ -121, %88 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %95

95:                                               ; preds = %93, %53, %2
  %96 = phi i32 [ %94, %93 ], [ %54, %53 ], [ -22, %2 ]
  ret i32 %96
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
