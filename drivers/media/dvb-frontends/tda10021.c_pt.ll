; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda10021.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10021.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10021_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10021_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10021_attach:\09\09\09\09\09"
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
%struct.qam_params = type { i8, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda10021_state = type { ptr, ptr, %struct.dvb_frontend, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda1002x_config = type { i8, i8 }

@tda10021_inittab = internal unnamed_addr constant [64 x i8] c"sj#\0A\027w\1A7j\17\8A\1E\86C@\B8?\A1\00\CD\01\00\FF\11\00|10 \00\00\02\00\00}\00\00\00\00\07\003\11\0D\95\08X\00\00\80\00\80\FF\00\00\04-/\FF\00\00\00\00", align 1
@.str = private unnamed_addr constant [42 x i8] c"TDA10021: i2c-addr = 0x%02x, id = 0x%02x\0A\00", align 1
@tda10021_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10021 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 451875, i32 7230000, i32 0, i32 65024 }, [8 x i8] c"\01\12\00\00\00\00\00\00", ptr null, ptr @tda10021_release, ptr null, ptr @tda10021_init, ptr @tda10021_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10021_set_parameters, ptr null, ptr @tda10021_get_frontend, ptr @tda10021_read_status, ptr @tda10021_read_ber, ptr @tda10021_read_signal_strength, ptr @tda10021_read_snr, ptr @tda10021_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10021_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_verbose = internal constant [8 x i8] c"verbose\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global i32 0, align 4
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype249 = internal constant [21 x i8] c"parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose250 = internal constant [73 x i8] c"parm=verbose:print AFC offset after tuning for debugging the PWM setting\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [54 x i8] c"description=Philips TDA10021 DVB-C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [54 x i8] c"author=Ralph Metzler, Holger Waechtler, Markus Schulz\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda10021_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10021_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10021_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10021_attach to i32), ptr @__kstrtab_tda10021_attach, ptr @__kstrtabns_tda10021_attach }, section "___ksymtab+tda10021_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"DVB: TDA10021: %s: readreg error (ret == %i)\0A\00", align 1
@__func__.tda10021_readreg = private unnamed_addr constant [17 x i8] c"tda10021_readreg\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"DVB: TDA10021(%d): %s, writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__._tda10021_writereg = private unnamed_addr constant [19 x i8] c"_tda10021_writereg\00", align 1
@tda10021_set_parameters.qam_params = internal unnamed_addr constant [6 x %struct.qam_params] [%struct.qam_params { i8 20, i8 120, i8 120, i8 -116, i8 -106 }, %struct.qam_params { i8 0, i8 -116, i8 -121, i8 -94, i8 -111 }, %struct.qam_params { i8 4, i8 -116, i8 100, i8 116, i8 -106 }, %struct.qam_params { i8 8, i8 106, i8 70, i8 67, i8 106 }, %struct.qam_params { i8 12, i8 120, i8 54, i8 52, i8 126 }, %struct.qam_params { i8 16, i8 92, i8 38, i8 35, i8 107 }], align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"DVB: TDA10021(%d): AFC (%d) %dHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"DVB: TDA10021(%d): [AFC (%d) %dHz]\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"tda10021: lock tuner fails\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"tda10021: unlock tuner fails\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_verbose250, ptr @__UNIQUE_ID_verbosetype249, ptr @__ksymtab_tda10021_attach, ptr @__param_verbose], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda10021_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1052) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tda10021_state, ptr %8, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  store ptr %1, ptr %8, align 8
  %12 = getelementptr inbounds %struct.tda10021_state, ptr %8, i32 0, i32 3
  store i8 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.tda10021_state, ptr %8, i32 0, i32 4
  store i8 115, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 26, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %14 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #9, !annotation !8
  %15 = load i8, ptr %0, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %14, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %22, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 2) #9
  %24 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 240
  %27 = icmp ne i32 %26, 112
  %28 = icmp eq i8 %24, 125
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %10
  %31 = load i8, ptr %0, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %32, i32 noundef %25) #10
  %34 = getelementptr inbounds %struct.tda10021_state, ptr %8, i32 0, i32 2
  %35 = getelementptr inbounds %struct.tda10021_state, ptr %8, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %35, ptr noundef nonnull align 4 dereferenceable(544) @tda10021_ops, i32 544, i1 false)
  %36 = getelementptr inbounds %struct.tda10021_state, ptr %8, i32 0, i32 2, i32 3
  store ptr %8, ptr %36, align 8
  br label %38

