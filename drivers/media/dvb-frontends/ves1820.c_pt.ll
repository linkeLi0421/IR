; ModuleID = '/llk/IR/drivers/media/dvb-frontends/ves1820.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ves1820.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ves1820_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ves1820_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ves1820_attach:\09\09\09\09\09"
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
%struct.ves1820_state = type { ptr, ptr, %struct.dvb_frontend, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.ves1820_config = type { i8, i32, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@ves1820_inittab = internal unnamed_addr constant [53 x i8] c"ij\93\1A\12F&\1ACj\AA\AA\1E\85C \E0\00\A1\00\00\00\00\00\00\00\00\01\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@", align 1
@verbose = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ves1820: pwm=0x%02x\0A\00", align 1
@ves1820_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"VLSI VES1820 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 64000 }, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr null, ptr @ves1820_release, ptr null, ptr @ves1820_init, ptr @ves1820_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ves1820_set_parameters, ptr @ves1820_get_tune_settings, ptr @ves1820_get_frontend, ptr @ves1820_read_status, ptr @ves1820_read_ber, ptr @ves1820_read_signal_strength, ptr @ves1820_read_snr, ptr @ves1820_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_verbose = internal constant [8 x i8] c"verbose\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype249 = internal constant [21 x i8] c"parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose250 = internal constant [73 x i8] c"parm=verbose:print AFC offset after tuning for debugging the PWM setting\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [50 x i8] c"description=VLSI VES1820 DVB-C Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [39 x i8] c"author=Ralph Metzler, Holger Waechtler\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_ves1820_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ves1820_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ves1820_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ves1820_attach to i32), ptr @__kstrtab_ves1820_attach, ptr @__kstrtabns_ves1820_attach }, section "___ksymtab+ves1820_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"ves1820: %s(): readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.ves1820_readreg = private unnamed_addr constant [16 x i8] c"ves1820_readreg\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"ves1820: %s(): writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.ves1820_writereg = private unnamed_addr constant [17 x i8] c"ves1820_writereg\00", align 1
@ves1820_set_parameters.reg0x00 = internal unnamed_addr constant [5 x i8] c"\00\04\08\0C\10", align 1
@ves1820_set_parameters.reg0x01 = internal unnamed_addr constant [5 x i8] c"\8C\8Cjd\\", align 1
@ves1820_set_parameters.reg0x05 = internal unnamed_addr constant [5 x i8] c"\87dF6&", align 1
@ves1820_set_parameters.reg0x08 = internal unnamed_addr constant [5 x i8] c"\A2tC4#", align 1
@ves1820_set_parameters.reg0x09 = internal unnamed_addr constant [5 x i8] c"\91\96j~k", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ves1820: AFC (%d) %dHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ves1820: [AFC (%d) %dHz]\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_verbose250, ptr @__UNIQUE_ID_verbosetype249, ptr @__ksymtab_ves1820_attach, ptr @__param_verbose], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ves1820_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1052) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ves1820_state, ptr %8, i32 0, i32 3
  store i8 105, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ves1820_state, ptr %8, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  store ptr %1, ptr %8, align 8
  %13 = getelementptr inbounds %struct.ves1820_state, ptr %8, i32 0, i32 4
  store i8 %2, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 6656, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %14 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = load i8, ptr %0, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 2, ptr %14, align 4
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
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 2) #10
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %10
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 26, i32 noundef %23) #11
  br label %27

27:                                               ; preds = %25, %10
  %28 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  %29 = and i8 %28, -16
  %30 = icmp eq i8 %29, 112
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32, ptr @verbose, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = zext i8 %2 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %35) #11
  br label %37

37:                                               ; preds = %34, %31
  %38 = getelementptr inbounds %struct.ves1820_state, ptr %8, i32 0, i32 2
  %39 = getelementptr inbounds %struct.ves1820_state, ptr %8, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %39, ptr noundef nonnull align 4 dereferenceable(544) @ves1820_ops, i32 544, i1 false)
  %40 = getelementptr inbounds %struct.ves1820_config, ptr %0, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 7
  %43 = getelementptr inbounds %struct.ves1820_state, ptr %8, i32 0, i32 2, i32 1, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  %44 = lshr i32 %41, 3
  %45 = getelementptr inbounds %struct.ves1820_state, ptr %8, i32 0, i32 2, i32 1, i32 0, i32 6
  store i32 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.ves1820_state, ptr %8, i32 0, i32 2, i32 3
  store ptr %8, ptr %46, align 8
  br label %48

