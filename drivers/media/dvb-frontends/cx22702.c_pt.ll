; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cx22702.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx22702.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx22702_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx22702_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx22702_attach:\09\09\09\09\09"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx22702_state = type { ptr, ptr, %struct.dvb_frontend, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.cx22702_config = type { i8, i8 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@cx22702_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX22702 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 177000000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @cx22702_release, ptr null, ptr @cx22702_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx22702_set_tps, ptr @cx22702_get_tune_settings, ptr @cx22702_get_frontend, ptr @cx22702_read_status, ptr @cx22702_read_ber, ptr @cx22702_read_signal_strength, ptr @cx22702_read_snr, ptr @cx22702_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx22702_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_cx22702_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx22702_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx22702_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx22702_attach to i32), ptr @__kstrtab_cx22702_attach, ptr @__kstrtabns_cx22702_attach }, section "___ksymtab+cx22702_attach", align 4
@__UNIQUE_ID_description251 = internal constant [54 x i8] c"description=Conexant CX22702 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [40 x i8] c"\013%s: error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.cx22702_readreg = private unnamed_addr constant [16 x i8] c"cx22702_readreg\00", align 1
@init_tab = internal unnamed_addr constant [50 x i8] c"\00\00\0B\06\09\01\0DA\162 \0A!\17$>&\FF'\10(\00)\00*\10+\00,\10-\00H\D4IVk\1E\C8\02\F9\00\FA\00\FB\00\FC\00\FD\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\013%s: error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.cx22702_writereg = private unnamed_addr constant [17 x i8] c"cx22702_writereg\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: invalid bandwidth\0A\00", align 1
@__func__.cx22702_set_tps = private unnamed_addr constant [16 x i8] c"cx22702_set_tps\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: Autodetecting\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"%s: status demod=0x%02x agc=0x%02x\0A\00", align 1
@__func__.cx22702_read_status = private unnamed_addr constant [20 x i8] c"cx22702_read_status\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%s(%d)\0A\00", align 1
@__func__.cx22702_i2c_gate_ctrl = private unnamed_addr constant [22 x i8] c"cx22702_i2c_gate_ctrl\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_cx22702_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.cx22702_get_frontend = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cx22702_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1052) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cx22702_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 31, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
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
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %26, label %22, !prof !9

22:                                               ; preds = %9
  %23 = load i8, ptr %3, align 1
  %24 = zext i8 %23 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %24, i32 noundef %20) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %33

26:                                               ; preds = %9
  %27 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %28 = icmp eq i8 %27, 3
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.cx22702_state, ptr %7, i32 0, i32 2
  %31 = getelementptr inbounds %struct.cx22702_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %31, ptr noundef nonnull align 4 dereferenceable(544) @cx22702_ops, i32 544, i1 false)
  %32 = getelementptr inbounds %struct.cx22702_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %32, align 8
  br label %34

33:                                               ; preds = %26, %22, %2
  call void @kfree(ptr noundef %7) #9
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi ptr [ null, %33 ], [ %30, %29 ]
  ret ptr %35
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
define internal void @cx22702_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22702_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 0, ptr %6, align 2
  %10 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 2, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.cx22702_state, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %7, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %7, i32 noundef 1) #9
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %23, label %21, !prof !9

21:                                               ; preds = %1
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 0, i32 noundef 2, i32 noundef %19) #10
  br label %23

23:                                               ; preds = %21, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @msleep(i32 noundef 10) #9
  %24 = getelementptr inbounds i8, ptr %4, i32 1
  %25 = getelementptr inbounds i8, ptr %5, i32 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %28

28:                                               ; preds = %45, %23
  %29 = phi i32 [ 0, %23 ], [ %46, %45 ]
  %30 = getelementptr [50 x i8], ptr @init_tab, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = or i32 %29, 1
  %33 = getelementptr [50 x i8], ptr @init_tab, i32 0, i32 %32
  %34 = load i8, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 %31, ptr %4, align 2
  store i8 %34, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  store i32 0, ptr %25, align 4, !annotation !8
  %35 = load ptr, ptr %12, align 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %5, align 4
  store i16 0, ptr %26, align 2
  store i16 2, ptr %25, align 4
  store ptr %4, ptr %27, align 4
  %38 = load ptr, ptr %9, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %5, i32 noundef 1) #9
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %45, label %41, !prof !9

