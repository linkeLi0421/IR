; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cx22700.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx22700.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx22700_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx22700_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx22700_attach:\09\09\09\09\09"
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
%struct.cx22700_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@cx22700_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX22700 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 860000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 1073753774 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @cx22700_release, ptr null, ptr @cx22700_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx22700_set_frontend, ptr @cx22700_get_tune_settings, ptr @cx22700_get_frontend, ptr @cx22700_read_status, ptr @cx22700_read_ber, ptr @cx22700_read_signal_strength, ptr @cx22700_read_snr, ptr @cx22700_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx22700_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [54 x i8] c"description=Conexant CX22700 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [24 x i8] c"author=Holger Waechtler\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_cx22700_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx22700_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx22700_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx22700_attach to i32), ptr @__kstrtab_cx22700_attach, ptr @__kstrtabns_cx22700_attach }, section "___ksymtab+cx22700_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [15 x i8] c"\017cx22700: %s\0A\00", align 1
@__func__.cx22700_readreg = private unnamed_addr constant [16 x i8] c"cx22700_readreg\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\017cx22700: cx22700_init: init chip\0A\00", align 1
@init_tab = internal unnamed_addr constant [36 x i8] c"\04\10\05\09\06\00\08\04\09\00\0A\01\15@\16\10\17\87\18\17\1A\10%\04.\009\00:\04E\08F\02G\05", align 1
@__func__.cx22700_writereg = private unnamed_addr constant [17 x i8] c"cx22700_writereg\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"%s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.cx22700_set_inversion = private unnamed_addr constant [22 x i8] c"cx22700_set_inversion\00", align 1
@cx22700_set_tps.qam_tab = internal unnamed_addr constant [4 x i8] c"\00\01\00\02", align 1
@cx22700_set_tps.fec_tab = internal unnamed_addr constant [6 x i8] c"\00\01\02\00\03\04", align 1
@__func__.cx22700_set_tps = private unnamed_addr constant [16 x i8] c"cx22700_set_tps\00", align 1
@cx22700_get_tps.qam_tab = internal unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@cx22700_get_tps.fec_tab = internal unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4
@__func__.cx22700_get_tps = private unnamed_addr constant [16 x i8] c"cx22700_get_tps\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_cx22700_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cx22700_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1048) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cx22700_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 7, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
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
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %9
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %24

24:                                               ; preds = %22, %9
  %25 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #10
  %26 = icmp eq i32 %25, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.cx22700_state, ptr %7, i32 0, i32 2
  %29 = getelementptr inbounds %struct.cx22700_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %29, ptr noundef nonnull align 4 dereferenceable(544) @cx22700_ops, i32 544, i1 false)
  %30 = getelementptr inbounds %struct.cx22700_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %30, align 8
  br label %32

31:                                               ; preds = %24, %2
  call void @kfree(ptr noundef %7) #10
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi ptr [ null, %31 ], [ %28, %27 ]
  ret ptr %33
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cx22700_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22700_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %14, %1
  %19 = phi i1 [ %17, %14 ], [ true, %1 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 0, ptr %8, align 2
  %20 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 2, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %21 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %21, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.cx22700_state, ptr %11, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %9, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %27, align 4
  br i1 %19, label %30, label %28

28:                                               ; preds = %18
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %30

30:                                               ; preds = %28, %18
  %31 = load ptr, ptr %11, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %9, i32 noundef 1) #10
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 0, i32 noundef 2, i32 noundef %32) #11
  br label %36

36:                                               ; preds = %34, %30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 0, ptr %6, align 2
  %37 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %38 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %38, align 4, !annotation !8
  %39 = load ptr, ptr %22, align 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %7, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %43, align 4
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %48

48:                                               ; preds = %46, %36
  %49 = load ptr, ptr %11, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %7, i32 noundef 1) #10
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 0, i32 noundef 0, i32 noundef %50) #11
  br label %54

54:                                               ; preds = %52, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @msleep(i32 noundef 10) #10
  %55 = getelementptr inbounds i8, ptr %4, i32 1
  %56 = getelementptr inbounds i8, ptr %5, i32 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %59