47:                                               ; preds = %27, %3
  call void @kfree(ptr noundef %8) #10
  br label %48

48:                                               ; preds = %47, %37
  %49 = phi ptr [ null, %47 ], [ %38, %37 ]
  ret ptr %49
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
define internal void @ves1820_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1820_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #10
  %12 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 0, ptr %8, align 1
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %14 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.ves1820_state, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %9, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %20, align 4
  %21 = load ptr, ptr %11, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %9, i32 noundef 1) #10
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 0, i32 noundef 0, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #10
  %27 = getelementptr inbounds i8, ptr %6, i32 1
  %28 = getelementptr inbounds i8, ptr %6, i32 2
  %29 = getelementptr inbounds i8, ptr %7, i32 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  br label %32

32:                                               ; preds = %46, %26
  %33 = phi i32 [ 0, %26 ], [ %47, %46 ]
  %34 = trunc i32 %33 to i8
  %35 = getelementptr [53 x i8], ptr @ves1820_inittab, i32 0, i32 %33
  %36 = load i8, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  store i8 %34, ptr %27, align 1
  store i8 %36, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  store i32 0, ptr %29, align 4, !annotation !8
  %37 = load ptr, ptr %15, align 4
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %7, align 4
  store i16 0, ptr %30, align 2
  store i16 3, ptr %29, align 4
  store ptr %6, ptr %31, align 4
  %40 = load ptr, ptr %11, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %7, i32 noundef 1) #10
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = zext i8 %36 to i32
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef %33, i32 noundef %44, i32 noundef %41) #11
  br label %46

46:                                               ; preds = %43, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  %47 = add nuw nsw i32 %33, 1
  %48 = icmp eq i32 %47, 53
  br i1 %48, label %49, label %32

49:                                               ; preds = %46
  %50 = load ptr, ptr %15, align 4
  %51 = getelementptr inbounds %struct.ves1820_config, ptr %50, i32 0, i32 2
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  %56 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %4, align 1
  store i8 2, ptr %56, align 1
  %57 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 -101, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %58 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %58, align 4, !annotation !8
  %59 = load ptr, ptr %15, align 4
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %5, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %63, align 4
  %64 = load ptr, ptr %11, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %5, i32 noundef 1) #10
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %69, label %67

67:                                               ; preds = %55
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 2, i32 noundef 155, i32 noundef %65) #11
  br label %69

69:                                               ; preds = %67, %55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  br label %70

70:                                               ; preds = %69, %49
  %71 = getelementptr inbounds %struct.ves1820_state, ptr %11, i32 0, i32 4
  %72 = load i8, ptr %71, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  %73 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %2, align 1
  store i8 52, ptr %73, align 1
  %74 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %72, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %75 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %75, align 4, !annotation !8
  %76 = load ptr, ptr %15, align 4
  %77 = load i8, ptr %76, align 4
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %3, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %80, align 4
  %81 = load ptr, ptr %11, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %3, i32 noundef 1) #10
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %87, label %84

84:                                               ; preds = %70
  %85 = zext i8 %72 to i32
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 52, i32 noundef %85, i32 noundef %82) #11
  br label %87

87:                                               ; preds = %84, %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1820_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %4, align 1
  store i8 27, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 2, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %10 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.ves1820_state, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %5, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %16, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %5, i32 noundef 1) #10
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 27, i32 noundef 2, i32 noundef %18) #11
  br label %22

22:                                               ; preds = %20, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  %23 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %2, align 1
  store i8 0, ptr %23, align 1
  %24 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 -128, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %25 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %25, align 4, !annotation !8
  %26 = load ptr, ptr %11, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %3, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %30, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %3, i32 noundef 1) #10
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %36, label %34