41:                                               ; preds = %28
  %42 = zext i8 %31 to i32
  %43 = zext i8 %34 to i32
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef %42, i32 noundef %43, i32 noundef %39) #10
  br label %45

45:                                               ; preds = %41, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %46 = add nuw nsw i32 %29, 2
  %47 = icmp ult i32 %29, 48
  br i1 %47, label %28, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %12, align 4
  %50 = getelementptr inbounds %struct.cx22702_config, ptr %49, i32 0, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = shl i8 %51, 1
  %53 = and i8 %52, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 -8, ptr %2, align 2
  %54 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %53, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %55 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %55, align 4, !annotation !8
  %56 = load ptr, ptr %12, align 4
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %3, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %60, align 4
  %61 = load ptr, ptr %9, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %3, i32 noundef 1) #9
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64, !prof !9

64:                                               ; preds = %48
  %65 = zext i8 %53 to i32
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 248, i32 noundef %65, i32 noundef %62) #10
  br label %67

67:                                               ; preds = %64, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %68 = call i32 @cx22702_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22702_set_tps(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca [2 x %struct.i2c_msg], align 4
  %25 = alloca [2 x i8], align 2
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca [2 x %struct.i2c_msg], align 4
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %1
  %36 = tail call i32 %33(ptr noundef %0) #9
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call i32 %38(ptr noundef %0, i32 noundef 0) #9
  br label %42

42:                                               ; preds = %40, %35, %1
  %43 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %44 = load i32, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #9
  store i8 12, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #9
  store i8 0, ptr %28, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #9
  %45 = getelementptr inbounds i8, ptr %29, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #9, !annotation !8
  %46 = getelementptr inbounds %struct.cx22702_state, ptr %31, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %29, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %50, align 2
  store i16 1, ptr %45, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %27, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1
  %53 = load i8, ptr %47, align 1
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 1
  store i16 1, ptr %55, align 2
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 2
  store i16 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 3
  store ptr %28, ptr %57, align 4
  %58 = load ptr, ptr %31, align 4
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %29, i32 noundef 2) #9
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %65, label %61, !prof !9

61:                                               ; preds = %42
  %62 = load i8, ptr %27, align 1
  %63 = zext i8 %62 to i32
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %63, i32 noundef %59) #10
  br label %67

65:                                               ; preds = %42
  %66 = load i8, ptr %28, align 1
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i8 [ 0, %61 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #9
  switch i32 %44, label %89 [
    i32 0, label %71
    i32 1, label %69
  ]

69:                                               ; preds = %67
  %70 = or i8 %68, 1
  br label %73

71:                                               ; preds = %67
  %72 = and i8 %68, -2
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i8 [ %72, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #9
  store i8 12, ptr %25, align 2
  %75 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 %74, ptr %75, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #9
  %76 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %76, align 4, !annotation !8
  %77 = load ptr, ptr %46, align 4
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %26, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %80, align 2
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %81, align 4
  %82 = load ptr, ptr %31, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %26, i32 noundef 1) #9
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %88, label %85, !prof !9

85:                                               ; preds = %73
  %86 = zext i8 %74 to i32
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 12, i32 noundef %86, i32 noundef %83) #10
  br label %88

88:                                               ; preds = %85, %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #9
  br label %89

89:                                               ; preds = %88, %67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22)
  store i8 12, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #9
  store i8 0, ptr %23, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #9
  %90 = getelementptr inbounds i8, ptr %24, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %90, i8 0, i32 16, i1 false) #9, !annotation !8
  %91 = load ptr, ptr %46, align 4
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i16
  store i16 %93, ptr %24, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %94, align 2
  store i16 1, ptr %90, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %22, ptr %95, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1
  %97 = load i8, ptr %91, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %96, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 1
  store i16 1, ptr %99, align 2
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 2
  store i16 1, ptr %100, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 3
  store ptr %23, ptr %101, align 4
  %102 = load ptr, ptr %31, align 4
  %103 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %24, i32 noundef 2) #9
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %109, label %105, !prof !9

105:                                              ; preds = %89
  %106 = load i8, ptr %22, align 1
  %107 = zext i8 %106 to i32
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %107, i32 noundef %103) #10
  br label %112

109:                                              ; preds = %89
  %110 = load i8, ptr %23, align 1
  %111 = and i8 %110, -49
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i8 [ 0, %105 ], [ %111, %109 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22)
  %114 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %115 = load i32, ptr %114, align 4
  switch i32 %115, label %120 [
    i32 6000000, label %116
    i32 7000000, label %118
    i32 8000000, label %123
  ]