59:                                               ; preds = %81, %54
  %60 = phi i32 [ 0, %54 ], [ %82, %81 ]
  %61 = getelementptr [36 x i8], ptr @init_tab, i32 0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = or i32 %60, 1
  %64 = getelementptr [36 x i8], ptr @init_tab, i32 0, i32 %63
  %65 = load i8, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 %62, ptr %4, align 2
  store i8 %65, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  store i32 0, ptr %56, align 4, !annotation !8
  %66 = load ptr, ptr %22, align 4
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %5, align 4
  store i16 0, ptr %57, align 2
  store i16 2, ptr %56, align 4
  store ptr %4, ptr %58, align 4
  %69 = load i32, ptr @debug, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %59
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %73

73:                                               ; preds = %71, %59
  %74 = load ptr, ptr %11, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %5, i32 noundef 1) #10
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = zext i8 %62 to i32
  %79 = zext i8 %65 to i32
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef %78, i32 noundef %79, i32 noundef %75) #11
  br label %81

81:                                               ; preds = %77, %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  %82 = add nuw nsw i32 %60, 2
  %83 = icmp ult i32 %60, 34
  br i1 %83, label %59, label %84

84:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 0, ptr %2, align 2
  %85 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 1, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %86 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %86, align 4, !annotation !8
  %87 = load ptr, ptr %22, align 4
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %3, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %91, align 4
  %92 = load i32, ptr @debug, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %84
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %96

96:                                               ; preds = %94, %84
  %97 = load ptr, ptr %11, align 4
  %98 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %3, i32 noundef 1) #10
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 0, i32 noundef 1, i32 noundef %98) #11
  br label %102

102:                                              ; preds = %100, %96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22700_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
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
  %33 = alloca [2 x i8], align 2
  %34 = alloca %struct.i2c_msg, align 4
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #10
  store i8 0, ptr %33, align 2
  %37 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 2, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %38 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 2, ptr %38, align 4, !annotation !8
  %39 = getelementptr inbounds %struct.cx22700_state, ptr %36, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %34, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %44, align 4
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %1
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %49

49:                                               ; preds = %47, %1
  %50 = load ptr, ptr %36, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %34, i32 noundef 1) #10
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 0, i32 noundef 2, i32 noundef %51) #11
  br label %55

55:                                               ; preds = %53, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #10
  store i8 0, ptr %31, align 2
  %56 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 0, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  %57 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 0, ptr %57, align 4, !annotation !8
  %58 = load ptr, ptr %39, align 4
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %32, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %61, align 2
  store i16 2, ptr %57, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %62, align 4
  %63 = load i32, ptr @debug, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %55
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %67

67:                                               ; preds = %65, %55
  %68 = load ptr, ptr %36, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %32, i32 noundef 1) #10
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 0, i32 noundef 0, i32 noundef %69) #11
  br label %73

73:                                               ; preds = %71, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #10
  %74 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = call i32 %75(ptr noundef %0) #10
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = call i32 %80(ptr noundef %0, i32 noundef 0) #10
  br label %84

84:                                               ; preds = %82, %77, %73
  %85 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr @debug, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_set_inversion) #11
  br label %91

91:                                               ; preds = %89, %84
  switch i32 %86, label %178 [
    i32 0, label %135
    i32 1, label %92
  ]

92:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #10
  store i8 9, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #10
  store i8 0, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #10
  %93 = getelementptr inbounds i8, ptr %30, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %93, i8 0, i32 16, i1 false) #10, !annotation !8
  %94 = load ptr, ptr %39, align 4
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %30, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %97, align 2
  store i16 1, ptr %93, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %28, ptr %98, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1
  %100 = load i8, ptr %94, align 1
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %99, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 1
  store i16 1, ptr %102, align 2
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 2
  store i16 1, ptr %103, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 3
  store ptr %29, ptr %104, align 4
  %105 = load i32, ptr @debug, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %92
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %109

109:                                              ; preds = %107, %92
  %110 = load ptr, ptr %36, align 4
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %30, i32 noundef 2) #10
  %112 = icmp eq i32 %111, 2
  %113 = load i8, ptr %29, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #10
  %114 = or i8 %113, 1
  %115 = select i1 %112, i8 %114, i8 -5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #10
  store i8 9, ptr %26, align 2
  %116 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %115, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %117 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %117, align 4, !annotation !8
  %118 = load ptr, ptr %39, align 4
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i16
  store i16 %120, ptr %27, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %121, align 2
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %122, align 4
  %123 = load i32, ptr @debug, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %109
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %127