34:                                               ; preds = %22
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 0, i32 noundef 128, i32 noundef %32) #11
  br label %36

36:                                               ; preds = %34, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1820_set_parameters(ptr noundef %0) #0 {
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
  %26 = alloca [3 x i8], align 1
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [3 x i8], align 1
  %29 = alloca %struct.i2c_msg, align 4
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = icmp ugt i32 %34, 4
  br i1 %35, label %393, label %36

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = tail call i32 %38(ptr noundef %0) #10
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 %43(ptr noundef %0, i32 noundef 0) #10
  br label %47

47:                                               ; preds = %45, %40, %36
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ves1820_state, ptr %31, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ves1820_config, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = lshr i32 %53, 1
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 %49) #10
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 500000) #10
  %57 = lshr i32 %53, 4
  %58 = icmp ult i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = lshr i32 %53, 5
  %61 = icmp ult i32 %56, %60
  %62 = select i1 %61, i32 2, i32 %59
  %63 = lshr i32 %53, 6
  %64 = icmp ult i32 %56, %63
  %65 = select i1 %64, i32 3, i32 %62
  %66 = zext i32 %53 to i64
  %67 = mul nuw nsw i64 %66, 10
  %68 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8848438214218402808, i64 %67, i32 0) #12
  %69 = extractvalue { i64, i32 } %68, 0
  %70 = extractvalue { i64, i32 } %68, 1
  %71 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8848438214218402808, i64 %67, i64 %69, i32 %70) #12
  %72 = extractvalue { i64, i32 } %71, 0
  %73 = lshr i64 %72, 6
  %74 = zext i32 %56 to i64
  %75 = icmp ugt i64 %73, %74
  %76 = lshr i64 %67, 5
  %77 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %76, i64 3689348814741910323) #12, !srcloc !9
  %78 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %76, i64 %77) #12, !srcloc !10
  %79 = icmp ugt i64 %78, %74
  %80 = lshr i64 %72, 7
  %81 = icmp ugt i64 %80, %74
  %82 = lshr i64 %67, 6
  %83 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %82, i64 3689348814741910323) #12, !srcloc !9
  %84 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %82, i64 %83) #12, !srcloc !10
  %85 = icmp ugt i64 %84, %74
  %86 = lshr i64 %72, 8
  %87 = icmp ugt i64 %86, %74
  %88 = lshr i64 %67, 7
  %89 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %88, i64 3689348814741910323) #12, !srcloc !9
  %90 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %88, i64 %89) #12, !srcloc !10
  %91 = icmp ugt i64 %90, %74
  %92 = lshr i64 %72, 9
  %93 = icmp ugt i64 %92, %74
  %94 = shl i32 %56, %65
  %95 = shl i32 %94, 4
  %96 = freeze i32 %95
  %97 = freeze i32 %57
  %98 = udiv i32 %96, %97
  %99 = mul i32 %98, %97
  %100 = sub i32 %96, %99
  %101 = shl i32 %100, 8
  %102 = shl i32 %98, 8
  %103 = freeze i32 %57
  %104 = udiv i32 %101, %103
  %105 = add i32 %104, %102
  %106 = mul i32 %104, %103
  %107 = sub i32 %101, %106
  %108 = shl i32 %107, 8
  %109 = shl i32 %105, 8
  %110 = add i32 %108, %60
  %111 = udiv i32 %110, %57
  %112 = add i32 %109, %111
  %113 = shl i32 %53, 5
  %114 = udiv i32 %113, %94
  %115 = add nuw i32 %114, 1
  %116 = lshr i32 %115, 1
  %117 = tail call i32 @llvm.umin.i32(i32 %116, i32 255) #10
  %118 = select i1 %75, i8 83, i8 67
  %119 = select i1 %79, i8 67, i8 %118
  %120 = select i1 %81, i8 83, i8 %119
  %121 = select i1 %85, i8 67, i8 %120
  %122 = select i1 %87, i8 83, i8 %121
  %123 = select i1 %91, i8 67, i8 %122
  %124 = select i1 %93, i8 83, i8 %123
  %125 = trunc i32 %65 to i8
  %126 = shl nuw i8 %125, 6
  %127 = or i8 %126, 26
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %28) #10
  %128 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 0, ptr %28, align 1
  store i8 3, ptr %128, align 1
  %129 = getelementptr inbounds i8, ptr %28, i32 2
  store i8 %127, ptr %129, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %130 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 3, ptr %130, align 4, !annotation !8
  %131 = load i8, ptr %51, align 4
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %29, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %134, align 4
  %135 = load ptr, ptr %31, align 4
  %136 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %29, i32 noundef 1) #10
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %141, label %138