116:                                              ; preds = %112
  %117 = or i8 %113, 32
  br label %123

118:                                              ; preds = %112
  %119 = or i8 %113, 16
  br label %123

120:                                              ; preds = %112
  %121 = load i32, ptr @debug, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %274, label %270

123:                                              ; preds = %118, %116, %112
  %124 = phi i8 [ %113, %112 ], [ %119, %118 ], [ %117, %116 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 12, ptr %20, align 2
  %125 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 %124, ptr %125, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %126 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %126, align 4, !annotation !8
  %127 = load ptr, ptr %46, align 4
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i16
  store i16 %129, ptr %21, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %130, align 2
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %131, align 4
  %132 = load ptr, ptr %31, align 4
  %133 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %21, i32 noundef 1) #9
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %138, label %135, !prof !9

135:                                              ; preds = %123
  %136 = zext i8 %124 to i32
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 12, i32 noundef %136, i32 noundef %133) #10
  br label %138

138:                                              ; preds = %135, %123
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  %139 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  store i32 9, ptr %139, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i8 6, ptr %18, align 2
  %140 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 16, ptr %140, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %141 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %141, align 4, !annotation !8
  %142 = load ptr, ptr %46, align 4
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %19, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %145, align 2
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %146, align 4
  %147 = load ptr, ptr %31, align 4
  %148 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %19, i32 noundef 1) #9
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %152, label %150, !prof !9

150:                                              ; preds = %138
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 6, i32 noundef 16, i32 noundef %148) #10
  br label %152

152:                                              ; preds = %150, %138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 7, ptr %16, align 2
  %153 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 9, ptr %153, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %154 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %154, align 4, !annotation !8
  %155 = load ptr, ptr %46, align 4
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %17, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %158, align 2
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %159, align 4
  %160 = load ptr, ptr %31, align 4
  %161 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %17, i32 noundef 1) #9
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %165, label %163, !prof !9

163:                                              ; preds = %152
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 7, i32 noundef 9, i32 noundef %161) #10
  br label %165

165:                                              ; preds = %163, %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 8, ptr %14, align 2
  %166 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -63, ptr %166, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %167 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %167, align 4, !annotation !8
  %168 = load ptr, ptr %46, align 4
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i16
  store i16 %170, ptr %15, align 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %171, align 2
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %172, align 4
  %173 = load ptr, ptr %31, align 4
  %174 = call i32 @i2c_transfer(ptr noundef %173, ptr noundef nonnull %15, i32 noundef 1) #9
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %178, label %176, !prof !9

176:                                              ; preds = %165
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 8, i32 noundef 193, i32 noundef %174) #10
  br label %178

178:                                              ; preds = %176, %165
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11)
  store i8 11, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 0, ptr %12, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  %179 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %179, i8 0, i32 16, i1 false) #9, !annotation !8
  %180 = load ptr, ptr %46, align 4
  %181 = load i8, ptr %180, align 1
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %13, align 4
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %183, align 2
  store i16 1, ptr %179, align 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %184, align 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %186 = load i8, ptr %180, align 1
  %187 = zext i8 %186 to i16
  store i16 %187, ptr %185, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %188, align 2
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %189, align 4
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %190, align 4
  %191 = load ptr, ptr %31, align 4
  %192 = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %13, i32 noundef 2) #9
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %198, label %194, !prof !9

194:                                              ; preds = %178
  %195 = load i8, ptr %11, align 1
  %196 = zext i8 %195 to i32
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %196, i32 noundef %192) #10
  br label %201

198:                                              ; preds = %178
  %199 = load i8, ptr %12, align 1
  %200 = and i8 %199, -4
  br label %201

201:                                              ; preds = %198, %194
  %202 = phi i8 [ 0, %194 ], [ %200, %198 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i8 11, ptr %9, align 2
  %203 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %202, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  %204 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %204, align 4, !annotation !8
  %205 = load ptr, ptr %46, align 4
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i16
  store i16 %207, ptr %10, align 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %208, align 2
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %209, align 4
  %210 = load ptr, ptr %31, align 4
  %211 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %10, i32 noundef 1) #9
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %216, label %213, !prof !9

213:                                              ; preds = %201
  %214 = zext i8 %202 to i32
  %215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 11, i32 noundef %214, i32 noundef %211) #10
  br label %216

