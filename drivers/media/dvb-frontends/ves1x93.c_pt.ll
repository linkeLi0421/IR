; ModuleID = '/llk/IR/drivers/media/dvb-frontends/ves1x93.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ves1x93.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ves1x93_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ves1x93_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ves1x93_attach:\09\09\09\09\09"
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
%struct.ves1x93_state = type { ptr, ptr, %struct.dvb_frontend, i32, ptr, ptr, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.ves1x93_config = type { i8, i32, i8 }

@.str = private unnamed_addr constant [33 x i8] c"ves1x93: Detected ves1893a rev1\0A\00", align 1
@init_1893_tab = internal global [54 x i8] c"\01\A45\80*\0BU\C4\09i\00\86L(\7F\00\00\81\00\00\00\00\00\00\80\00!\B0\14\00\DC\00\81\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00U\00\00\7F\00", align 1
@init_1893_wtab = internal global [54 x i8] c"\01\01\01\01\01\01\01\01\01\01\00\00\01\01\00\00\00\01\00\00\00\00\00\00\01\00\01\01\00\00\00\01\01\01\01\00\00\00\00\00\00\00\01\01\00\00\00\00\01\01\01\00\01\01", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ves1x93: Detected ves1893a rev2\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ves1x93: Detected ves1993\0A\00", align 1
@init_1993_tab = internal global [61 x i8] c"\00\9C5\80j\09r\8C\09k\00\00L\08\00\00\00\81\00\00\00\00\00\00\80@!\B0\00\00\00\10\81\80\00\00\00\00\00\00\00\00\80\80\00\00\00\00\00U\03\00\00\00\00\03\00\00\0E\80\00", align 1
@init_1993_wtab = internal global [61 x i8] c"\01\01\01\01\01\01\01\01\01\01\00\00\01\01\00\00\00\01\00\00\00\00\00\00\01\01\01\01\00\00\00\01\01\01\01\00\00\00\00\00\00\00\01\01\00\00\00\00\01\01\01\00\01\01\01\01\01\01\01\01\01", align 1
@ves1x93_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"VLSI VES1x93 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 29500000, i32 1000000, i32 45000000, i32 0, i32 1711 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @ves1x93_release, ptr null, ptr @ves1x93_init, ptr @ves1x93_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ves1x93_set_frontend, ptr null, ptr @ves1x93_get_frontend, ptr @ves1x93_read_status, ptr @ves1x93_read_ber, ptr @ves1x93_read_signal_strength, ptr @ves1x93_read_snr, ptr @ves1x93_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ves1x93_set_voltage, ptr null, ptr null, ptr @ves1x93_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [50 x i8] c"description=VLSI VES1x93 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [21 x i8] c"author=Ralph Metzler\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_ves1x93_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ves1x93_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ves1x93_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ves1x93_attach to i32), ptr @__kstrtab_ves1x93_attach, ptr @__kstrtabns_ves1x93_attach }, section "___ksymtab+ves1x93_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: init chip\0A\00", align 1
@__func__.ves1x93_init = private unnamed_addr constant [13 x i8] c"ves1x93_init\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"%s: writereg error (err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.ves1x93_writereg = private unnamed_addr constant [17 x i8] c"ves1x93_writereg\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s: srate == %d\0A\00", align 1
@__func__.ves1x93_set_symbolrate = private unnamed_addr constant [23 x i8] c"ves1x93_set_symbolrate\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"FNR= %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"ratio= %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"BDR= %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"BDRI= %02x\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license252, ptr @__ksymtab_ves1x93_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.ves1x93_attach = private unnamed_addr constant [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 4
@switch.table.ves1x93_attach.10 = private unnamed_addr constant [3 x ptr] [ptr @init_1893_tab, ptr @init_1893_tab, ptr @init_1993_tab], align 4
@switch.table.ves1x93_attach.11 = private unnamed_addr constant [3 x ptr] [ptr @init_1893_wtab, ptr @init_1893_wtab, ptr @init_1993_wtab], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ves1x93_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1068) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  %11 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 3
  store i32 0, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 7680, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #9, !annotation !8
  %13 = load i8, ptr %0, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %5, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 2, ptr %12, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #9
  %22 = icmp eq i32 %21, 2
  %23 = trunc i32 %21 to i8
  %24 = load i8, ptr %4, align 1
  %25 = select i1 %22, i8 %24, i8 %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %26 = add i8 %25, 36
  %27 = icmp ult i8 %26, 3
  br i1 %27, label %28, label %54

28:                                               ; preds = %9
  %29 = sext i8 %26 to i32
  %30 = getelementptr inbounds [3 x ptr], ptr @switch.table.ves1x93_attach, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = zext i8 %26 to i24
  %33 = shl nuw nsw i24 %32, 3
  %34 = lshr i24 65536, %33
  %35 = trunc i24 %34 to i8
  %36 = sext i8 %26 to i32
  %37 = getelementptr inbounds [3 x ptr], ptr @switch.table.ves1x93_attach.10, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = sext i8 %26 to i32
  %40 = getelementptr inbounds [3 x ptr], ptr @switch.table.ves1x93_attach.11, i32 0, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = zext i8 %26 to i24
  %43 = shl nuw nsw i24 %42, 3
  %44 = lshr i24 4011574, %43
  %45 = trunc i24 %44 to i8
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %31) #10
  %47 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 7
  store i8 %35, ptr %47, align 1
  %48 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 4
  store ptr %38, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 5
  store ptr %41, ptr %49, align 8
  %50 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 6
  store i8 %45, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 2
  %52 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %52, ptr noundef nonnull align 4 dereferenceable(544) @ves1x93_ops, i32 544, i1 false)
  %53 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %53, align 8
  br label %55