138:                                              ; preds = %47
  %139 = zext i8 %127 to i32
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 3, i32 noundef %139, i32 noundef %136) #11
  br label %141

141:                                              ; preds = %138, %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %28) #10
  %142 = trunc i32 %112 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %26) #10
  %143 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 0, ptr %26, align 1
  store i8 10, ptr %143, align 1
  %144 = getelementptr inbounds i8, ptr %26, i32 2
  store i8 %142, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %145 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 3, ptr %145, align 4, !annotation !8
  %146 = load ptr, ptr %50, align 4
  %147 = load i8, ptr %146, align 4
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %27, align 4
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %149, align 2
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %150, align 4
  %151 = load ptr, ptr %31, align 4
  %152 = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %27, i32 noundef 1) #10
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %157, label %154

154:                                              ; preds = %141
  %155 = and i32 %112, 255
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 10, i32 noundef %155, i32 noundef %152) #11
  br label %157

157:                                              ; preds = %154, %141
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %26) #10
  %158 = lshr i32 %112, 8
  %159 = trunc i32 %158 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %24) #10
  %160 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 0, ptr %24, align 1
  store i8 11, ptr %160, align 1
  %161 = getelementptr inbounds i8, ptr %24, i32 2
  store i8 %159, ptr %161, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %162 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 3, ptr %162, align 4, !annotation !8
  %163 = load ptr, ptr %50, align 4
  %164 = load i8, ptr %163, align 4
  %165 = zext i8 %164 to i16
  store i16 %165, ptr %25, align 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %166, align 2
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %167, align 4
  %168 = load ptr, ptr %31, align 4
  %169 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %25, i32 noundef 1) #10
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %174, label %171

171:                                              ; preds = %157
  %172 = and i32 %158, 255
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 11, i32 noundef %172, i32 noundef %169) #11
  br label %174

174:                                              ; preds = %171, %157
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %24) #10
  %175 = lshr i32 %112, 16
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 63
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %22) #10
  %178 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 0, ptr %22, align 1
  store i8 12, ptr %178, align 1
  %179 = getelementptr inbounds i8, ptr %22, i32 2
  store i8 %177, ptr %179, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %180 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 3, ptr %180, align 4, !annotation !8
  %181 = load ptr, ptr %50, align 4
  %182 = load i8, ptr %181, align 4
  %183 = zext i8 %182 to i16
  store i16 %183, ptr %23, align 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %184, align 2
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %185, align 4
  %186 = load ptr, ptr %31, align 4
  %187 = call i32 @i2c_transfer(ptr noundef %186, ptr noundef nonnull %23, i32 noundef 1) #10
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %192, label %189

189:                                              ; preds = %174
  %190 = zext i8 %177 to i32
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 12, i32 noundef %190, i32 noundef %187) #11
  br label %192

192:                                              ; preds = %189, %174
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %22) #10
  %193 = trunc i32 %117 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %20) #10
  %194 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 0, ptr %20, align 1
  store i8 13, ptr %194, align 1
  %195 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 %193, ptr %195, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %196 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 3, ptr %196, align 4, !annotation !8
  %197 = load ptr, ptr %50, align 4
  %198 = load i8, ptr %197, align 4
  %199 = zext i8 %198 to i16
  store i16 %199, ptr %21, align 4
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %200, align 2
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %201, align 4
  %202 = load ptr, ptr %31, align 4
  %203 = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %21, i32 noundef 1) #10
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %207, label %205

205:                                              ; preds = %192
  %206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 13, i32 noundef %117, i32 noundef %203) #11
  br label %207