216:                                              ; preds = %213, %201
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 12, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %217 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %217, i8 0, i32 16, i1 false) #9, !annotation !8
  %218 = load ptr, ptr %46, align 4
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i16
  store i16 %220, ptr %8, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %221, align 2
  store i16 1, ptr %217, align 4
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %222, align 4
  %223 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %224 = load i8, ptr %218, align 1
  %225 = zext i8 %224 to i16
  store i16 %225, ptr %223, align 4
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %226, align 2
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %227, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %228, align 4
  %229 = load ptr, ptr %31, align 4
  %230 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %8, i32 noundef 2) #9
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %236, label %232, !prof !9

232:                                              ; preds = %216
  %233 = load i8, ptr %6, align 1
  %234 = zext i8 %233 to i32
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %234, i32 noundef %230) #10
  br label %239

236:                                              ; preds = %216
  %237 = load i8, ptr %7, align 1
  %238 = or i8 %237, 64
  br label %239

239:                                              ; preds = %236, %232
  %240 = phi i8 [ 64, %232 ], [ %238, %236 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 12, ptr %4, align 2
  %241 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %240, ptr %241, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %242 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %242, align 4, !annotation !8
  %243 = load ptr, ptr %46, align 4
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i16
  store i16 %245, ptr %5, align 4
  %246 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %246, align 2
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %247, align 4
  %248 = load ptr, ptr %31, align 4
  %249 = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %5, i32 noundef 1) #9
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %254, label %251, !prof !9

251:                                              ; preds = %239
  %252 = zext i8 %240 to i32
  %253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 12, i32 noundef %252, i32 noundef %249) #10
  br label %254

254:                                              ; preds = %251, %239
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 0, ptr %2, align 2
  %255 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 1, ptr %255, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %256 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %256, align 4, !annotation !8
  %257 = load ptr, ptr %46, align 4
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i16
  store i16 %259, ptr %3, align 4
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %260, align 2
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %261, align 4
  %262 = load ptr, ptr %31, align 4
  %263 = call i32 @i2c_transfer(ptr noundef %262, ptr noundef nonnull %3, i32 noundef 1) #9
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %267, label %265, !prof !9

265:                                              ; preds = %254
  %266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 0, i32 noundef 1, i32 noundef %263) #10
  br label %267

267:                                              ; preds = %265, %254
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %268 = load i32, ptr @debug, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %267, %120
  %271 = phi ptr [ @.str.2, %120 ], [ @.str.3, %267 ]
  %272 = phi i32 [ -22, %120 ], [ 0, %267 ]
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %271, ptr noundef nonnull @__func__.cx22702_set_tps) #10
  br label %274

274:                                              ; preds = %270, %267, %120
  %275 = phi i32 [ -22, %120 ], [ 0, %267 ], [ %272, %270 ]
  ret i32 %275
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cx22702_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22702_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15)
  store i8 12, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 0, ptr %16, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #9
  %20 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #9, !annotation !8
  %21 = getelementptr inbounds %struct.cx22702_state, ptr %19, i32 0, i32 1
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
  br i1 %35, label %40, label %36, !prof !9

36:                                               ; preds = %2
  %37 = load i8, ptr %15, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %38, i32 noundef %34) #10
  br label %44

40:                                               ; preds = %2
  %41 = load i8, ptr %16, align 1
  %42 = and i8 %41, 1
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ 0, %36 ], [ %43, %40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15)
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 10, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 0, ptr %13, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %47 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %47, i8 0, i32 16, i1 false) #9, !annotation !8
  %48 = load ptr, ptr %21, align 4
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %14, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %51, align 2
  store i16 1, ptr %47, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %54 = load i8, ptr %48, align 1
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %58, align 4
  %59 = load ptr, ptr %19, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %14, i32 noundef 2) #9
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %66, label %62, !prof !9

62:                                               ; preds = %44
  %63 = load i8, ptr %12, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %64, i32 noundef %60) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  br label %180

66:                                               ; preds = %44
  %67 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  %68 = and i8 %67, 32
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %180, label %70

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 1, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %71 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %71, i8 0, i32 16, i1 false) #9, !annotation !8
  %72 = load ptr, ptr %21, align 4
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %11, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %75, align 2
  store i16 1, ptr %71, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %78 = load i8, ptr %72, align 1
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %80, align 2
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %82, align 4
  %83 = load ptr, ptr %19, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %11, i32 noundef 2) #9
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %90, label %86, !prof !9