37:                                               ; preds = %10, %3
  call void @kfree(ptr noundef %8) #9
  br label %38

38:                                               ; preds = %37, %30
  %39 = phi ptr [ null, %37 ], [ %34, %30 ]
  ret ptr %39
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
define internal void @tda10021_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %6, i32 1
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  %12 = getelementptr inbounds %struct.tda10021_state, ptr %9, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %15 = getelementptr inbounds %struct.tda10021_state, ptr %9, i32 0, i32 2, i32 2
  br label %16

16:                                               ; preds = %32, %1
  %17 = phi i32 [ 0, %1 ], [ %33, %32 ]
  %18 = trunc i32 %17 to i8
  %19 = getelementptr [64 x i8], ptr @tda10021_inittab, i32 0, i32 %17
  %20 = load i8, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 %18, ptr %6, align 2
  store i8 %20, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  store i32 0, ptr %11, align 4, !annotation !8
  %21 = load ptr, ptr %12, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %7, align 4
  store i16 0, ptr %13, align 2
  store i16 2, ptr %11, align 4
  store ptr %6, ptr %14, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %7, i32 noundef 1) #9
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = load ptr, ptr %15, align 4
  %29 = load i32, ptr %28, align 4
  %30 = zext i8 %20 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %29, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef %17, i32 noundef %30, i32 noundef %25) #10
  br label %32

32:                                               ; preds = %27, %16
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %33 = add nuw nsw i32 %17, 1
  %34 = icmp eq i32 %33, 64
  br i1 %34, label %35, label %16

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tda10021_state, ptr %9, i32 0, i32 3
  %37 = load i8, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 52, ptr %4, align 2
  %38 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %37, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %39 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %39, align 4, !annotation !8
  %40 = load ptr, ptr %12, align 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %5, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %44, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %5, i32 noundef 1) #9
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %35
  %49 = load ptr, ptr %15, align 4
  %50 = load i32, ptr %49, align 4
  %51 = zext i8 %37 to i32
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %50, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 52, i32 noundef %51, i32 noundef %46) #10
  br label %53

53:                                               ; preds = %48, %35
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 42, ptr %2, align 2
  %54 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 35, ptr %54, align 1
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
  br i1 %63, label %68, label %64

64:                                               ; preds = %53
  %65 = load ptr, ptr %15, align 4
  %66 = load i32, ptr %65, align 4
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %66, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 42, i32 noundef 35, i32 noundef %62) #10
  br label %68

68:                                               ; preds = %64, %53
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 27, ptr %4, align 2
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 2, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.tda10021_state, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %15, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #9
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.tda10021_state, ptr %7, i32 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %22, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 27, i32 noundef 2, i32 noundef %17) #10
  br label %24

24:                                               ; preds = %19, %1
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 0, ptr %2, align 2
  %25 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -128, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %26, align 4, !annotation !8
  %27 = load ptr, ptr %10, align 4
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %3, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %31, align 4
  %32 = load ptr, ptr %7, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %3, i32 noundef 1) #9
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.tda10021_state, ptr %7, i32 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 4
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %38, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 0, i32 noundef 128, i32 noundef %33) #10
  br label %40