207:                                              ; preds = %205, %192
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %18) #10
  %208 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 0, ptr %18, align 1
  store i8 14, ptr %208, align 1
  %209 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 %124, ptr %209, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %210 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 3, ptr %210, align 4, !annotation !8
  %211 = load ptr, ptr %50, align 4
  %212 = load i8, ptr %211, align 4
  %213 = zext i8 %212 to i16
  store i16 %213, ptr %19, align 4
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %214, align 2
  %215 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %215, align 4
  %216 = load ptr, ptr %31, align 4
  %217 = call i32 @i2c_transfer(ptr noundef %216, ptr noundef nonnull %19, i32 noundef 1) #10
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %222, label %219

219:                                              ; preds = %207
  %220 = zext i8 %124 to i32
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 14, i32 noundef %220, i32 noundef %217) #11
  br label %222

222:                                              ; preds = %219, %207
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #10
  %223 = getelementptr inbounds %struct.ves1820_state, ptr %31, i32 0, i32 4
  %224 = load i8, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #10
  %225 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 0, ptr %16, align 1
  store i8 52, ptr %225, align 1
  %226 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 %224, ptr %226, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %227 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %227, align 4, !annotation !8
  %228 = load ptr, ptr %50, align 4
  %229 = load i8, ptr %228, align 4
  %230 = zext i8 %229 to i16
  store i16 %230, ptr %17, align 4
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %231, align 2
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %232, align 4
  %233 = load ptr, ptr %31, align 4
  %234 = call i32 @i2c_transfer(ptr noundef %233, ptr noundef nonnull %17, i32 noundef 1) #10
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %239, label %236

236:                                              ; preds = %222
  %237 = zext i8 %224 to i32
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 52, i32 noundef %237, i32 noundef %234) #11
  br label %239

239:                                              ; preds = %236, %222
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #10
  %240 = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x01, i32 0, i32 %34
  %241 = load i8, ptr %240, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #10
  %242 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 0, ptr %14, align 1
  store i8 1, ptr %242, align 1
  %243 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 %241, ptr %243, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %244 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %244, align 4, !annotation !8
  %245 = load ptr, ptr %50, align 4
  %246 = load i8, ptr %245, align 4
  %247 = zext i8 %246 to i16
  store i16 %247, ptr %15, align 4
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %248, align 2
  %249 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %249, align 4
  %250 = load ptr, ptr %31, align 4
  %251 = call i32 @i2c_transfer(ptr noundef %250, ptr noundef nonnull %15, i32 noundef 1) #10
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %256, label %253

253:                                              ; preds = %239
  %254 = zext i8 %241 to i32
  %255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 1, i32 noundef %254, i32 noundef %251) #11
  br label %256

256:                                              ; preds = %253, %239
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #10
  %257 = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x05, i32 0, i32 %34
  %258 = load i8, ptr %257, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #10
  %259 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 0, ptr %12, align 1
  store i8 5, ptr %259, align 1
  %260 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 %258, ptr %260, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %261 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %261, align 4, !annotation !8
  %262 = load ptr, ptr %50, align 4
  %263 = load i8, ptr %262, align 4
  %264 = zext i8 %263 to i16
  store i16 %264, ptr %13, align 4
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %265, align 2
  %266 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %266, align 4
  %267 = load ptr, ptr %31, align 4
  %268 = call i32 @i2c_transfer(ptr noundef %267, ptr noundef nonnull %13, i32 noundef 1) #10
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %273, label %270

270:                                              ; preds = %256
  %271 = zext i8 %258 to i32
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 5, i32 noundef %271, i32 noundef %268) #11
  br label %273

273:                                              ; preds = %270, %256
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #10
  %274 = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x08, i32 0, i32 %34
  %275 = load i8, ptr %274, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #10
  %276 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 0, ptr %10, align 1
  store i8 8, ptr %276, align 1
  %277 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 %275, ptr %277, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %278 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %278, align 4, !annotation !8
  %279 = load ptr, ptr %50, align 4
  %280 = load i8, ptr %279, align 4
  %281 = zext i8 %280 to i16
  store i16 %281, ptr %11, align 4
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %282, align 2
  %283 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %283, align 4
  %284 = load ptr, ptr %31, align 4
  %285 = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %11, i32 noundef 1) #10
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %290, label %287