54:                                               ; preds = %9, %2
  call void @kfree(ptr noundef %7) #9
  br label %55

55:                                               ; preds = %54, %28
  %56 = phi ptr [ null, %54 ], [ %51, %28 ]
  ret ptr %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ves1x93_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ves1x93_init) #10
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.ves1x93_state, ptr %5, i32 0, i32 6
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %63, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ves1x93_state, ptr %5, i32 0, i32 5
  %16 = getelementptr inbounds %struct.ves1x93_state, ptr %5, i32 0, i32 4
  %17 = getelementptr inbounds %struct.ves1x93_state, ptr %5, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %2, i32 1
  %19 = getelementptr inbounds i8, ptr %2, i32 2
  %20 = getelementptr inbounds i8, ptr %3, i32 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %23

23:                                               ; preds = %58, %14
  %24 = phi i8 [ %12, %14 ], [ %59, %58 ]
  %25 = phi i32 [ 0, %14 ], [ %60, %58 ]
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr i8, ptr %31, i32 %25
  %33 = load i8, ptr %32, align 1
  %34 = load ptr, ptr %17, align 4
  %35 = getelementptr inbounds %struct.ves1x93_config, ptr %34, i32 0, i32 2
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 1
  %38 = icmp ne i8 %37, 0
  %39 = icmp eq i32 %25, 5
  %40 = select i1 %38, i1 %39, i1 false
  %41 = or i8 %33, 32
  %42 = select i1 %40, i8 %41, i8 %33
  %43 = trunc i32 %25 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  store i8 0, ptr %2, align 1
  store i8 %43, ptr %18, align 1
  store i8 %42, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i32 0, ptr %20, align 4, !annotation !8
  %44 = load ptr, ptr %17, align 4
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %3, align 4
  store i16 0, ptr %21, align 2
  store i16 3, ptr %20, align 4
  store ptr %2, ptr %22, align 4
  %47 = load ptr, ptr %5, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %3, i32 noundef 1) #9
  %49 = icmp eq i32 %48, 1
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %30
  %54 = zext i8 %42 to i32
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %48, i32 noundef %25, i32 noundef %54) #10
  br label %56

56:                                               ; preds = %53, %30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  %57 = load i8, ptr %11, align 4
  br label %58

58:                                               ; preds = %56, %23
  %59 = phi i8 [ %24, %23 ], [ %57, %56 ]
  %60 = add nuw nsw i32 %25, 1
  %61 = zext i8 %59 to i32
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %23, label %63

63:                                               ; preds = %58, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  %6 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %2, align 1
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %8 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %8, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.ves1x93_state, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %14, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #9
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %16, i32 noundef 0, i32 noundef 8) #10
  br label %23

23:                                               ; preds = %21, %18, %1
  %24 = phi i32 [ -121, %21 ], [ -121, %18 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [3 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [3 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [3 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [3 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [3 x i8], align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %1
  %32 = tail call i32 %29(ptr noundef %0) #9
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = tail call i32 %34(ptr noundef %0, i32 noundef 0) #9
  br label %38

38:                                               ; preds = %36, %31, %1
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = trunc i32 %40 to i24
  %44 = shl i24 %43, 3
  %45 = lshr i24 32960, %44
  %46 = trunc i24 %45 to i8
  %47 = getelementptr inbounds %struct.ves1x93_state, ptr %27, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 12
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 63
  %52 = or i8 %51, %46
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %24) #9
  %53 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 0, ptr %24, align 1
  store i8 12, ptr %53, align 1
  %54 = getelementptr inbounds i8, ptr %24, i32 2
  store i8 %52, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  %55 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 3, ptr %55, align 4, !annotation !8
  %56 = getelementptr inbounds %struct.ves1x93_state, ptr %27, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %25, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %61, align 4
  %62 = load ptr, ptr %27, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %25, i32 noundef 1) #9
  %64 = icmp eq i32 %63, 1
  %65 = load i32, ptr @debug, align 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %42
  %69 = zext i8 %52 to i32
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %63, i32 noundef 12, i32 noundef %69) #10
  br label %71

71:                                               ; preds = %68, %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %24) #9
  br label %72

72:                                               ; preds = %71, %38
  %73 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 9
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %22) #9
  %77 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 0, ptr %22, align 1
  store i8 13, ptr %77, align 1
  %78 = getelementptr inbounds i8, ptr %22, i32 2
  store i8 8, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %79 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 3, ptr %79, align 4, !annotation !8
  %80 = getelementptr inbounds %struct.ves1x93_state, ptr %27, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load i8, ptr %81, align 4
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %23, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %85, align 4
  %86 = load ptr, ptr %27, align 4
  %87 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %23, i32 noundef 1) #9
  %88 = icmp eq i32 %87, 1
  %89 = load i32, ptr @debug, align 4
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %88, i1 true, i1 %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %76
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %87, i32 noundef 13, i32 noundef 8) #10
  br label %94