40:                                               ; preds = %35, %24
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_set_parameters(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [1 x i8], align 1
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
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
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  switch i32 %36, label %420 [
    i32 1, label %42
    i32 18, label %41
  ]

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %41, %1
  %43 = phi i1 [ true, %41 ], [ false, %1 ]
  %44 = icmp ult i32 %38, 6
  br i1 %44, label %45, label %420

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %49, label %420

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = tail call i32 %51(ptr noundef %0) #9
  %55 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = tail call i32 %56(ptr noundef %0, i32 noundef 0) #9
  br label %60

60:                                               ; preds = %58, %53, %49
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @llvm.umax.i32(i32 %62, i32 500000) #9
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 28920000) #9
  %65 = icmp ult i32 %64, 3615000
  %66 = zext i1 %65 to i32
  %67 = icmp ult i32 %64, 1807500
  %68 = select i1 %67, i32 2, i32 %66
  %69 = icmp ult i32 %64, 903750
  %70 = select i1 %69, i32 3, i32 %68
  %71 = icmp ult i32 %64, 4702439
  %72 = icmp ult i32 %64, 2351219
  %73 = icmp ult i32 %64, 1175609
  %74 = icmp ult i32 %64, 587804
  %75 = shl nuw nsw i32 %64, %70
  %76 = shl nuw i32 %75, 4
  %77 = freeze i32 %76
  %78 = udiv i32 %77, 3615000
  %79 = mul i32 %78, 3615000
  %80 = sub i32 %77, %79
  %81 = shl nuw nsw i32 %80, 8
  %82 = shl nuw nsw i32 %78, 8
  %83 = freeze i32 %81
  %84 = udiv i32 %83, 3615000
  %85 = add nuw nsw i32 %84, %82
  %86 = mul i32 %84, 3615000
  %87 = sub i32 %83, %86
  %88 = shl nuw nsw i32 %87, 8
  %89 = shl nuw nsw i32 %85, 8
  %90 = add nuw nsw i32 %88, 1807500
  %91 = udiv i32 %90, 3615000
  %92 = add nuw nsw i32 %91, %89
  %93 = udiv i32 1850880000, %75
  %94 = add nuw nsw i32 %93, 1
  %95 = lshr i32 %94, 1
  %96 = tail call i32 @llvm.umin.i32(i32 %95, i32 255) #9
  %97 = select i1 %71, i8 83, i8 67
  %98 = select i1 %65, i8 67, i8 %97
  %99 = select i1 %72, i8 83, i8 %98
  %100 = select i1 %67, i8 67, i8 %99
  %101 = select i1 %73, i8 83, i8 %100
  %102 = select i1 %69, i8 67, i8 %101
  %103 = select i1 %74, i8 83, i8 %102
  %104 = trunc i32 %70 to i8
  %105 = shl nuw i8 %104, 6
  %106 = or i8 %105, 10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #9
  store i8 3, ptr %33, align 2
  %107 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 %106, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #9
  %108 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 2, ptr %108, align 4, !annotation !8
  %109 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %34, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %113, align 2
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %114, align 4
  %115 = load ptr, ptr %40, align 4
  %116 = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %34, i32 noundef 1) #9
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %124, label %118

118:                                              ; preds = %60
  %119 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = load i32, ptr %120, align 4
  %122 = zext i8 %106 to i32
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %121, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 3, i32 noundef %122, i32 noundef %116) #10
  br label %124

124:                                              ; preds = %118, %60
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #9
  %125 = trunc i32 %92 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #9
  store i8 10, ptr %31, align 2
  %126 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 %125, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #9
  %127 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 2, ptr %127, align 4, !annotation !8
  %128 = load ptr, ptr %109, align 4
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i16
  store i16 %130, ptr %32, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %131, align 2
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %132, align 4
  %133 = load ptr, ptr %40, align 4
  %134 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %32, i32 noundef 1) #9
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %142, label %136

136:                                              ; preds = %124
  %137 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %92, 255
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %139, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 10, i32 noundef %140, i32 noundef %134) #10
  br label %142

142:                                              ; preds = %136, %124
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #9
  %143 = lshr i32 %92, 8
  %144 = trunc i32 %143 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #9
  store i8 11, ptr %29, align 2
  %145 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 %144, ptr %145, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #9
  %146 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 2, ptr %146, align 4, !annotation !8
  %147 = load ptr, ptr %109, align 4
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i16
  store i16 %149, ptr %30, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %150, align 2
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %151, align 4
  %152 = load ptr, ptr %40, align 4
  %153 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %30, i32 noundef 1) #9
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %161, label %155

155:                                              ; preds = %142
  %156 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %143, 255
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %158, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 11, i32 noundef %159, i32 noundef %153) #10
  br label %161

161:                                              ; preds = %155, %142
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #9
  %162 = lshr i32 %92, 16
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #9
  store i8 12, ptr %27, align 2
  %165 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 %164, ptr %165, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #9
  %166 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 2, ptr %166, align 4, !annotation !8
  %167 = load ptr, ptr %109, align 4
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i16
  store i16 %169, ptr %28, align 4
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %170, align 2
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %27, ptr %171, align 4
  %172 = load ptr, ptr %40, align 4
  %173 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %28, i32 noundef 1) #9
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %181, label %175