287:                                              ; preds = %273
  %288 = zext i8 %275 to i32
  %289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 8, i32 noundef %288, i32 noundef %285) #11
  br label %290

290:                                              ; preds = %287, %273
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #10
  %291 = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x09, i32 0, i32 %34
  %292 = load i8, ptr %291, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #10
  %293 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 0, ptr %8, align 1
  store i8 9, ptr %293, align 1
  %294 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 %292, ptr %294, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %295 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %295, align 4, !annotation !8
  %296 = load ptr, ptr %50, align 4
  %297 = load i8, ptr %296, align 4
  %298 = zext i8 %297 to i16
  store i16 %298, ptr %9, align 4
  %299 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %299, align 2
  %300 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %300, align 4
  %301 = load ptr, ptr %31, align 4
  %302 = call i32 @i2c_transfer(ptr noundef %301, ptr noundef nonnull %9, i32 noundef 1) #10
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %307, label %304

304:                                              ; preds = %290
  %305 = zext i8 %292 to i32
  %306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 9, i32 noundef %305, i32 noundef %302) #11
  br label %307

307:                                              ; preds = %304, %290
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #10
  %308 = getelementptr [5 x i8], ptr @ves1820_set_parameters.reg0x00, i32 0, i32 %34
  %309 = load i8, ptr %308, align 1
  %310 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %311 = load i32, ptr %310, align 4
  %312 = getelementptr inbounds %struct.ves1820_state, ptr %31, i32 0, i32 3
  %313 = load i8, ptr %312, align 4
  %314 = and i8 %313, 98
  %315 = or i8 %314, %309
  switch i32 %311, label %316 [
    i32 1, label %318
    i32 0, label %328
  ]

316:                                              ; preds = %307
  %317 = load ptr, ptr %50, align 4
  br label %338

318:                                              ; preds = %307
  %319 = load ptr, ptr %50, align 4
  %320 = getelementptr inbounds %struct.ves1820_config, ptr %319, i32 0, i32 2
  %321 = load i8, ptr %320, align 4
  %322 = and i8 %321, 1
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %318
  %325 = or i8 %315, 32
  br label %338

326:                                              ; preds = %318
  %327 = and i8 %315, -33
  br label %338

328:                                              ; preds = %307
  %329 = load ptr, ptr %50, align 4
  %330 = getelementptr inbounds %struct.ves1820_config, ptr %329, i32 0, i32 2
  %331 = load i8, ptr %330, align 4
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %328
  %335 = and i8 %315, -33
  br label %338

336:                                              ; preds = %328
  %337 = or i8 %315, 32
  br label %338

338:                                              ; preds = %336, %334, %326, %324, %316
  %339 = phi ptr [ %319, %326 ], [ %319, %324 ], [ %329, %336 ], [ %329, %334 ], [ %317, %316 ]
  %340 = phi i8 [ %327, %326 ], [ %325, %324 ], [ %337, %336 ], [ %335, %334 ], [ %315, %316 ]
  %341 = and i8 %340, -2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #10
  %342 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %6, align 1
  store i8 0, ptr %342, align 1
  %343 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %341, ptr %343, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %344 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %344, align 4, !annotation !8
  %345 = load i8, ptr %339, align 4
  %346 = zext i8 %345 to i16
  store i16 %346, ptr %7, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %347, align 2
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %348, align 4
  %349 = load ptr, ptr %31, align 4
  %350 = call i32 @i2c_transfer(ptr noundef %349, ptr noundef nonnull %7, i32 noundef 1) #10
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %355, label %352

352:                                              ; preds = %338
  %353 = zext i8 %341 to i32
  %354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 0, i32 noundef %353, i32 noundef %350) #11
  br label %355