94:                                               ; preds = %92, %76
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %22) #9
  br label %120

95:                                               ; preds = %72
  %96 = add i32 %74, -9
  %97 = icmp ult i32 %96, -8
  br i1 %97, label %120, label %98

98:                                               ; preds = %95
  %99 = trunc i32 %74 to i8
  %100 = add nsw i8 %99, -1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %20) #9
  %101 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 0, ptr %20, align 1
  store i8 13, ptr %101, align 1
  %102 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 %100, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %103 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 3, ptr %103, align 4, !annotation !8
  %104 = getelementptr inbounds %struct.ves1x93_state, ptr %27, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load i8, ptr %105, align 4
  %107 = zext i8 %106 to i16
  store i16 %107, ptr %21, align 4
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %108, align 2
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %109, align 4
  %110 = load ptr, ptr %27, align 4
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %21, i32 noundef 1) #9
  %112 = icmp eq i32 %111, 1
  %113 = load i32, ptr @debug, align 4
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %98
  %117 = zext i8 %100 to i32
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %111, i32 noundef 13, i32 noundef %117) #10
  br label %119

119:                                              ; preds = %116, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %20) #9
  br label %120

120:                                              ; preds = %119, %95, %94
  %121 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %122 = load i32, ptr %121, align 4
  %123 = load i32, ptr @debug, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ves1x93_set_symbolrate, i32 noundef %122) #10
  %127 = load i32, ptr @debug, align 4
  %128 = icmp eq i32 %127, 0
  br label %129

129:                                              ; preds = %125, %120
  %130 = phi i1 [ %128, %125 ], [ true, %120 ]
  %131 = getelementptr inbounds %struct.ves1x93_state, ptr %27, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.ves1x93_config, ptr %132, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = lshr i32 %134, 1
  %136 = call i32 @llvm.umin.i32(i32 %135, i32 %122) #9
  %137 = call i32 @llvm.umax.i32(i32 %136, i32 500000) #9
  %138 = add i32 %134, 6000
  %139 = lshr i32 %138, 4
  %140 = shl i32 %137, 6
  %141 = freeze i32 %140
  %142 = freeze i32 %139
  %143 = udiv i32 %141, %142
  %144 = mul i32 %143, %142
  %145 = sub i32 %141, %144
  %146 = shl i32 %145, 8
  %147 = shl i32 %143, 8
  %148 = freeze i32 %139
  %149 = udiv i32 %146, %148
  %150 = add i32 %149, %147
  %151 = mul i32 %149, %148
  %152 = sub i32 %146, %151
  %153 = shl i32 %152, 8
  %154 = shl i32 %150, 8
  %155 = udiv i32 %153, %139
  %156 = add i32 %154, %155
  %157 = icmp ugt i32 %156, 22369620
  %158 = sext i1 %157 to i8
  %159 = icmp ult i32 %156, 14763950
  %160 = select i1 %159, i8 1, i8 %158
  %161 = icmp ult i32 %156, 11184810
  %162 = select i1 %161, i8 2, i8 %160
  %163 = icmp ult i32 %156, 7456540
  %164 = select i1 %163, i8 3, i8 %162
  %165 = icmp ult i32 %156, 5592405
  %166 = select i1 %165, i8 4, i8 %164
  %167 = icmp ult i32 %156, 3690987
  %168 = select i1 %167, i8 5, i8 %166
  %169 = icmp ult i32 %156, 2796202
  %170 = select i1 %169, i8 6, i8 %168
  %171 = icmp ult i32 %156, 1811939
  %172 = select i1 %171, i8 7, i8 %170
  %173 = icmp ult i32 %156, 1398101
  %174 = select i1 %173, i8 8, i8 %172
  %175 = icmp ult i32 %156, 60397
  %176 = select i1 %175, i8 9, i8 %174
  %177 = icmp eq i8 %176, -1
  %178 = lshr i8 %176, 1
  %179 = shl i8 %176, 5
  %180 = and i8 %179, 32
  %181 = or i8 %178, %180
  %182 = or i8 %181, -120
  %183 = select i1 %177, i8 0, i8 %176
  %184 = zext i8 %183 to i32
  %185 = select i1 %177, i8 -128, i8 %182
  %186 = select i1 %177, i8 -119, i8 -127
  %187 = lshr i32 %184, 1
  %188 = shl i32 %156, %187
  %189 = lshr i32 %188, 4
  %190 = add nuw nsw i32 %189, 1
  %191 = lshr i32 %190, 1
  %192 = shl i32 %139, 8
  %193 = shl i32 %137, %187
  %194 = lshr i32 %193, 2
  %195 = udiv i32 %192, %194
  %196 = add nuw i32 %195, 1
  %197 = lshr i32 %196, 1
  br i1 %130, label %212, label %198