127:                                              ; preds = %125, %109
  %128 = load ptr, ptr %36, align 4
  %129 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %27, i32 noundef 1) #10
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = zext i8 %115 to i32
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 9, i32 noundef %132, i32 noundef %129) #11
  br label %134

134:                                              ; preds = %131, %127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #10
  br label %178

135:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #10
  store i8 9, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #10
  store i8 0, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #10
  %136 = getelementptr inbounds i8, ptr %25, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %136, i8 0, i32 16, i1 false) #10, !annotation !8
  %137 = load ptr, ptr %39, align 4
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %25, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %140, align 2
  store i16 1, ptr %136, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %23, ptr %141, align 4
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1
  %143 = load i8, ptr %137, align 1
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %142, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 1
  store i16 1, ptr %145, align 2
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 2
  store i16 1, ptr %146, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 3
  store ptr %24, ptr %147, align 4
  %148 = load i32, ptr @debug, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %135
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %152

152:                                              ; preds = %150, %135
  %153 = load ptr, ptr %36, align 4
  %154 = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %25, i32 noundef 2) #10
  %155 = icmp eq i32 %154, 2
  %156 = load i8, ptr %24, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #10
  %157 = and i8 %156, -2
  %158 = select i1 %155, i8 %157, i8 -6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #10
  store i8 9, ptr %21, align 2
  %159 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 %158, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %160 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %160, align 4, !annotation !8
  %161 = load ptr, ptr %39, align 4
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i16
  store i16 %163, ptr %22, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %164, align 2
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %165, align 4
  %166 = load i32, ptr @debug, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %152
  %169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %170

170:                                              ; preds = %168, %152
  %171 = load ptr, ptr %36, align 4
  %172 = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %22, i32 noundef 1) #10
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = zext i8 %158 to i32
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 9, i32 noundef %175, i32 noundef %172) #11
  br label %177

177:                                              ; preds = %174, %170
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #10
  br label %178

178:                                              ; preds = %177, %134, %91
  %179 = load i32, ptr @debug, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_set_tps) #11
  br label %183

183:                                              ; preds = %181, %178
  %184 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, -8
  %187 = icmp ult i32 %186, -7
  br i1 %187, label %379, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, -8
  %192 = icmp ult i32 %191, -7
  br i1 %192, label %379, label %193

193:                                              ; preds = %188
  %194 = icmp eq i32 %185, 4
  %195 = icmp eq i32 %190, 4
  %196 = select i1 %194, i1 true, i1 %195
  br i1 %196, label %379, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %199 = load i32, ptr %198, align 4
  %200 = icmp ugt i32 %199, 3
  br i1 %200, label %379, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = icmp ult i32 %203, 2
  br i1 %204, label %205, label %379

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %207 = load i32, ptr %206, align 4
  switch i32 %207, label %379 [
    i32 0, label %208
    i32 1, label %208
    i32 3, label %208
  ]

208:                                              ; preds = %205, %205, %205
  %209 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %210 = load i32, ptr %209, align 4
  %211 = icmp ugt i32 %210, 3
  br i1 %211, label %379, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, -8000001
  %216 = icmp ult i32 %215, -2000001
  br i1 %216, label %379, label %217

217:                                              ; preds = %212
  %218 = icmp eq i32 %214, 7000000
  %219 = select i1 %218, i8 25, i8 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 %219, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %220 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %220, i8 0, i32 16, i1 false) #10, !annotation !8
  %221 = load ptr, ptr %39, align 4
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i16
  store i16 %223, ptr %4, align 4
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %224, align 2
  store i16 1, ptr %220, align 4
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %225, align 4
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %227 = load i8, ptr %221, align 1
  %228 = zext i8 %227 to i16
  store i16 %228, ptr %226, align 4
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %229, align 2
  %230 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %230, align 4
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %231, align 4
  %232 = load i32, ptr @debug, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %217
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %236

236:                                              ; preds = %234, %217
  %237 = load ptr, ptr %36, align 4
  %238 = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %4, i32 noundef 2) #10
  %239 = icmp eq i32 %238, 2
  %240 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %241 = select i1 %239, i8 %240, i8 -5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 9, ptr %5, align 2
  %242 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %241, ptr %242, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %243 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %243, align 4, !annotation !8
  %244 = load ptr, ptr %39, align 4
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i16
  store i16 %246, ptr %6, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %247, align 2
  store i16 2, ptr %243, align 4
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %248, align 4
  %249 = load i32, ptr @debug, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %236
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %253