175:                                              ; preds = %161
  %176 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %177 = load ptr, ptr %176, align 4
  %178 = load i32, ptr %177, align 4
  %179 = zext i8 %164 to i32
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %178, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 12, i32 noundef %179, i32 noundef %173) #10
  br label %181

181:                                              ; preds = %175, %161
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #9
  %182 = trunc i32 %96 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #9
  store i8 13, ptr %25, align 2
  %183 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 %182, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #9
  %184 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %184, align 4, !annotation !8
  %185 = load ptr, ptr %109, align 4
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i16
  store i16 %187, ptr %26, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %188, align 2
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %189, align 4
  %190 = load ptr, ptr %40, align 4
  %191 = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %26, i32 noundef 1) #9
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %198, label %193

193:                                              ; preds = %181
  %194 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %195 = load ptr, ptr %194, align 4
  %196 = load i32, ptr %195, align 4
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %196, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 13, i32 noundef %96, i32 noundef %191) #10
  br label %198

198:                                              ; preds = %193, %181
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #9
  store i8 14, ptr %23, align 2
  %199 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 %103, ptr %199, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #9
  %200 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 2, ptr %200, align 4, !annotation !8
  %201 = load ptr, ptr %109, align 4
  %202 = load i8, ptr %201, align 1
  %203 = zext i8 %202 to i16
  store i16 %203, ptr %24, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %204, align 2
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %205, align 4
  %206 = load ptr, ptr %40, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %24, i32 noundef 1) #9
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %215, label %209

209:                                              ; preds = %198
  %210 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %211 = load ptr, ptr %210, align 4
  %212 = load i32, ptr %211, align 4
  %213 = zext i8 %103 to i32
  %214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %212, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 14, i32 noundef %213, i32 noundef %207) #10
  br label %215

215:                                              ; preds = %209, %198
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #9
  %216 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 3
  %217 = load i8, ptr %216, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #9
  store i8 52, ptr %21, align 2
  %218 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 %217, ptr %218, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #9
  %219 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %219, align 4, !annotation !8
  %220 = load ptr, ptr %109, align 4
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i16
  store i16 %222, ptr %22, align 4
  %223 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %223, align 2
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %224, align 4
  %225 = load ptr, ptr %40, align 4
  %226 = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %22, i32 noundef 1) #9
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %234, label %228

228:                                              ; preds = %215
  %229 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %230 = load ptr, ptr %229, align 4
  %231 = load i32, ptr %230, align 4
  %232 = zext i8 %217 to i32
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %231, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 52, i32 noundef %232, i32 noundef %226) #10
  br label %234

234:                                              ; preds = %228, %215
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #9
  %235 = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %38
  %236 = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %38, i32 1
  %237 = load i8, ptr %236, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #9
  store i8 1, ptr %19, align 2
  %238 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 %237, ptr %238, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #9
  %239 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 2, ptr %239, align 4, !annotation !8
  %240 = load ptr, ptr %109, align 4
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i16
  store i16 %242, ptr %20, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %243, align 2
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %244, align 4
  %245 = load ptr, ptr %40, align 4
  %246 = call i32 @i2c_transfer(ptr noundef %245, ptr noundef nonnull %20, i32 noundef 1) #9
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %254, label %248

248:                                              ; preds = %234
  %249 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %250 = load ptr, ptr %249, align 4
  %251 = load i32, ptr %250, align 4
  %252 = zext i8 %237 to i32
  %253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %251, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 1, i32 noundef %252, i32 noundef %246) #10
  br label %254

254:                                              ; preds = %248, %234
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #9
  %255 = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %38, i32 2
  %256 = load i8, ptr %255, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #9
  store i8 5, ptr %17, align 2
  %257 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 %256, ptr %257, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #9
  %258 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %258, align 4, !annotation !8
  %259 = load ptr, ptr %109, align 4
  %260 = load i8, ptr %259, align 1
  %261 = zext i8 %260 to i16
  store i16 %261, ptr %18, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %262, align 2
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %263, align 4
  %264 = load ptr, ptr %40, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %18, i32 noundef 1) #9
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %273, label %267

267:                                              ; preds = %254
  %268 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %269 = load ptr, ptr %268, align 4
  %270 = load i32, ptr %269, align 4
  %271 = zext i8 %256 to i32
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %270, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 5, i32 noundef %271, i32 noundef %265) #10
  br label %273