86:                                               ; preds = %70
  %87 = load i8, ptr %9, align 1
  %88 = zext i8 %87 to i32
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %88, i32 noundef %84) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  br label %97

90:                                               ; preds = %70
  %91 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  %92 = zext i8 %91 to i32
  %93 = lshr i32 %92, 3
  %94 = and i32 %93, 3
  switch i32 %94, label %101 [
    i32 0, label %97
    i32 1, label %95
    i32 2, label %96
  ]

95:                                               ; preds = %90
  br label %97

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %95, %90, %86
  %98 = phi i32 [ 3, %96 ], [ 1, %95 ], [ 0, %86 ], [ %94, %90 ]
  %99 = phi i32 [ %92, %96 ], [ %92, %95 ], [ 0, %86 ], [ %92, %90 ]
  %100 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %98, ptr %100, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = phi i32 [ %92, %90 ], [ %99, %97 ]
  %103 = and i32 %102, 7
  %104 = icmp ult i32 %103, 4
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %103, ptr %106, align 4
  br label %107

107:                                              ; preds = %105, %101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %108 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %108, i8 0, i32 16, i1 false) #9, !annotation !8
  %109 = load ptr, ptr %21, align 4
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %8, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %112, align 2
  store i16 1, ptr %108, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %113, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %115 = load i8, ptr %109, align 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %114, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %117, align 2
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %118, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %119, align 4
  %120 = load ptr, ptr %19, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %8, i32 noundef 2) #9
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %127, label %123, !prof !9

123:                                              ; preds = %107
  %124 = load i8, ptr %6, align 1
  %125 = zext i8 %124 to i32
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %125, i32 noundef %121) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  br label %136

127:                                              ; preds = %107
  %128 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %129 = zext i8 %128 to i32
  %130 = lshr i32 %129, 3
  %131 = and i32 %130, 7
  switch i32 %131, label %140 [
    i32 0, label %136
    i32 1, label %132
    i32 2, label %133
    i32 3, label %134
    i32 4, label %135
  ]

132:                                              ; preds = %127
  br label %136

133:                                              ; preds = %127
  br label %136

134:                                              ; preds = %127
  br label %136

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %134, %133, %132, %127, %123
  %137 = phi i32 [ 7, %135 ], [ 5, %134 ], [ 3, %133 ], [ 2, %132 ], [ 1, %123 ], [ 1, %127 ]
  %138 = phi i32 [ %129, %135 ], [ %129, %134 ], [ %129, %133 ], [ %129, %132 ], [ 0, %123 ], [ %129, %127 ]
  %139 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %137, ptr %139, align 4
  br label %140

140:                                              ; preds = %136, %127
  %141 = phi i32 [ %129, %127 ], [ %138, %136 ]
  %142 = and i32 %141, 7
  %143 = icmp ult i32 %142, 5
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = getelementptr inbounds [5 x i32], ptr @switch.table.cx22702_get_frontend, i32 0, i32 %142
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %146, ptr %147, align 4
  br label %148

148:                                              ; preds = %144, %140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 3, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %149 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %149, i8 0, i32 16, i1 false) #9, !annotation !8
  %150 = load ptr, ptr %21, align 4
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i16
  store i16 %152, ptr %5, align 4
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %153, align 2
  store i16 1, ptr %149, align 4
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %154, align 4
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %156 = load i8, ptr %150, align 1
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %155, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %158, align 2
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %159, align 4
  %160 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %160, align 4
  %161 = load ptr, ptr %19, align 4
  %162 = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %5, i32 noundef 2) #9
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %169, label %164, !prof !9

164:                                              ; preds = %148
  %165 = load i8, ptr %3, align 1
  %166 = zext i8 %165 to i32
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %166, i32 noundef %162) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %168 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 0, ptr %168, align 4
  br label %176

169:                                              ; preds = %148
  %170 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %171 = zext i8 %170 to i32
  %172 = lshr i32 %171, 2
  %173 = and i32 %172, 3
  %174 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %173, ptr %174, align 4
  %175 = and i32 %171, 3
  switch i32 %175, label %180 [
    i32 0, label %176
    i32 1, label %178
  ]

176:                                              ; preds = %169, %164
  %177 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 0, ptr %177, align 4
  br label %180

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 1, ptr %179, align 4
  br label %180