253:                                              ; preds = %251, %236
  %254 = load ptr, ptr %36, align 4
  %255 = call i32 @i2c_transfer(ptr noundef %254, ptr noundef nonnull %6, i32 noundef 1) #10
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = zext i8 %241 to i32
  %259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 9, i32 noundef %258, i32 noundef %255) #11
  br label %260

260:                                              ; preds = %257, %253
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %261 = load i32, ptr %206, align 4
  %262 = getelementptr [4 x i8], ptr @cx22700_set_tps.qam_tab, i32 0, i32 %261
  %263 = load i8, ptr %262, align 1
  %264 = load i32, ptr %209, align 4
  %265 = trunc i32 %264 to i8
  %266 = or i8 %263, %265
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 4, ptr %7, align 2
  %267 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %266, ptr %267, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %268 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %268, align 4, !annotation !8
  %269 = load ptr, ptr %39, align 4
  %270 = load i8, ptr %269, align 1
  %271 = zext i8 %270 to i16
  store i16 %271, ptr %8, align 4
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %272, align 2
  %273 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %273, align 4
  %274 = load i32, ptr @debug, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %260
  %277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %278

278:                                              ; preds = %276, %260
  %279 = load ptr, ptr %36, align 4
  %280 = call i32 @i2c_transfer(ptr noundef %279, ptr noundef nonnull %8, i32 noundef 1) #10
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %285, label %282

282:                                              ; preds = %278
  %283 = zext i8 %266 to i32
  %284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 4, i32 noundef %283, i32 noundef %280) #11
  br label %285

285:                                              ; preds = %282, %278
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %286 = load i32, ptr %184, align 4
  %287 = add i32 %286, -1
  %288 = icmp ugt i32 %287, 5
  br i1 %288, label %379, label %289

289:                                              ; preds = %285
  %290 = load i32, ptr %189, align 4
  %291 = add i32 %290, -1
  %292 = icmp ugt i32 %291, 5
  br i1 %292, label %379, label %293

293:                                              ; preds = %289
  %294 = getelementptr [6 x i8], ptr @cx22700_set_tps.fec_tab, i32 0, i32 %287
  %295 = load i8, ptr %294, align 1
  %296 = shl i8 %295, 3
  %297 = getelementptr [6 x i8], ptr @cx22700_set_tps.fec_tab, i32 0, i32 %291
  %298 = load i8, ptr %297, align 1
  %299 = or i8 %296, %298
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i8 5, ptr %9, align 2
  %300 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %299, ptr %300, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %301 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %301, align 4, !annotation !8
  %302 = load ptr, ptr %39, align 4
  %303 = load i8, ptr %302, align 1
  %304 = zext i8 %303 to i16
  store i16 %304, ptr %10, align 4
  %305 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %305, align 2
  %306 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %306, align 4
  %307 = load i32, ptr @debug, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %293
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %311

311:                                              ; preds = %309, %293
  %312 = load ptr, ptr %36, align 4
  %313 = call i32 @i2c_transfer(ptr noundef %312, ptr noundef nonnull %10, i32 noundef 1) #10
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %318, label %315

315:                                              ; preds = %311
  %316 = zext i8 %299 to i32
  %317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 5, i32 noundef %316, i32 noundef %313) #11
  br label %318

318:                                              ; preds = %315, %311
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  %319 = load i32, ptr %198, align 4
  %320 = shl i32 %319, 2
  %321 = load i32, ptr %202, align 4
  %322 = or i32 %320, %321
  %323 = trunc i32 %322 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  store i8 6, ptr %11, align 2
  %324 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %323, ptr %324, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %325 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %325, align 4, !annotation !8
  %326 = load ptr, ptr %39, align 4
  %327 = load i8, ptr %326, align 1
  %328 = zext i8 %327 to i16
  store i16 %328, ptr %12, align 4
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %329, align 2
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %330, align 4
  %331 = load i32, ptr @debug, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %318
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %335