273:                                              ; preds = %267, %254
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #9
  %274 = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %38, i32 3
  %275 = load i8, ptr %274, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #9
  store i8 8, ptr %15, align 2
  %276 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 %275, ptr %276, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #9
  %277 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %277, align 4, !annotation !8
  %278 = load ptr, ptr %109, align 4
  %279 = load i8, ptr %278, align 1
  %280 = zext i8 %279 to i16
  store i16 %280, ptr %16, align 4
  %281 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %281, align 2
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %282, align 4
  %283 = load ptr, ptr %40, align 4
  %284 = call i32 @i2c_transfer(ptr noundef %283, ptr noundef nonnull %16, i32 noundef 1) #9
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %292, label %286

286:                                              ; preds = %273
  %287 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %288 = load ptr, ptr %287, align 4
  %289 = load i32, ptr %288, align 4
  %290 = zext i8 %275 to i32
  %291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %289, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 8, i32 noundef %290, i32 noundef %284) #10
  br label %292

292:                                              ; preds = %286, %273
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #9
  %293 = getelementptr [6 x %struct.qam_params], ptr @tda10021_set_parameters.qam_params, i32 0, i32 %38, i32 4
  %294 = load i8, ptr %293, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #9
  store i8 9, ptr %13, align 2
  %295 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 %294, ptr %295, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #9
  %296 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %296, align 4, !annotation !8
  %297 = load ptr, ptr %109, align 4
  %298 = load i8, ptr %297, align 1
  %299 = zext i8 %298 to i16
  store i16 %299, ptr %14, align 4
  %300 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %300, align 2
  %301 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %301, align 4
  %302 = load ptr, ptr %40, align 4
  %303 = call i32 @i2c_transfer(ptr noundef %302, ptr noundef nonnull %14, i32 noundef 1) #9
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %311, label %305

305:                                              ; preds = %292
  %306 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %307 = load ptr, ptr %306, align 4
  %308 = load i32, ptr %307, align 4
  %309 = zext i8 %294 to i32
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %308, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 9, i32 noundef %309, i32 noundef %303) #10
  br label %311

311:                                              ; preds = %305, %292
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 61, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  %312 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %312, i8 0, i32 16, i1 false) #9, !annotation !8
  %313 = load ptr, ptr %109, align 4
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i16
  store i16 %315, ptr %12, align 4
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %316, align 2
  store i16 1, ptr %312, align 4
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %317, align 4
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %319 = load i8, ptr %313, align 1
  %320 = zext i8 %319 to i16
  store i16 %320, ptr %318, align 4
  %321 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %321, align 2
  %322 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %322, align 4
  %323 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %323, align 4
  %324 = load ptr, ptr %40, align 4
  %325 = call i32 @i2c_transfer(ptr noundef %324, ptr noundef nonnull %12, i32 noundef 2) #9
  %326 = icmp eq i32 %325, 2
  br i1 %326, label %329, label %327

327:                                              ; preds = %311
  %328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %325) #10
  br label %329

329:                                              ; preds = %327, %311
  %330 = load i8, ptr %11, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  br i1 %43, label %331, label %350

331:                                              ; preds = %329
  %332 = or i8 %330, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 61, ptr %8, align 2
  %333 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %332, ptr %333, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %334 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %334, align 4, !annotation !8
  %335 = load ptr, ptr %109, align 4
  %336 = load i8, ptr %335, align 1
  %337 = zext i8 %336 to i16
  store i16 %337, ptr %9, align 4
  %338 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %338, align 2
  %339 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %339, align 4
  %340 = load ptr, ptr %40, align 4
  %341 = call i32 @i2c_transfer(ptr noundef %340, ptr noundef nonnull %9, i32 noundef 1) #9
  %342 = icmp eq i32 %341, 1
  br i1 %342, label %349, label %343

343:                                              ; preds = %331
  %344 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %345 = load ptr, ptr %344, align 4
  %346 = load i32, ptr %345, align 4
  %347 = zext i8 %332 to i32
  %348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %346, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 61, i32 noundef %347, i32 noundef %341) #10
  br label %349

349:                                              ; preds = %343, %331
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  br label %369