180:                                              ; preds = %178, %176, %169, %66, %62
  %181 = phi i32 [ -11, %66 ], [ 0, %169 ], [ 0, %178 ], [ 0, %176 ], [ -11, %62 ]
  ret i32 %181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22702_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 10, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.cx22702_state, ptr %10, i32 0, i32 1
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
  br i1 %26, label %31, label %27, !prof !9

27:                                               ; preds = %2
  %28 = load i8, ptr %6, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %29, i32 noundef %25) #10
  br label %34

31:                                               ; preds = %2
  %32 = load i8, ptr %7, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ 0, %27 ], [ %33, %31 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 35, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %36 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, i8 0, i32 16, i1 false) #9, !annotation !8
  %37 = load ptr, ptr %12, align 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %5, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %40, align 2
  store i16 1, ptr %36, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %43 = load i8, ptr %37, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %47, align 4
  %48 = load ptr, ptr %10, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %5, i32 noundef 2) #9
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %55, label %51, !prof !9

51:                                               ; preds = %34
  %52 = load i8, ptr %3, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %53, i32 noundef %49) #10
  br label %57

55:                                               ; preds = %34
  %56 = load i8, ptr %4, align 1
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i8 [ 0, %51 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %59 = load i32, ptr @debug, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = zext i8 %58 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx22702_read_status, i32 noundef %35, i32 noundef %62) #10
  br label %64

64:                                               ; preds = %61, %57
  %65 = and i32 %35, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %1, align 4
  %69 = or i32 %68, 28
  store i32 %69, ptr %1, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = and i32 %35, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %1, align 4
  %75 = or i32 %74, 2
  store i32 %75, ptr %1, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = icmp ult i8 %58, -16
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i32, ptr %1, align 4
  %80 = or i32 %79, 1
  store i32 %80, ptr %1, align 4
  br label %81

81:                                               ; preds = %78, %76
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22702_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15)
  store i8 -28, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 0, ptr %16, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #9
  %20 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #9, !annotation !8
  %21 = getelementptr inbounds %struct.cx22702_state, ptr %19, i32 0, i32 1
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
  br i1 %35, label %40, label %36, !prof !9

36:                                               ; preds = %2
  %37 = load i8, ptr %15, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %38, i32 noundef %34) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15)
  br label %97

40:                                               ; preds = %2
  %41 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15)
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %97, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12)
  store i8 -34, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 0, ptr %13, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %45 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #9, !annotation !8
  %46 = load ptr, ptr %21, align 4
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %14, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 1, ptr %45, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %52 = load i8, ptr %46, align 1
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %56, align 4
  %57 = load ptr, ptr %19, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %14, i32 noundef 2) #9
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %64, label %60, !prof !9

60:                                               ; preds = %44
  %61 = load i8, ptr %12, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %62, i32 noundef %58) #10
  br label %69

64:                                               ; preds = %44
  %65 = load i8, ptr %13, align 1
  %66 = and i8 %65, 127
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 7
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i32 [ 0, %60 ], [ %68, %64 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 -33, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %71 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %71, i8 0, i32 16, i1 false) #9, !annotation !8
  %72 = load ptr, ptr %21, align 4
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %11, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %75, align 2
  store i16 1, ptr %71, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %78 = load i8, ptr %72, align 1
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %80, align 2
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %82, align 4
  %83 = load ptr, ptr %19, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %11, i32 noundef 2) #9
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %90, label %86, !prof !9

86:                                               ; preds = %69
  %87 = load i8, ptr %9, align 1
  %88 = zext i8 %87 to i32
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %88, i32 noundef %84) #10
  br label %94

90:                                               ; preds = %69
  %91 = load i8, ptr %10, align 1
  %92 = and i8 %91, 127
  %93 = zext i8 %92 to i32
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i32 [ 0, %86 ], [ %93, %90 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %96 = or i32 %95, %70
  br label %149

97:                                               ; preds = %40, %36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 -34, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %98 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %98, i8 0, i32 16, i1 false) #9, !annotation !8
  %99 = load ptr, ptr %21, align 4
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %8, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %102, align 2
  store i16 1, ptr %98, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %103, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %105 = load i8, ptr %99, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %104, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %108, align 4
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %109, align 4
  %110 = load ptr, ptr %19, align 4
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %8, i32 noundef 2) #9
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %117, label %113, !prof !9

113:                                              ; preds = %97
  %114 = load i8, ptr %6, align 1
  %115 = zext i8 %114 to i32
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %115, i32 noundef %111) #10
  br label %122