355:                                              ; preds = %352, %338
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  %356 = or i8 %340, 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  %357 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %4, align 1
  store i8 0, ptr %357, align 1
  %358 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %356, ptr %358, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %359 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %359, align 4, !annotation !8
  %360 = load ptr, ptr %50, align 4
  %361 = load i8, ptr %360, align 4
  %362 = zext i8 %361 to i16
  store i16 %362, ptr %5, align 4
  %363 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %363, align 2
  %364 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %364, align 4
  %365 = load ptr, ptr %31, align 4
  %366 = call i32 @i2c_transfer(ptr noundef %365, ptr noundef nonnull %5, i32 noundef 1) #10
  %367 = icmp eq i32 %366, 1
  br i1 %367, label %371, label %368

368:                                              ; preds = %355
  %369 = zext i8 %356 to i32
  %370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 0, i32 noundef %369, i32 noundef %366) #11
  br label %371

371:                                              ; preds = %368, %355
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  store i8 %340, ptr %312, align 4
  %372 = load ptr, ptr %50, align 4
  %373 = getelementptr inbounds %struct.ves1820_config, ptr %372, i32 0, i32 2
  %374 = load i8, ptr %373, align 4
  %375 = shl i8 %374, 2
  %376 = and i8 %375, 8
  %377 = or i8 %376, -109
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  %378 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %2, align 1
  store i8 2, ptr %378, align 1
  %379 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %377, ptr %379, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %380 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %380, align 4, !annotation !8
  %381 = load ptr, ptr %50, align 4
  %382 = load i8, ptr %381, align 4
  %383 = zext i8 %382 to i16
  store i16 %383, ptr %3, align 4
  %384 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %384, align 2
  %385 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %385, align 4
  %386 = load ptr, ptr %31, align 4
  %387 = call i32 @i2c_transfer(ptr noundef %386, ptr noundef nonnull %3, i32 noundef 1) #10
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %392, label %389

389:                                              ; preds = %371
  %390 = zext i8 %377 to i32
  %391 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 2, i32 noundef %390, i32 noundef %387) #11
  br label %392

392:                                              ; preds = %389, %371
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  br label %393

393:                                              ; preds = %392, %1
  %394 = phi i32 [ 0, %392 ], [ -22, %1 ]
  ret i32 %394
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ves1820_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 200, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1820_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 4352, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.ves1820_state, ptr %10, i32 0, i32 1
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
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #10
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 17, i32 noundef %25) #11
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %31 = zext i8 %30 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 6400, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %32 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %32, i8 0, i32 16, i1 false) #10, !annotation !8
  %33 = load ptr, ptr %12, align 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %5, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %36, align 2
  store i16 2, ptr %32, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %39 = load i8, ptr %33, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %43, align 4
  %44 = load ptr, ptr %10, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %5, i32 noundef 2) #10
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %49, label %47

47:                                               ; preds = %29
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 25, i32 noundef %45) #11
  br label %49

49:                                               ; preds = %47, %29
  %50 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %51 = load i32, ptr @verbose, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = and i32 %31, 2
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @.str.4, ptr @.str.3
  %57 = sext i8 %50 to i32
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  %59 = load i32, ptr %58, align 4
  %60 = mul i32 %59, %57
  %61 = sub i32 0, %60
  %62 = ashr i32 %61, 10
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %56, i32 noundef %57, i32 noundef %62) #11
  br label %64

64:                                               ; preds = %53, %49
  %65 = load ptr, ptr %12, align 4
  %66 = getelementptr inbounds %struct.ves1820_config, ptr %65, i32 0, i32 2
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ves1820_state, ptr %10, i32 0, i32 3
  %69 = load i8, ptr %68, align 4
  %70 = lshr i8 %69, 5
  %71 = xor i8 %70, %67
  %72 = and i8 %71, 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ves1820_state, ptr %10, i32 0, i32 3
  %76 = load i8, ptr %75, align 4
  %77 = lshr i8 %76, 2
  %78 = and i8 %77, 7
  %79 = add nuw nsw i8 %78, 1
  %80 = zext i8 %79 to i32
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 0, ptr %82, align 4
  %83 = load i32, ptr %1, align 4
  %84 = add i32 %83, 31250
  %85 = urem i32 %84, 62500
  %86 = sub i32 %84, %85
  store i32 %86, ptr %1, align 4
  %87 = and i32 %31, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %64
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  %91 = load i32, ptr %90, align 4
  %92 = sext i8 %50 to i32
  %93 = mul i32 %91, %92
  %94 = ashr i32 %93, 10
  %95 = sub i32 %86, %94
  store i32 %95, ptr %1, align 4
  br label %96