335:                                              ; preds = %333, %318
  %336 = load ptr, ptr %36, align 4
  %337 = call i32 @i2c_transfer(ptr noundef %336, ptr noundef nonnull %12, i32 noundef 1) #10
  %338 = icmp eq i32 %337, 1
  br i1 %338, label %342, label %339

339:                                              ; preds = %335
  %340 = and i32 %322, 255
  %341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 6, i32 noundef %340, i32 noundef %337) #11
  br label %342

342:                                              ; preds = %339, %335
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i8 8, ptr %13, align 2
  %343 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 6, ptr %343, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %344 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %344, align 4, !annotation !8
  %345 = load ptr, ptr %39, align 4
  %346 = load i8, ptr %345, align 1
  %347 = zext i8 %346 to i16
  store i16 %347, ptr %14, align 4
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %348, align 2
  %349 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %349, align 4
  %350 = load i32, ptr @debug, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %342
  %353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %354

354:                                              ; preds = %352, %342
  %355 = load ptr, ptr %36, align 4
  %356 = call i32 @i2c_transfer(ptr noundef %355, ptr noundef nonnull %14, i32 noundef 1) #10
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %360, label %358

358:                                              ; preds = %354
  %359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 8, i32 noundef 6, i32 noundef %356) #11
  br label %360

360:                                              ; preds = %358, %354
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  store i8 8, ptr %15, align 2
  %361 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 4, ptr %361, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %362 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %362, align 4, !annotation !8
  %363 = load ptr, ptr %39, align 4
  %364 = load i8, ptr %363, align 1
  %365 = zext i8 %364 to i16
  store i16 %365, ptr %16, align 4
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %366, align 2
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %367, align 4
  %368 = load i32, ptr @debug, align 4
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %360
  %371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %372

372:                                              ; preds = %370, %360
  %373 = load ptr, ptr %36, align 4
  %374 = call i32 @i2c_transfer(ptr noundef %373, ptr noundef nonnull %16, i32 noundef 1) #10
  %375 = icmp eq i32 %374, 1
  br i1 %375, label %378, label %376

376:                                              ; preds = %372
  %377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 8, i32 noundef 4, i32 noundef %374) #11
  br label %378

378:                                              ; preds = %376, %372
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  br label %379

379:                                              ; preds = %378, %289, %285, %212, %208, %205, %201, %197, %193, %188, %183
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #10
  store i8 55, ptr %19, align 2
  %380 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 1, ptr %380, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %381 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 2, ptr %381, align 4, !annotation !8
  %382 = load ptr, ptr %39, align 4
  %383 = load i8, ptr %382, align 1
  %384 = zext i8 %383 to i16
  store i16 %384, ptr %20, align 4
  %385 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %385, align 2
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %386, align 4
  %387 = load i32, ptr @debug, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %391, label %389

389:                                              ; preds = %379
  %390 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %391

391:                                              ; preds = %389, %379
  %392 = load ptr, ptr %36, align 4
  %393 = call i32 @i2c_transfer(ptr noundef %392, ptr noundef nonnull %20, i32 noundef 1) #10
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %397, label %395

395:                                              ; preds = %391
  %396 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 55, i32 noundef 1, i32 noundef %393) #11
  br label %397

397:                                              ; preds = %395, %391
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #10
  store i8 0, ptr %17, align 2
  %398 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 1, ptr %398, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %399 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %399, align 4, !annotation !8
  %400 = load ptr, ptr %39, align 4
  %401 = load i8, ptr %400, align 1
  %402 = zext i8 %401 to i16
  store i16 %402, ptr %18, align 4
  %403 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %403, align 2
  %404 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %404, align 4
  %405 = load i32, ptr @debug, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %397
  %408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %409

409:                                              ; preds = %407, %397
  %410 = load ptr, ptr %36, align 4
  %411 = call i32 @i2c_transfer(ptr noundef %410, ptr noundef nonnull %18, i32 noundef 1) #10
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %415, label %413

413:                                              ; preds = %409
  %414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 0, i32 noundef 1, i32 noundef %411) #11
  br label %415

415:                                              ; preds = %413, %409
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cx22700_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 150, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 166667, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 333334, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22700_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
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
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #10
  store i8 9, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  %20 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #10, !annotation !8
  %21 = getelementptr inbounds %struct.cx22700_state, ptr %19, i32 0, i32 1
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
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %37