350:                                              ; preds = %329
  %351 = and i8 %330, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 61, ptr %6, align 2
  %352 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %351, ptr %352, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %353 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %353, align 4, !annotation !8
  %354 = load ptr, ptr %109, align 4
  %355 = load i8, ptr %354, align 1
  %356 = zext i8 %355 to i16
  store i16 %356, ptr %7, align 4
  %357 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %357, align 2
  %358 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %358, align 4
  %359 = load ptr, ptr %40, align 4
  %360 = call i32 @i2c_transfer(ptr noundef %359, ptr noundef nonnull %7, i32 noundef 1) #9
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %368, label %362

362:                                              ; preds = %350
  %363 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %364 = load ptr, ptr %363, align 4
  %365 = load i32, ptr %364, align 4
  %366 = zext i8 %351 to i32
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %365, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 61, i32 noundef %366, i32 noundef %360) #10
  br label %368

368:                                              ; preds = %362, %350
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br label %369

369:                                              ; preds = %368, %349
  %370 = load i8, ptr %235, align 1
  %371 = load i32, ptr %46, align 4
  %372 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 4
  %373 = load i8, ptr %372, align 1
  %374 = and i8 %373, 67
  %375 = icmp eq i32 %371, 1
  %376 = load ptr, ptr %109, align 4
  %377 = getelementptr inbounds %struct.tda1002x_config, ptr %376, i32 0, i32 1
  %378 = load i8, ptr %377, align 1
  %379 = icmp eq i8 %378, 0
  %380 = xor i1 %375, %379
  %381 = and i8 %370, -33
  %382 = or i8 %374, %381
  %383 = select i1 %380, i8 0, i8 32
  %384 = or i8 %382, %383
  %385 = and i8 %384, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 0, ptr %4, align 2
  %386 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %385, ptr %386, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %387 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %387, align 4, !annotation !8
  %388 = load i8, ptr %376, align 1
  %389 = zext i8 %388 to i16
  store i16 %389, ptr %5, align 4
  %390 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %390, align 2
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %391, align 4
  %392 = load ptr, ptr %40, align 4
  %393 = call i32 @i2c_transfer(ptr noundef %392, ptr noundef nonnull %5, i32 noundef 1) #9
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %401, label %395

395:                                              ; preds = %369
  %396 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %397 = load ptr, ptr %396, align 4
  %398 = load i32, ptr %397, align 4
  %399 = zext i8 %385 to i32
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %398, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 0, i32 noundef %399, i32 noundef %393) #10
  br label %401

401:                                              ; preds = %395, %369
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %402 = or i8 %384, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 0, ptr %2, align 2
  %403 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %402, ptr %403, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %404 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %404, align 4, !annotation !8
  %405 = load ptr, ptr %109, align 4
  %406 = load i8, ptr %405, align 1
  %407 = zext i8 %406 to i16
  store i16 %407, ptr %3, align 4
  %408 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %408, align 2
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %409, align 4
  %410 = load ptr, ptr %40, align 4
  %411 = call i32 @i2c_transfer(ptr noundef %410, ptr noundef nonnull %3, i32 noundef 1) #9
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %419, label %413

413:                                              ; preds = %401
  %414 = getelementptr inbounds %struct.tda10021_state, ptr %40, i32 0, i32 2, i32 2
  %415 = load ptr, ptr %414, align 4
  %416 = load i32, ptr %415, align 4
  %417 = zext i8 %402 to i32
  %418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %416, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 0, i32 noundef %417, i32 noundef %411) #10
  br label %419

419:                                              ; preds = %413, %401
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  store i8 %384, ptr %372, align 1
  br label %420

420:                                              ; preds = %419, %45, %42, %1
  %421 = phi i32 [ 0, %419 ], [ -22, %1 ], [ -22, %42 ], [ -22, %45 ]
  ret i32 %421
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 17, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.tda10021_state, ptr %10, i32 0, i32 1
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
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %25) #10
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 25, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %31 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #9, !annotation !8
  %32 = load ptr, ptr %12, align 4
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %5, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %35, align 2
  store i16 1, ptr %31, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %38 = load i8, ptr %32, align 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %42, align 4
  %43 = load ptr, ptr %10, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %5, i32 noundef 2) #9
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %48, label %46

46:                                               ; preds = %29
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %44) #10
  br label %48

48:                                               ; preds = %46, %29
  %49 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %50 = load i32, ptr @verbose, align 4
  %51 = icmp eq i32 %50, 0
  %52 = and i8 %30, 2
  br i1 %51, label %66, label %53