96:                                               ; preds = %89, %64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1820_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 4352, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.ves1820_state, ptr %7, i32 0, i32 1
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
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 17, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %1, align 4
  %33 = or i32 %32, 1
  store i32 %33, ptr %1, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = and i32 %28, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %1, align 4
  %39 = or i32 %38, 6
  store i32 %39, ptr %1, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = and i32 %28, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %1, align 4
  %45 = or i32 %44, 8
  store i32 %45, ptr %1, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = and i32 %28, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %1, align 4
  %51 = or i32 %50, 16
  store i32 %51, ptr %1, align 4
  br label %52

52:                                               ; preds = %49, %46
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1820_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i16 5120, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = getelementptr inbounds %struct.ves1820_state, ptr %13, i32 0, i32 1
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
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %11, i32 noundef 2) #10
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 20, i32 noundef %28) #11
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 5376, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %34 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #10, !annotation !8
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
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %8, i32 noundef 2) #10
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %51, label %49

49:                                               ; preds = %32
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 21, i32 noundef %47) #11
  br label %51

51:                                               ; preds = %49, %32
  %52 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 5632, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %53 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %53, i8 0, i32 16, i1 false) #10, !annotation !8
  %54 = load ptr, ptr %15, align 4
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %5, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %57, align 2
  store i16 2, ptr %53, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %60 = load i8, ptr %54, align 4
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %64, align 4
  %65 = load ptr, ptr %13, align 4
  %66 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %5, i32 noundef 2) #10
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %70, label %68

68:                                               ; preds = %51
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 22, i32 noundef %66) #11
  br label %70

70:                                               ; preds = %68, %51
  %71 = zext i8 %52 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = zext i8 %33 to i32
  %74 = or i32 %72, %73
  %75 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %76 = and i8 %75, 15
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 16
  %79 = or i32 %78, %74
  %80 = mul nuw nsw i32 %79, 10
  store i32 %80, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1820_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 5888, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.ves1820_state, ptr %7, i32 0, i32 1
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
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 23, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or i32 %29, %28
  %31 = trunc i32 %30 to i16
  store i16 %31, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1820_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 6144, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.ves1820_state, ptr %7, i32 0, i32 1
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
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 24, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %28 = xor i8 %27, -1
  %29 = zext i8 %28 to i16
  %30 = mul nuw i16 %29, 257
  store i16 %30, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ves1820_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 4864, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %12 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #10, !annotation !8
  %13 = getelementptr inbounds %struct.ves1820_state, ptr %11, i32 0, i32 1
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
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %9, i32 noundef 2) #10
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ves1820_readreg, i32 noundef 19, i32 noundef %26) #11
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %32 = and i8 %31, 127
  %33 = zext i8 %32 to i32
  %34 = icmp eq i8 %32, 127
  %35 = select i1 %34, i32 -1, i32 %33
  store i32 %35, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  %36 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %5, align 1
  store i8 16, ptr %36, align 1
  %37 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 -64, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %38 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %38, align 4, !annotation !8
  %39 = load ptr, ptr %13, align 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %6, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %43, align 4
  %44 = load ptr, ptr %11, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %6, i32 noundef 1) #10
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %30
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 16, i32 noundef 192, i32 noundef %45) #11
  br label %49

49:                                               ; preds = %47, %30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  %50 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %3, align 1
  store i8 16, ptr %50, align 1
  %51 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 -32, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %52 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %52, align 4, !annotation !8
  %53 = load ptr, ptr %13, align 4
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %4, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %57, align 4
  %58 = load ptr, ptr %11, align 4
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %4, i32 noundef 1) #10
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %63, label %61

61:                                               ; preds = %49
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ves1820_writereg, i32 noundef 16, i32 noundef 224, i32 noundef %59) #11
  br label %63

63:                                               ; preds = %61, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 186013, i64 186040}
!10 = !{i64 186353, i64 186380, i64 186414, i64 186435}