198:                                              ; preds = %129
  %199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %184) #10
  %200 = load i32, ptr @debug, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %198
  %203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %156) #10
  %204 = load i32, ptr @debug, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %202
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %191) #10
  %208 = load i32, ptr @debug, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %206
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %197) #10
  br label %212

212:                                              ; preds = %210, %206, %202, %198, %129
  %213 = call i32 @llvm.umin.i32(i32 %197, i32 255) #9
  %214 = trunc i32 %191 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %18) #9
  %215 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 0, ptr %18, align 1
  store i8 6, ptr %215, align 1
  %216 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 %214, ptr %216, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %217 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 3, ptr %217, align 4, !annotation !8
  %218 = load ptr, ptr %131, align 4
  %219 = load i8, ptr %218, align 4
  %220 = zext i8 %219 to i16
  store i16 %220, ptr %19, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %221, align 2
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %222, align 4
  %223 = load ptr, ptr %27, align 4
  %224 = call i32 @i2c_transfer(ptr noundef %223, ptr noundef nonnull %19, i32 noundef 1) #9
  %225 = icmp eq i32 %224, 1
  %226 = load i32, ptr @debug, align 4
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %225, i1 true, i1 %227
  br i1 %228, label %232, label %229

229:                                              ; preds = %212
  %230 = and i32 %191, 255
  %231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %224, i32 noundef 6, i32 noundef %230) #10
  br label %232

232:                                              ; preds = %229, %212
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #9
  %233 = lshr i32 %190, 9
  %234 = trunc i32 %233 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #9
  %235 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 0, ptr %16, align 1
  store i8 7, ptr %235, align 1
  %236 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 %234, ptr %236, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %237 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %237, align 4, !annotation !8
  %238 = load ptr, ptr %131, align 4
  %239 = load i8, ptr %238, align 4
  %240 = zext i8 %239 to i16
  store i16 %240, ptr %17, align 4
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %241, align 2
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %242, align 4
  %243 = load ptr, ptr %27, align 4
  %244 = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %17, i32 noundef 1) #9
  %245 = icmp eq i32 %244, 1
  %246 = load i32, ptr @debug, align 4
  %247 = icmp eq i32 %246, 0
  %248 = select i1 %245, i1 true, i1 %247
  br i1 %248, label %252, label %249

249:                                              ; preds = %232
  %250 = and i32 %233, 255
  %251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %244, i32 noundef 7, i32 noundef %250) #10
  br label %252

252:                                              ; preds = %249, %232
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #9
  %253 = lshr i32 %190, 17
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #9
  %256 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 0, ptr %14, align 1
  store i8 8, ptr %256, align 1
  %257 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 %255, ptr %257, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %258 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %258, align 4, !annotation !8
  %259 = load ptr, ptr %131, align 4
  %260 = load i8, ptr %259, align 4
  %261 = zext i8 %260 to i16
  store i16 %261, ptr %15, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %262, align 2
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %263, align 4
  %264 = load ptr, ptr %27, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %15, i32 noundef 1) #9
  %266 = icmp eq i32 %265, 1
  %267 = load i32, ptr @debug, align 4
  %268 = icmp eq i32 %267, 0
  %269 = select i1 %266, i1 true, i1 %268
  br i1 %269, label %273, label %270

270:                                              ; preds = %252
  %271 = zext i8 %255 to i32
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %265, i32 noundef 8, i32 noundef %271) #10
  br label %273