53:                                               ; preds = %48
  %54 = icmp eq i8 %52, 0
  %55 = select i1 %54, ptr @.str.4, ptr @.str.3
  %56 = getelementptr inbounds %struct.tda10021_state, ptr %10, i32 0, i32 2, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %57, align 4
  %59 = sext i8 %49 to i32
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = mul i32 %61, %59
  %63 = sub i32 0, %62
  %64 = ashr i32 %63, 10
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %55, i32 noundef %58, i32 noundef %59, i32 noundef %64) #10
  br label %66

66:                                               ; preds = %53, %48
  %67 = getelementptr inbounds %struct.tda10021_state, ptr %10, i32 0, i32 4
  %68 = load i8, ptr %67, align 1
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr inbounds %struct.tda1002x_config, ptr %69, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = icmp ne i8 %71, 0
  %73 = and i8 %68, 32
  %74 = icmp ne i8 %73, 0
  %75 = xor i1 %74, %72
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %76, ptr %77, align 4
  %78 = load i8, ptr %67, align 1
  %79 = lshr i8 %78, 2
  %80 = and i8 %79, 7
  %81 = add nuw nsw i8 %80, 1
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 0, ptr %84, align 4
  %85 = load i32, ptr %1, align 4
  %86 = add i32 %85, 31250
  %87 = urem i32 %86, 62500
  %88 = sub i32 %86, %87
  store i32 %88, ptr %1, align 4
  %89 = icmp eq i8 %52, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %66
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  %92 = load i32, ptr %91, align 4
  %93 = sext i8 %49 to i32
  %94 = mul i32 %92, %93
  %95 = ashr i32 %94, 10
  %96 = sub i32 %88, %95
  store i32 %96, ptr %1, align 4
  br label %97

97:                                               ; preds = %90, %66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 17, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.tda10021_state, ptr %7, i32 0, i32 1
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
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %22) #10
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %1, align 4
  %33 = or i32 %32, 3
  store i32 %33, ptr %1, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = and i32 %28, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %1, align 4
  %39 = or i32 %38, 12
  store i32 %39, ptr %1, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = and i32 %28, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %1, align 4
  %45 = or i32 %44, 16
  store i32 %45, ptr %1, align 4
  br label %46

46:                                               ; preds = %43, %40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
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
  %14 = alloca [1 x i8], align 1
  %15 = alloca [1 x i8], align 1
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #9
  store i8 20, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #9
  store i8 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #9
  %19 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #9, !annotation !8
  %20 = getelementptr inbounds %struct.tda10021_state, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %16, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %24, align 2
  store i16 1, ptr %19, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  %27 = load i8, ptr %21, align 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %31, align 4
  %32 = load ptr, ptr %18, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %16, i32 noundef 2) #9
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %33) #10
  br label %37

37:                                               ; preds = %35, %2
  %38 = load i8, ptr %15, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 21, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  %39 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %39, i8 0, i32 16, i1 false) #9, !annotation !8
  %40 = load ptr, ptr %20, align 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %13, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %43, align 2
  store i16 1, ptr %39, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %46 = load i8, ptr %40, align 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %50, align 4
  %51 = load ptr, ptr %18, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %13, i32 noundef 2) #9
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %56, label %54

54:                                               ; preds = %37
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %52) #10
  br label %56

56:                                               ; preds = %54, %37
  %57 = load i8, ptr %12, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 22, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %58 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %58, i8 0, i32 16, i1 false) #9, !annotation !8
  %59 = load ptr, ptr %20, align 4
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %10, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %62, align 2
  store i16 1, ptr %58, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %65 = load i8, ptr %59, align 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %67, align 2
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %69, align 4
  %70 = load ptr, ptr %18, align 4
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %10, i32 noundef 2) #9
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %75, label %73

73:                                               ; preds = %56
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %71) #10
  br label %75

75:                                               ; preds = %73, %56
  %76 = load i8, ptr %9, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 16, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %77 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %77, i8 0, i32 16, i1 false) #9, !annotation !8
  %78 = load ptr, ptr %20, align 4
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i16
  store i16 %80, ptr %7, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %81, align 2
  store i16 1, ptr %77, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %84 = load i8, ptr %78, align 1
  %85 = zext i8 %84 to i16
  store i16 %85, ptr %83, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %86, align 2
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %88, align 4
  %89 = load ptr, ptr %18, align 4
  %90 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %7, i32 noundef 2) #9
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %94, label %92