37:                                               ; preds = %35, %2
  %38 = load ptr, ptr %19, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %17, i32 noundef 2) #10
  %40 = icmp eq i32 %39, 2
  %41 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  %42 = and i8 %41, 1
  %43 = zext i8 %42 to i32
  %44 = select i1 %40, i32 %43, i32 1
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = load i32, ptr @debug, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_get_tps) #11
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %48, %37
  %53 = phi i1 [ %51, %48 ], [ true, %37 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 7, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %54 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %54, i8 0, i32 16, i1 false) #10, !annotation !8
  %55 = load ptr, ptr %21, align 4
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %14, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %58, align 2
  store i16 1, ptr %54, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %61 = load i8, ptr %55, align 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %65, align 4
  br i1 %53, label %68, label %66

66:                                               ; preds = %52
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %68

68:                                               ; preds = %66, %52
  %69 = load ptr, ptr %19, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %14, i32 noundef 2) #10
  %71 = icmp eq i32 %70, 2
  %72 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %73 = and i8 %72, 32
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %71, i1 %74, i1 false
  br i1 %75, label %181, label %76

76:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 1, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %77 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %77, i8 0, i32 16, i1 false) #10, !annotation !8
  %78 = load ptr, ptr %21, align 4
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i16
  store i16 %80, ptr %11, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %81, align 2
  store i16 1, ptr %77, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %84 = load i8, ptr %78, align 1
  %85 = zext i8 %84 to i16
  store i16 %85, ptr %83, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %86, align 2
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %88, align 4
  %89 = load i32, ptr @debug, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %76
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %93

93:                                               ; preds = %91, %76
  %94 = load ptr, ptr %19, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %11, i32 noundef 2) #10
  %96 = icmp eq i32 %95, 2
  %97 = load i8, ptr %10, align 1
  %98 = zext i8 %97 to i32
  %99 = select i1 %96, i32 %98, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %100 = and i32 %99, 7
  %101 = call i32 @llvm.umin.i32(i32 %100, i32 4) #10
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %101, ptr %102, align 4
  %103 = lshr i32 %99, 3
  %104 = and i32 %103, 3
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %109, label %106

106:                                              ; preds = %93
  %107 = getelementptr [3 x i32], ptr @cx22700_get_tps.qam_tab, i32 0, i32 %104
  %108 = load i32, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %93
  %110 = phi i32 [ %108, %106 ], [ 6, %93 ]
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %110, ptr %111, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %112 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %112, i8 0, i32 16, i1 false) #10, !annotation !8
  %113 = load ptr, ptr %21, align 4
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %8, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %116, align 2
  store i16 1, ptr %112, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %117, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %119 = load i8, ptr %113, align 1
  %120 = zext i8 %119 to i16
  store i16 %120, ptr %118, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %121, align 2
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %122, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %123, align 4
  %124 = load i32, ptr @debug, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %109
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %128

128:                                              ; preds = %126, %109
  %129 = load ptr, ptr %19, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %8, i32 noundef 2) #10
  %131 = icmp eq i32 %130, 2
  %132 = load i8, ptr %7, align 1
  %133 = zext i8 %132 to i32
  %134 = select i1 %131, i32 %133, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %135 = lshr i32 %134, 3
  %136 = and i32 %135, 7
  %137 = icmp ugt i32 %136, 4
  br i1 %137, label %141, label %138

138:                                              ; preds = %128
  %139 = getelementptr [5 x i32], ptr @cx22700_get_tps.fec_tab, i32 0, i32 %136
  %140 = load i32, ptr %139, align 4
  br label %141

141:                                              ; preds = %138, %128
  %142 = phi i32 [ %140, %138 ], [ 9, %128 ]
  %143 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %142, ptr %143, align 4
  %144 = and i32 %134, 7
  %145 = icmp ugt i32 %144, 4
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = getelementptr [5 x i32], ptr @cx22700_get_tps.fec_tab, i32 0, i32 %144
  %148 = load i32, ptr %147, align 4
  br label %149

149:                                              ; preds = %146, %141
  %150 = phi i32 [ %148, %146 ], [ 9, %141 ]
  %151 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %150, ptr %151, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 3, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %152 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %152, i8 0, i32 16, i1 false) #10, !annotation !8
  %153 = load ptr, ptr %21, align 4
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %5, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %156, align 2
  store i16 1, ptr %152, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %157, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %159 = load i8, ptr %153, align 1
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %158, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %161, align 2
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %162, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %163, align 4
  %164 = load i32, ptr @debug, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %149
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %168