273:                                              ; preds = %270, %252
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #9
  %274 = trunc i32 %213 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #9
  %275 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 0, ptr %12, align 1
  store i8 9, ptr %275, align 1
  %276 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 %274, ptr %276, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %277 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %277, align 4, !annotation !8
  %278 = load ptr, ptr %131, align 4
  %279 = load i8, ptr %278, align 4
  %280 = zext i8 %279 to i16
  store i16 %280, ptr %13, align 4
  %281 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %281, align 2
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %282, align 4
  %283 = load ptr, ptr %27, align 4
  %284 = call i32 @i2c_transfer(ptr noundef %283, ptr noundef nonnull %13, i32 noundef 1) #9
  %285 = icmp eq i32 %284, 1
  %286 = load i32, ptr @debug, align 4
  %287 = icmp eq i32 %286, 0
  %288 = select i1 %285, i1 true, i1 %287
  br i1 %288, label %291, label %289

289:                                              ; preds = %273
  %290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %284, i32 noundef 9, i32 noundef %213) #10
  br label %291

291:                                              ; preds = %289, %273
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #9
  %292 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 0, ptr %10, align 1
  store i8 32, ptr %292, align 1
  %293 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 %186, ptr %293, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %294 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %294, align 4, !annotation !8
  %295 = load ptr, ptr %131, align 4
  %296 = load i8, ptr %295, align 4
  %297 = zext i8 %296 to i16
  store i16 %297, ptr %11, align 4
  %298 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %298, align 2
  %299 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %299, align 4
  %300 = load ptr, ptr %27, align 4
  %301 = call i32 @i2c_transfer(ptr noundef %300, ptr noundef nonnull %11, i32 noundef 1) #9
  %302 = icmp eq i32 %301, 1
  %303 = load i32, ptr @debug, align 4
  %304 = icmp eq i32 %303, 0
  %305 = select i1 %302, i1 true, i1 %304
  br i1 %305, label %309, label %306

306:                                              ; preds = %291
  %307 = zext i8 %186 to i32
  %308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %301, i32 noundef 32, i32 noundef %307) #10
  br label %309

309:                                              ; preds = %306, %291
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #9
  %310 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 0, ptr %8, align 1
  store i8 33, ptr %310, align 1
  %311 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 %185, ptr %311, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %312 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %312, align 4, !annotation !8
  %313 = load ptr, ptr %131, align 4
  %314 = load i8, ptr %313, align 4
  %315 = zext i8 %314 to i16
  store i16 %315, ptr %9, align 4
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %316, align 2
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %317, align 4
  %318 = load ptr, ptr %27, align 4
  %319 = call i32 @i2c_transfer(ptr noundef %318, ptr noundef nonnull %9, i32 noundef 1) #9
  %320 = icmp eq i32 %319, 1
  %321 = load i32, ptr @debug, align 4
  %322 = icmp eq i32 %321, 0
  %323 = select i1 %320, i1 true, i1 %322
  br i1 %323, label %327, label %324

324:                                              ; preds = %309
  %325 = zext i8 %185 to i32
  %326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %319, i32 noundef 33, i32 noundef %325) #10
  br label %327

327:                                              ; preds = %324, %309
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #9
  %328 = getelementptr inbounds %struct.ves1x93_state, ptr %27, i32 0, i32 4
  %329 = load ptr, ptr %328, align 4
  %330 = getelementptr i8, ptr %329, i32 5
  %331 = load i8, ptr %330, align 1
  %332 = load ptr, ptr %131, align 4
  %333 = getelementptr inbounds %struct.ves1x93_config, ptr %332, i32 0, i32 2
  %334 = load i8, ptr %333, align 4
  %335 = shl i8 %334, 5
  %336 = and i8 %335, 32
  %337 = icmp ult i32 %137, 6000000
  %338 = and i8 %331, 127
  %339 = select i1 %337, i8 -128, i8 0
  %340 = or i8 %338, %339
  %341 = or i8 %340, %336
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  %342 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %6, align 1
  store i8 5, ptr %342, align 1
  %343 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %341, ptr %343, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %344 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %344, align 4, !annotation !8
  %345 = load i8, ptr %332, align 4
  %346 = zext i8 %345 to i16
  store i16 %346, ptr %7, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %347, align 2
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %348, align 4
  %349 = load ptr, ptr %27, align 4
  %350 = call i32 @i2c_transfer(ptr noundef %349, ptr noundef nonnull %7, i32 noundef 1) #9
  %351 = icmp eq i32 %350, 1
  %352 = load i32, ptr @debug, align 4
  %353 = icmp eq i32 %352, 0
  %354 = select i1 %351, i1 true, i1 %353
  br i1 %354, label %358, label %355

355:                                              ; preds = %327
  %356 = zext i8 %341 to i32
  %357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %350, i32 noundef 5, i32 noundef %356) #10
  br label %358

358:                                              ; preds = %355, %327
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  %359 = getelementptr inbounds %struct.ves1x93_state, ptr %27, i32 0, i32 7
  %360 = load i8, ptr %359, align 1
  %361 = icmp eq i8 %360, 1
  br i1 %361, label %404, label %362