117:                                              ; preds = %97
  %118 = load i8, ptr %7, align 1
  %119 = and i8 %118, 127
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i32 %120, 7
  br label %122

122:                                              ; preds = %117, %113
  %123 = phi i32 [ 0, %113 ], [ %121, %117 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -33, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %124 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %124, i8 0, i32 16, i1 false) #9, !annotation !8
  %125 = load ptr, ptr %21, align 4
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i16
  store i16 %127, ptr %5, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %128, align 2
  store i16 1, ptr %124, align 4
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %129, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %131 = load i8, ptr %125, align 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %130, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %134, align 4
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %135, align 4
  %136 = load ptr, ptr %19, align 4
  %137 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %5, i32 noundef 2) #9
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %143, label %139, !prof !9

139:                                              ; preds = %122
  %140 = load i8, ptr %3, align 1
  %141 = zext i8 %140 to i32
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %141, i32 noundef %137) #10
  br label %146

143:                                              ; preds = %122
  %144 = load i8, ptr %4, align 1
  %145 = zext i8 %144 to i32
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi i32 [ 0, %139 ], [ %145, %143 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %148 = or i32 %147, %123
  br label %149

149:                                              ; preds = %146, %94
  %150 = phi i32 [ %148, %146 ], [ %96, %94 ]
  store i32 %150, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22702_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 35, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.cx22702_state, ptr %7, i32 0, i32 1
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
  br i1 %23, label %28, label %24, !prof !9

24:                                               ; preds = %2
  %25 = load i8, ptr %3, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %26, i32 noundef %22) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %31

28:                                               ; preds = %2
  %29 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %30 = icmp sgt i8 %29, -1
  br i1 %30, label %31, label %41

31:                                               ; preds = %28, %24
  %32 = phi i8 [ 0, %24 ], [ %29, %28 ]
  %33 = xor i8 %32, 127
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 9
  %36 = shl nuw nsw i32 %34, 2
  %37 = or i32 %35, %36
  %38 = lshr i32 %34, 5
  %39 = or i32 %37, %38
  %40 = trunc i32 %39 to i16
  br label %41

41:                                               ; preds = %31, %28
  %42 = phi i16 [ %40, %31 ], [ 0, %28 ]
  store i16 %42, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22702_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15)
  store i8 -28, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 0, ptr %16, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #9
  %20 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #9, !annotation !8
  %21 = getelementptr inbounds %struct.cx22702_state, ptr %19, i32 0, i32 1
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
  br i1 %35, label %40, label %36, !prof !9

36:                                               ; preds = %2
  %37 = load i8, ptr %15, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %38, i32 noundef %34) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15)
  br label %95

40:                                               ; preds = %2
  %41 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15)
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %95, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12)
  store i8 -34, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 0, ptr %13, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %45 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #9, !annotation !8
  %46 = load ptr, ptr %21, align 4
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %14, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 1, ptr %45, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %52 = load i8, ptr %46, align 1
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %56, align 4
  %57 = load ptr, ptr %19, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %14, i32 noundef 2) #9
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %64, label %60, !prof !9

60:                                               ; preds = %44
  %61 = load i8, ptr %12, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %62, i32 noundef %58) #10
  br label %67

64:                                               ; preds = %44
  %65 = load i8, ptr %13, align 1
  %66 = and i8 %65, 127
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i8 [ 0, %60 ], [ %66, %64 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12)
  %69 = zext i8 %68 to i16
  %70 = shl nuw nsw i16 %69, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 -33, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %71 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %71, i8 0, i32 16, i1 false) #9, !annotation !8
  %72 = load ptr, ptr %21, align 4
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %11, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %75, align 2
  store i16 1, ptr %71, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %78 = load i8, ptr %72, align 1
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %80, align 2
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %82, align 4
  %83 = load ptr, ptr %19, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %11, i32 noundef 2) #9
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %90, label %86, !prof !9

86:                                               ; preds = %67
  %87 = load i8, ptr %9, align 1
  %88 = zext i8 %87 to i32
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %88, i32 noundef %84) #10
  br label %93

90:                                               ; preds = %67
  %91 = load i8, ptr %10, align 1
  %92 = and i8 %91, 127
  br label %93