168:                                              ; preds = %166, %149
  %169 = load ptr, ptr %19, align 4
  %170 = call i32 @i2c_transfer(ptr noundef %169, ptr noundef nonnull %5, i32 noundef 2) #10
  %171 = icmp eq i32 %170, 2
  %172 = load i8, ptr %4, align 1
  %173 = zext i8 %172 to i32
  %174 = select i1 %171, i32 %173, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %175 = lshr i32 %174, 6
  %176 = and i32 %175, 3
  %177 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %176, ptr %177, align 4
  %178 = lshr i32 %174, 5
  %179 = and i32 %178, 1
  %180 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %179, ptr %180, align 4
  br label %181

181:                                              ; preds = %168, %68
  %182 = phi i32 [ 0, %168 ], [ -11, %68 ]
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22700_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 13, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = getelementptr inbounds %struct.cx22700_state, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %11, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %14, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %22 = load i8, ptr %16, align 1
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %26, align 4
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %31

31:                                               ; preds = %29, %2
  %32 = load ptr, ptr %13, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %11, i32 noundef 2) #10
  %34 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 14, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %35 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %35, i8 0, i32 16, i1 false) #10, !annotation !8
  %36 = load ptr, ptr %15, align 4
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %8, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %39, align 2
  store i16 1, ptr %35, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %42 = load i8, ptr %36, align 1
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %46, align 4
  %47 = load i32, ptr @debug, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %31
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %51

51:                                               ; preds = %49, %31
  %52 = load ptr, ptr %13, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %8, i32 noundef 2) #10
  %54 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 7, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %55 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %55, i8 0, i32 16, i1 false) #10, !annotation !8
  %56 = load ptr, ptr %15, align 4
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %5, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %59, align 2
  store i16 1, ptr %55, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %62 = load i8, ptr %56, align 1
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %66, align 4
  %67 = load i32, ptr @debug, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %51
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %71

71:                                               ; preds = %69, %51
  %72 = icmp eq i32 %53, 2
  %73 = zext i8 %54 to i32
  %74 = shl nuw nsw i32 %73, 1
  %75 = select i1 %72, i32 %74, i32 65280
  %76 = icmp eq i32 %33, 2
  %77 = zext i8 %34 to i32
  %78 = shl nuw nsw i32 %77, 9
  %79 = select i1 %76, i32 %78, i32 62976
  %80 = or i32 %75, %79
  %81 = load ptr, ptr %13, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %5, i32 noundef 2) #10
  %83 = icmp eq i32 %82, 2
  %84 = load i8, ptr %4, align 1
  %85 = zext i8 %84 to i32
  %86 = select i1 %83, i32 %85, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %87 = and i32 %80, 65280
  %88 = icmp ne i32 %87, 65280
  %89 = zext i1 %88 to i32
  %90 = lshr i32 %86, 4
  %91 = and i32 %90, 2
  %92 = or i32 %91, %89
  %93 = and i32 %86, 16
  %94 = icmp eq i32 %93, 0
  %95 = or i32 %92, 12
  %96 = icmp eq i32 %95, 15
  %97 = select i1 %96, i32 31, i32 %95
  %98 = select i1 %94, i32 %92, i32 %97
  store i32 %98, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22700_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 12, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %10 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #10, !annotation !8
  %11 = getelementptr inbounds %struct.cx22700_state, ptr %9, i32 0, i32 1
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
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %27

27:                                               ; preds = %25, %2
  %28 = load ptr, ptr %9, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %7, i32 noundef 2) #10
  %30 = icmp eq i32 %29, 2
  %31 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %32 = and i8 %31, 127
  %33 = zext i8 %32 to i32
  %34 = select i1 %30, i32 %33, i32 123
  store i32 %34, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 12, ptr %3, align 2
  %35 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %36 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %36, align 4, !annotation !8
  %37 = load ptr, ptr %11, align 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %4, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %41, align 4
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %27
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %46

46:                                               ; preds = %44, %27
  %47 = load ptr, ptr %9, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %4, i32 noundef 1) #10
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 12, i32 noundef 0, i32 noundef %48) #11
  br label %52