362:                                              ; preds = %358
  call void @msleep(i32 noundef 10) #9
  %363 = load ptr, ptr %328, align 4
  %364 = load i8, ptr %363, align 1
  %365 = and i8 %364, -2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  %366 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %4, align 1
  store i8 0, ptr %366, align 1
  %367 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %365, ptr %367, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %368 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %368, align 4, !annotation !8
  %369 = load ptr, ptr %131, align 4
  %370 = load i8, ptr %369, align 4
  %371 = zext i8 %370 to i16
  store i16 %371, ptr %5, align 4
  %372 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %372, align 2
  %373 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %373, align 4
  %374 = load ptr, ptr %27, align 4
  %375 = call i32 @i2c_transfer(ptr noundef %374, ptr noundef nonnull %5, i32 noundef 1) #9
  %376 = icmp eq i32 %375, 1
  %377 = load i32, ptr @debug, align 4
  %378 = icmp eq i32 %377, 0
  %379 = select i1 %376, i1 true, i1 %378
  br i1 %379, label %383, label %380

380:                                              ; preds = %362
  %381 = zext i8 %365 to i32
  %382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %375, i32 noundef 0, i32 noundef %381) #10
  br label %383

383:                                              ; preds = %380, %362
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  %384 = load ptr, ptr %328, align 4
  %385 = load i8, ptr %384, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  %386 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %2, align 1
  store i8 0, ptr %386, align 1
  %387 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %385, ptr %387, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %388 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %388, align 4, !annotation !8
  %389 = load ptr, ptr %131, align 4
  %390 = load i8, ptr %389, align 4
  %391 = zext i8 %390 to i16
  store i16 %391, ptr %3, align 4
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %392, align 2
  %393 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %393, align 4
  %394 = load ptr, ptr %27, align 4
  %395 = call i32 @i2c_transfer(ptr noundef %394, ptr noundef nonnull %3, i32 noundef 1) #9
  %396 = icmp eq i32 %395, 1
  %397 = load i32, ptr @debug, align 4
  %398 = icmp eq i32 %397, 0
  %399 = select i1 %396, i1 true, i1 %398
  br i1 %399, label %403, label %400

400:                                              ; preds = %383
  %401 = zext i8 %385 to i32
  %402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %395, i32 noundef 0, i32 noundef %401) #10
  br label %403

403:                                              ; preds = %400, %383
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  call void @msleep(i32 noundef 50) #9
  br label %404

404:                                              ; preds = %403, %358
  %405 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %406 = load i32, ptr %39, align 4
  %407 = getelementptr inbounds %struct.ves1x93_state, ptr %27, i32 0, i32 3
  store i32 %406, ptr %407, align 4
  %408 = load i32, ptr %405, align 4
  %409 = getelementptr inbounds %struct.ves1x93_state, ptr %27, i32 0, i32 8
  store i32 %408, ptr %409, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i16 2560, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #9, !annotation !8
  %15 = getelementptr inbounds %struct.ves1x93_state, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %11, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 2, ptr %14, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %22 = load i8, ptr %16, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %26, align 4
  %27 = load ptr, ptr %13, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %11, i32 noundef 2) #9
  %29 = icmp eq i32 %28, 2
  %30 = trunc i32 %28 to i8
  %31 = load i8, ptr %10, align 1
  %32 = select i1 %29, i8 %31, i8 %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  %33 = and i8 %32, 127
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = udiv i32 %36, 8000
  %38 = mul nuw nsw i32 %37, %34
  %39 = lshr i32 %38, 4
  %40 = getelementptr inbounds %struct.ves1x93_state, ptr %13, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %41, %39
  store i32 %42, ptr %1, align 4
  %43 = getelementptr inbounds %struct.ves1x93_state, ptr %13, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %70

46:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 3840, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %47 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %47, i8 0, i32 16, i1 false) #9, !annotation !8
  %48 = load ptr, ptr %15, align 4
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %8, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %51, align 2
  store i16 2, ptr %47, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %54 = load i8, ptr %48, align 4
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %58, align 4
  %59 = load ptr, ptr %13, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %8, i32 noundef 2) #9
  %61 = icmp eq i32 %60, 2
  %62 = trunc i32 %60 to i8
  %63 = load i8, ptr %7, align 1
  %64 = select i1 %61, i8 %63, i8 %62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %65 = lshr i8 %64, 1
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %46, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 3328, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %71 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %71, i8 0, i32 16, i1 false) #9, !annotation !8
  %72 = load ptr, ptr %15, align 4
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %5, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %75, align 2
  store i16 2, ptr %71, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %78 = load i8, ptr %72, align 4
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %80, align 2
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %82, align 4
  %83 = load ptr, ptr %13, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %5, i32 noundef 2) #9
  %85 = icmp eq i32 %84, 2
  %86 = trunc i32 %84 to i8
  %87 = load i8, ptr %4, align 1
  %88 = select i1 %85, i8 %87, i8 %86
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %89 = lshr i8 %88, 4
  %90 = and i8 %89, 7
  %91 = add nuw nsw i8 %90, 1
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %92, ptr %93, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 3584, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.ves1x93_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 2, ptr %11, align 4
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
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #9
  %26 = icmp eq i32 %25, 2
  %27 = trunc i32 %25 to i8
  %28 = load i8, ptr %7, align 1
  %29 = select i1 %26, i8 %28, i8 %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 3
  %33 = and i32 %30, 12
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %32, %34
  br i1 %35, label %66, label %36