92:                                               ; preds = %75
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %90) #10
  br label %94

94:                                               ; preds = %92, %75
  %95 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %96 = and i8 %95, 63
  %97 = or i8 %96, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 16, ptr %3, align 2
  %98 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %97, ptr %98, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %99 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %99, align 4, !annotation !8
  %100 = load ptr, ptr %20, align 4
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %4, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %104, align 4
  %105 = load ptr, ptr %18, align 4
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %4, i32 noundef 1) #9
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %114, label %108

108:                                              ; preds = %94
  %109 = getelementptr inbounds %struct.tda10021_state, ptr %18, i32 0, i32 2, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = load i32, ptr %110, align 4
  %112 = zext i8 %97 to i32
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %111, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 16, i32 noundef %112, i32 noundef %106) #10
  br label %114

114:                                              ; preds = %108, %94
  %115 = zext i8 %57 to i32
  %116 = shl nuw nsw i32 %115, 8
  %117 = zext i8 %38 to i32
  %118 = or i32 %116, %117
  %119 = and i8 %76, 15
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i32 %120, 16
  %122 = or i32 %121, %118
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %123 = mul nuw nsw i32 %122, 10
  store i32 %123, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.tda10021_state, ptr %10, i32 0, i32 1
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
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %25) #10
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 23, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %31 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #9, !annotation !8
  %32 = load ptr, ptr %12, align 4
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %5, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %35, align 2
  store i16 1, ptr %31, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %38 = load i8, ptr %32, align 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %42, align 4
  %43 = load ptr, ptr %10, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %5, i32 noundef 2) #9
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %48, label %46

46:                                               ; preds = %29
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %44) #10
  br label %48

48:                                               ; preds = %46, %29
  %49 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %50 = shl i8 %30, 6
  %51 = ashr i8 %50, 7
  %52 = xor i8 %49, %51
  %53 = zext i8 %52 to i16
  %54 = mul nuw i16 %53, 257
  store i16 %54, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 24, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.tda10021_state, ptr %7, i32 0, i32 1
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
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %22) #10
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %28 = xor i8 %27, -1
  %29 = zext i8 %28 to i16
  %30 = mul nuw i16 %29, 257
  store i16 %30, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 19, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  %12 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #9, !annotation !8
  %13 = getelementptr inbounds %struct.tda10021_state, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %9, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %12, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %20 = load i8, ptr %14, align 1
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
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10021_readreg, i32 noundef %26) #10
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  %32 = and i8 %31, 127
  %33 = zext i8 %32 to i32
  %34 = icmp eq i8 %32, 127
  %35 = select i1 %34, i32 -1, i32 %33
  store i32 %35, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 16, ptr %5, align 2
  %36 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -104, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %37 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %37, align 4, !annotation !8
  %38 = load ptr, ptr %13, align 4
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %6, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %42, align 4
  %43 = load ptr, ptr %11, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %6, i32 noundef 1) #9
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %51, label %46

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.tda10021_state, ptr %11, i32 0, i32 2, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr %48, align 4
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %49, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 16, i32 noundef 152, i32 noundef %44) #10
  br label %51

51:                                               ; preds = %46, %30
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 16, ptr %3, align 2
  %52 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -72, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %53 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %53, align 4, !annotation !8
  %54 = load ptr, ptr %13, align 4
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %4, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %58, align 4
  %59 = load ptr, ptr %11, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %4, i32 noundef 1) #9
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %67, label %62

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.tda10021_state, ptr %11, i32 0, i32 2, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %64, align 4
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %65, ptr noundef nonnull @__func__._tda10021_writereg, i32 noundef 16, i32 noundef 184, i32 noundef %60) #10
  br label %67

67:                                               ; preds = %62, %51
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10021_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i16 -16369, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.tda10021_state, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %6, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %17, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %6, i32 noundef 1) #9
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %23

23:                                               ; preds = %21, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br label %38

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 16399, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %25 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %25, align 4, !annotation !8
  %26 = getelementptr inbounds %struct.tda10021_state, ptr %8, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %4, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %31, align 4
  %32 = load ptr, ptr %8, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %4, i32 noundef 1) #9
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %37

37:                                               ; preds = %35, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %38

38:                                               ; preds = %37, %23
  ret i32 0
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