52:                                               ; preds = %50, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22700_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 13, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.cx22700_state, ptr %10, i32 0, i32 1
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
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %28

28:                                               ; preds = %26, %2
  %29 = load ptr, ptr %10, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %8, i32 noundef 2) #10
  %31 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 14, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %32 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %32, i8 0, i32 16, i1 false) #10, !annotation !8
  %33 = load ptr, ptr %12, align 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %5, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %36, align 2
  store i16 1, ptr %32, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %39 = load i8, ptr %33, align 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %43, align 4
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %28
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %48

48:                                               ; preds = %46, %28
  %49 = zext i8 %31 to i16
  %50 = icmp eq i32 %30, 2
  %51 = shl i16 %49, 9
  %52 = select i1 %50, i16 %51, i16 -2560
  %53 = load ptr, ptr %10, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %5, i32 noundef 2) #10
  %55 = icmp eq i32 %54, 2
  %56 = load i8, ptr %4, align 1
  %57 = zext i8 %56 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %58 = shl nuw nsw i16 %57, 1
  %59 = select i1 %55, i16 %58, i16 -10
  %60 = or i16 %59, %52
  %61 = xor i16 %60, -1
  store i16 %61, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22700_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 13, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.cx22700_state, ptr %10, i32 0, i32 1
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
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %28

28:                                               ; preds = %26, %2
  %29 = load ptr, ptr %10, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %8, i32 noundef 2) #10
  %31 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 14, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %32 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %32, i8 0, i32 16, i1 false) #10, !annotation !8
  %33 = load ptr, ptr %12, align 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %5, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %36, align 2
  store i16 1, ptr %32, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %39 = load i8, ptr %33, align 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %43, align 4
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %28
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %48

48:                                               ; preds = %46, %28
  %49 = zext i8 %31 to i16
  %50 = icmp eq i32 %30, 2
  %51 = shl i16 %49, 9
  %52 = select i1 %50, i16 %51, i16 -2560
  %53 = load ptr, ptr %10, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %5, i32 noundef 2) #10
  %55 = icmp eq i32 %54, 2
  %56 = load i8, ptr %4, align 1
  %57 = zext i8 %56 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %58 = shl nuw nsw i16 %57, 1
  %59 = select i1 %55, i16 %58, i16 -10
  %60 = or i16 %59, %52
  %61 = xor i16 %60, -1
  store i16 %61, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22700_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 15, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %10 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #10, !annotation !8
  %11 = getelementptr inbounds %struct.cx22700_state, ptr %9, i32 0, i32 1
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
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_readreg) #11
  br label %27

27:                                               ; preds = %25, %2
  %28 = load ptr, ptr %9, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %7, i32 noundef 2) #10
  %30 = icmp eq i32 %29, 2
  %31 = load i8, ptr %6, align 1
  %32 = zext i8 %31 to i32
  %33 = select i1 %30, i32 %32, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  store i32 %33, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 15, ptr %3, align 2
  %34 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
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
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %27
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %45

45:                                               ; preds = %43, %27
  %46 = load ptr, ptr %9, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %4, i32 noundef 1) #10
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 15, i32 noundef 0, i32 noundef %47) #11
  br label %51

51:                                               ; preds = %49, %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx22700_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 10, ptr %5, align 2
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %12 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.cx22700_state, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %23

23:                                               ; preds = %21, %10
  %24 = load ptr, ptr %8, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %6, i32 noundef 1) #10
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 10, i32 noundef 0, i32 noundef %25) #11
  br label %29

29:                                               ; preds = %27, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %50

30:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 10, ptr %3, align 2
  %31 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %32, align 4, !annotation !8
  %33 = getelementptr inbounds %struct.cx22700_state, ptr %8, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %4, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %38, align 4
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx22700_writereg) #11
  br label %43

43:                                               ; preds = %41, %30
  %44 = load ptr, ptr %8, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %4, i32 noundef 1) #10
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx22700_writereg, i32 noundef 10, i32 noundef 1, i32 noundef %45) #11
  br label %49

49:                                               ; preds = %47, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %50

50:                                               ; preds = %49, %29
  %51 = phi i1 [ %26, %29 ], [ %46, %49 ]
  %52 = xor i1 %51, true
  %53 = sext i1 %52 to i32
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

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