36:                                               ; preds = %2
  %37 = getelementptr inbounds i8, ptr %5, i32 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  br label %44

44:                                               ; preds = %44, %36
  %45 = phi i32 [ 10, %36 ], [ %46, %44 ]
  %46 = add nsw i32 %45, -1
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 3584, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %37, i8 0, i32 16, i1 false) #9, !annotation !8
  %47 = load ptr, ptr %12, align 4
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %5, align 4
  store i16 0, ptr %38, align 2
  store i16 2, ptr %37, align 4
  store ptr %3, ptr %39, align 4
  %50 = load i8, ptr %47, align 4
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %40, align 4
  store i16 1, ptr %41, align 2
  store i16 1, ptr %42, align 4
  store ptr %4, ptr %43, align 4
  %52 = load ptr, ptr %10, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %5, i32 noundef 2) #9
  %54 = icmp eq i32 %53, 2
  %55 = trunc i32 %53 to i8
  %56 = load i8, ptr %4, align 1
  %57 = select i1 %54, i8 %56, i8 %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 3
  %60 = icmp eq i32 %59, 3
  %61 = and i32 %58, 12
  %62 = icmp eq i32 %61, 0
  %63 = or i1 %60, %62
  %64 = icmp eq i32 %46, 0
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %44

66:                                               ; preds = %44, %2
  %67 = phi i32 [ %31, %2 ], [ %59, %44 ]
  %68 = phi i32 [ %30, %2 ], [ %58, %44 ]
  %69 = and i32 %68, 4
  %70 = or i32 %69, %67
  %71 = and i32 %68, 8
  %72 = or i32 %71, %70
  %73 = and i32 %68, 31
  %74 = icmp eq i32 %73, 31
  %75 = or i32 %72, 16
  %76 = select i1 %74, i32 %75, i32 %72
  store i32 %76, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i16 5376, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #9, !annotation !8
  %15 = getelementptr inbounds %struct.ves1x93_state, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %11, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 2, ptr %14, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %22 = load i8, ptr %16, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %26, align 4
  %27 = load ptr, ptr %13, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %11, i32 noundef 2) #9
  %29 = icmp eq i32 %28, 2
  %30 = trunc i32 %28 to i8
  %31 = load i8, ptr %10, align 1
  %32 = select i1 %29, i8 %31, i8 %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  %33 = zext i8 %32 to i32
  store i32 %33, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 5632, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %34 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #9, !annotation !8
  %35 = load ptr, ptr %15, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %8, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %38, align 2
  store i16 2, ptr %34, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %41 = load i8, ptr %35, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %45, align 4
  %46 = load ptr, ptr %13, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %8, i32 noundef 2) #9
  %48 = icmp eq i32 %47, 2
  %49 = trunc i32 %47 to i8
  %50 = load i8, ptr %7, align 1
  %51 = select i1 %48, i8 %50, i8 %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = load i32, ptr %1, align 4
  %55 = or i32 %54, %53
  store i32 %55, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 5888, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %56 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #9, !annotation !8
  %57 = load ptr, ptr %15, align 4
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %5, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %60, align 2
  store i16 2, ptr %56, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %63 = load i8, ptr %57, align 4
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %67, align 4
  %68 = load ptr, ptr %13, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %5, i32 noundef 2) #9
  %70 = icmp eq i32 %69, 2
  %71 = trunc i32 %69 to i8
  %72 = load i8, ptr %4, align 1
  %73 = select i1 %70, i8 %72, i8 %71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %74 = and i8 %73, 15
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 16
  %77 = load i32, ptr %1, align 4
  %78 = or i32 %77, %76
  %79 = mul i32 %78, 10
  store i32 %79, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 2816, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 2, ptr %8, align 4
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
  %24 = trunc i32 %22 to i8
  %25 = load i8, ptr %4, align 1
  %26 = select i1 %23, i8 %25, i8 %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %27 = xor i8 %26, -1
  %28 = zext i8 %27 to i16
  %29 = mul nuw i16 %28, 257
  store i16 %29, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 7168, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.ves1x93_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 2, ptr %8, align 4
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
  %24 = trunc i32 %22 to i8
  %25 = load i8, ptr %4, align 1
  %26 = select i1 %23, i8 %25, i8 %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %27 = xor i8 %26, -1
  %28 = zext i8 %27 to i16
  %29 = mul nuw i16 %28, 257
  store i16 %29, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i16 6144, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  %12 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #9, !annotation !8
  %13 = getelementptr inbounds %struct.ves1x93_state, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %9, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 2, ptr %12, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %20 = load i8, ptr %14, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %24, align 4
  %25 = load ptr, ptr %11, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %9, i32 noundef 2) #9
  %27 = icmp eq i32 %26, 2
  %28 = trunc i32 %26 to i8
  %29 = load i8, ptr %8, align 1
  %30 = select i1 %27, i8 %29, i8 %28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  %31 = and i8 %30, 127
  %32 = zext i8 %31 to i32
  %33 = icmp eq i8 %31, 127
  %34 = select i1 %33, i32 -1, i32 %32
  store i32 %34, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  %35 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %5, align 1
  store i8 24, ptr %35, align 1
  %36 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %37 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %37, align 4, !annotation !8
  %38 = load ptr, ptr %13, align 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %6, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %42, align 4
  %43 = load ptr, ptr %11, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %6, i32 noundef 1) #9
  %45 = icmp eq i32 %44, 1
  %46 = load i32, ptr @debug, align 4
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %2
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %44, i32 noundef 24, i32 noundef 0) #10
  br label %51