93:                                               ; preds = %90, %86
  %94 = phi i8 [ 0, %86 ], [ %92, %90 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  br label %145

95:                                               ; preds = %40, %36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 -34, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %96 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %96, i8 0, i32 16, i1 false) #9, !annotation !8
  %97 = load ptr, ptr %21, align 4
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %8, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %100, align 2
  store i16 1, ptr %96, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %101, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %103 = load i8, ptr %97, align 1
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %102, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %105, align 2
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %107, align 4
  %108 = load ptr, ptr %19, align 4
  %109 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %8, i32 noundef 2) #9
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %115, label %111, !prof !9

111:                                              ; preds = %95
  %112 = load i8, ptr %6, align 1
  %113 = zext i8 %112 to i32
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %113, i32 noundef %109) #10
  br label %118

115:                                              ; preds = %95
  %116 = load i8, ptr %7, align 1
  %117 = and i8 %116, 127
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi i8 [ 0, %111 ], [ %117, %115 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %120 = zext i8 %119 to i16
  %121 = shl nuw nsw i16 %120, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -33, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %122 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %122, i8 0, i32 16, i1 false) #9, !annotation !8
  %123 = load ptr, ptr %21, align 4
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i16
  store i16 %125, ptr %5, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %126, align 2
  store i16 1, ptr %122, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %127, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %129 = load i8, ptr %123, align 1
  %130 = zext i8 %129 to i16
  store i16 %130, ptr %128, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %131, align 2
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %132, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %133, align 4
  %134 = load ptr, ptr %19, align 4
  %135 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %5, i32 noundef 2) #9
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %141, label %137, !prof !9

137:                                              ; preds = %118
  %138 = load i8, ptr %3, align 1
  %139 = zext i8 %138 to i32
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %139, i32 noundef %135) #10
  br label %143

141:                                              ; preds = %118
  %142 = load i8, ptr %4, align 1
  br label %143

143:                                              ; preds = %141, %137
  %144 = phi i8 [ 0, %137 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %145

145:                                              ; preds = %143, %93
  %146 = phi i8 [ %144, %143 ], [ %94, %93 ]
  %147 = phi i16 [ %121, %143 ], [ %70, %93 ]
  %148 = zext i8 %146 to i16
  %149 = or i16 %147, %148
  %150 = xor i16 %149, -1
  store i16 %150, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22702_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -29, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.cx22702_state, ptr %7, i32 0, i32 1
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
  br i1 %23, label %28, label %24, !prof !9

24:                                               ; preds = %2
  %25 = load i8, ptr %3, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %26, i32 noundef %22) #10
  br label %30

28:                                               ; preds = %2
  %29 = load i8, ptr %4, align 1
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i8 [ 0, %24 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %32 = getelementptr inbounds %struct.cx22702_state, ptr %7, i32 0, i32 3
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = zext i8 %31 to i32
  %36 = icmp ult i8 %33, %31
  %37 = sub nsw i32 %34, %35
  %38 = sub nsw i32 %35, %34
  %39 = select i1 %36, i32 %38, i32 %37
  store i32 %39, ptr %1, align 4
  store i8 %31, ptr %32, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22702_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.cx22702_i2c_gate_ctrl, i32 noundef %1) #10
  br label %14

14:                                               ; preds = %12, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 13, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %15 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #9, !annotation !8
  %16 = getelementptr inbounds %struct.cx22702_state, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %7, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 1, ptr %15, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %23 = load i8, ptr %17, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %27, align 4
  %28 = load ptr, ptr %9, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %7, i32 noundef 2) #9
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %35, label %31, !prof !9

31:                                               ; preds = %14
  %32 = load i8, ptr %5, align 1
  %33 = zext i8 %32 to i32
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22702_readreg, i32 noundef %33, i32 noundef %29) #10
  br label %38

35:                                               ; preds = %14
  %36 = load i8, ptr %6, align 1
  %37 = and i8 %36, -2
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i8 [ 0, %31 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %40 = icmp eq i32 %1, 0
  %41 = zext i1 %40 to i8
  %42 = or i8 %39, %41
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 13, ptr %3, align 2
  %43 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %42, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %44 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %44, align 4, !annotation !8
  %45 = load ptr, ptr %16, align 4
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %4, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %49, align 4
  %50 = load ptr, ptr %9, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %4, i32 noundef 1) #9
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53, !prof !9

53:                                               ; preds = %38
  %54 = zext i8 %42 to i32
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cx22702_writereg, i32 noundef 13, i32 noundef %54, i32 noundef %51) #10
  br label %56

56:                                               ; preds = %53, %38
  %57 = phi i32 [ -1, %53 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 %57
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
!9 = !{!"branch_weights", i32 2000, i32 1}