51:                                               ; preds = %49, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  %52 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %3, align 1
  store i8 24, ptr %52, align 1
  %53 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 -128, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %54 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %54, align 4, !annotation !8
  %55 = load ptr, ptr %13, align 4
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %4, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %59, align 4
  %60 = load ptr, ptr %11, align 4
  %61 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %4, i32 noundef 1) #9
  %62 = icmp eq i32 %61, 1
  %63 = load i32, ptr @debug, align 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %68, label %66

66:                                               ; preds = %51
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %61, i32 noundef 24, i32 noundef 128) #10
  br label %68

68:                                               ; preds = %66, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  switch i32 %1, label %71 [
    i32 0, label %11
    i32 1, label %31
    i32 2, label %51
  ]

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #9
  %12 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 0, ptr %7, align 1
  store i8 31, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 32, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %14 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.ves1x93_state, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %8, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %20, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %8, i32 noundef 1) #9
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %29, label %24

24:                                               ; preds = %11
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %22, i32 noundef 31, i32 noundef 32) #10
  br label %29

29:                                               ; preds = %27, %24, %11
  %30 = phi i32 [ -121, %27 ], [ -121, %24 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #9
  br label %71

31:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  %32 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %5, align 1
  store i8 31, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 48, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %34 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %34, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.ves1x93_state, ptr %10, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %6, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %40, align 4
  %41 = load ptr, ptr %10, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %6, i32 noundef 1) #9
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %49, label %44

44:                                               ; preds = %31
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %42, i32 noundef 31, i32 noundef 48) #10
  br label %49

49:                                               ; preds = %47, %44, %31
  %50 = phi i32 [ -121, %47 ], [ -121, %44 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  br label %71

51:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  %52 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %3, align 1
  store i8 31, ptr %52, align 1
  %53 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %54 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %54, align 4, !annotation !8
  %55 = getelementptr inbounds %struct.ves1x93_state, ptr %10, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %4, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %60, align 4
  %61 = load ptr, ptr %10, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %4, i32 noundef 1) #9
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %69, label %64

64:                                               ; preds = %51
  %65 = load i32, ptr @debug, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %62, i32 noundef 31, i32 noundef 0) #10
  br label %69

69:                                               ; preds = %67, %64, %51
  %70 = phi i32 [ -121, %67 ], [ -121, %64 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  br label %71

71:                                               ; preds = %69, %49, %29, %2
  %72 = phi i32 [ %70, %69 ], [ %50, %49 ], [ %30, %29 ], [ -22, %2 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1x93_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %5, align 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 17, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %13 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %13, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.ves1x93_state, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %6, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %19, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 1) #9
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %10
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %21, i32 noundef 0, i32 noundef 17) #10
  br label %28

28:                                               ; preds = %26, %23, %10
  %29 = phi i32 [ -121, %26 ], [ -121, %23 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  br label %50

30:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  %31 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %3, align 1
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 1, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %33 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %33, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.ves1x93_state, ptr %8, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %4, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %39, align 4
  %40 = load ptr, ptr %8, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %4, i32 noundef 1) #9
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %48, label %43

43:                                               ; preds = %30
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ves1x93_writereg, i32 noundef %41, i32 noundef 0, i32 noundef 1) #10
  br label %48

48:                                               ; preds = %46, %43, %30
  %49 = phi i32 [ -121, %46 ], [ -121, %43 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  br label %50

50:                                               ; preds = %48, %28
  %51 = phi i32 [ %29, %28 ], [ %49, %48 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
