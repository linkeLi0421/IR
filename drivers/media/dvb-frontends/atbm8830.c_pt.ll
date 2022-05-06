; ModuleID = '/llk/IR/drivers/media/dvb-frontends/atbm8830.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/atbm8830.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atbm8830_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22atbm8830_attach\22\09\09\09\09\09"
module asm "__kstrtabns_atbm8830_attach:\09\09\09\09\09"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atbm_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.atbm8830_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"\017atbm8830: %s()\0A\00", align 1
@__func__.atbm8830_attach = private unnamed_addr constant [16 x i8] c"atbm8830_attach\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\017atbm8830: %s atbm8830/8831 not found at i2c addr 0x%02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\017atbm8830: atbm8830 chip id: 0x%02X\0A\00", align 1
@atbm8830_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"AltoBeam ATBM8830/8831 DMB-TH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 474000000, i32 858000000, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 721408 }, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr null, ptr @atbm8830_release, ptr null, ptr @atbm8830_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atbm8830_set_fe, ptr @atbm8830_get_tune_settings, ptr @atbm8830_get_fe, ptr @atbm8830_read_status, ptr @atbm8830_read_ber, ptr @atbm8830_read_signal_strength, ptr @atbm8830_read_snr, ptr @atbm8830_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atbm8830_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"\017atbm8830: %s() error_out\0A\00", align 1
@__kstrtab_atbm8830_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_atbm8830_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_atbm8830_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atbm8830_attach to i32), ptr @__kstrtab_atbm8830_attach, ptr @__kstrtabns_atbm8830_attach }, section "___ksymtab+atbm8830_attach", align 4
@__UNIQUE_ID_description251 = internal constant [62 x i8] c"description=AltoBeam ATBM8830/8831 GB20600 demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [48 x i8] c"author=David T. L. Wong <davidtlwong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"\017atbm8830: %s: error reg=0x%04x, ret=%i\0A\00", align 1
@__func__.atbm8830_read_reg = private unnamed_addr constant [18 x i8] c"atbm8830_read_reg\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\017atbm8830: %s: reg=0x%04X, data=0x%02X\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\017atbm8830: %s\0A\00", align 1
@__func__.atbm8830_release = private unnamed_addr constant [17 x i8] c"atbm8830_release\00", align 1
@__func__.atbm8830_set_fe = private unnamed_addr constant [16 x i8] c"atbm8830_set_fe\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"\017atbm8830: Try %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\017atbm8830: ATBM8830 locked!\0A\00", align 1
@__func__.atbm8830_get_fe = private unnamed_addr constant [16 x i8] c"atbm8830_get_fe\00", align 1
@__func__.atbm8830_read_status = private unnamed_addr constant [21 x i8] c"atbm8830_read_status\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\017atbm8830: %s: fe_status=0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\017atbm8830: AGC Lock: %d\0A\00", align 1
@__func__.atbm8830_read_ber = private unnamed_addr constant [18 x i8] c"atbm8830_read_ber\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\017atbm8830: %s: ber=0x%x\0A\00", align 1
@__func__.atbm8830_write_reg = private unnamed_addr constant [19 x i8] c"atbm8830_write_reg\00", align 1
@__func__.atbm8830_read_signal_strength = private unnamed_addr constant [30 x i8] c"atbm8830_read_signal_strength\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"\017atbm8830: AGC PWM = 0x%02X\0A\00", align 1
@__func__.atbm8830_read_snr = private unnamed_addr constant [18 x i8] c"atbm8830_read_snr\00", align 1
@__func__.atbm8830_read_ucblocks = private unnamed_addr constant [23 x i8] c"atbm8830_read_ucblocks\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_atbm8830_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @atbm8830_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.atbm8830_attach) #8
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %1, null
  %11 = or i1 %9, %10
  br i1 %11, label %46, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1048) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.atbm_state, ptr %14, i32 0, i32 1
  store ptr %0, ptr %17, align 4
  store ptr %1, ptr %14, align 8
  %18 = call fastcc i32 @atbm8830_read_reg(ptr noundef nonnull %14, i16 noundef zeroext 0, ptr noundef nonnull %3)
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %19, label %28, label %22

22:                                               ; preds = %16
  br i1 %21, label %45, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.atbm8830_config, ptr %0, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.atbm8830_attach, i32 noundef %26) #8
  br label %40

28:                                               ; preds = %16
  br i1 %21, label %33, label %29

29:                                               ; preds = %28
  %30 = load i8, ptr %3, align 1
  %31 = zext i8 %30 to i32
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %31) #8
  br label %33

33:                                               ; preds = %29, %28
  %34 = getelementptr inbounds %struct.atbm_state, ptr %14, i32 0, i32 2
  %35 = getelementptr inbounds %struct.atbm_state, ptr %14, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %35, ptr noundef nonnull align 4 dereferenceable(544) @atbm8830_ops, i32 544, i1 false)
  %36 = getelementptr inbounds %struct.atbm_state, ptr %14, i32 0, i32 2, i32 3
  store ptr %14, ptr %36, align 8
  %37 = tail call i32 @atbm8830_init(ptr noundef %34)
  %38 = load ptr, ptr %36, align 8
  %39 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %38, i16 noundef zeroext 259, i8 noundef zeroext 1) #7
  br label %46

40:                                               ; preds = %23, %12
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.atbm8830_attach) #8
  br label %45

45:                                               ; preds = %43, %40, %22
  tail call void @kfree(ptr noundef %14) #7
  br label %46

46:                                               ; preds = %45, %33, %8
  %47 = phi ptr [ null, %45 ], [ %34, %33 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret ptr %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atbm8830_read_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [1 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  %8 = zext i16 %1 to i32
  %9 = lshr i16 %1, 8
  %10 = trunc i16 %9 to i8
  store i8 %10, ptr %4, align 2
  %11 = getelementptr inbounds i8, ptr %4, i32 1
  %12 = trunc i16 %1 to i8
  store i8 %12, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i64 0, ptr %6, align 8
  store i16 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %16 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %16, align 4
  store i16 1, ptr %15, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = getelementptr inbounds %struct.atbm_state, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.atbm8830_config, ptr %20, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %6, align 8
  store i16 %23, ptr %7, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %6, i32 noundef 1) #7
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.atbm8830_read_reg, i32 noundef %8, i32 noundef %25) #8
  br label %43

32:                                               ; preds = %3
  %33 = load ptr, ptr %0, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %7, i32 noundef 1) #7
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8, ptr %5, align 1
  store i8 %37, ptr %2, align 1
  %38 = load i32, ptr @debug, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = zext i8 %37 to i32
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.atbm8830_read_reg, i32 noundef %8, i32 noundef %41) #8
  br label %43

43:                                               ; preds = %40, %36, %32, %30, %27
  %44 = phi i32 [ -5, %30 ], [ -5, %27 ], [ -5, %32 ], [ 0, %40 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atbm8830_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atbm_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atbm8830_config, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 20
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8504919899247140640, i64 %10, i32 0) #10, !srcloc !8
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = extractvalue { i64, i32 } %11, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8504919899247140640, i64 %10, i64 %12, i32 %13) #10, !srcloc !9
  %15 = extractvalue { i64, i32 } %14, 0
  %16 = lshr i64 %15, 14
  %17 = trunc i64 %16 to i8
  %18 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2563, i8 noundef zeroext %17) #7
  %19 = lshr i64 %15, 22
  %20 = trunc i64 %19 to i8
  %21 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2564, i8 noundef zeroext %20) #7
  %22 = lshr i64 %15, 30
  %23 = trunc i64 %22 to i8
  %24 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2565, i8 noundef zeroext %23) #7
  %25 = getelementptr inbounds %struct.atbm8830_config, ptr %6, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.atbm8830_config, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1, !annotation !10
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %1
  %32 = sub i32 %26, %29
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 263536508928
  %35 = icmp ult i64 %34, 4294967296
  br i1 %35, label %36, label %40, !prof !11

36:                                               ; preds = %31
  %37 = trunc i64 %34 to i32
  %38 = udiv i32 %37, %29
  %39 = zext i32 %38 to i64
  br label %43

40:                                               ; preds = %31
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %34) #10, !srcloc !12
  %42 = extractvalue { i64, i64 } %41, 1
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i64 [ %39, %36 ], [ %42, %40 ]
  %45 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %44, i32 0) #10, !srcloc !8
  %46 = extractvalue { i64, i32 } %45, 0
  %47 = extractvalue { i64, i32 } %45, 1
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %44, i64 %46, i32 %47) #10, !srcloc !9
  %49 = extractvalue { i64, i32 } %48, 0
  %50 = lshr i64 %49, 9
  %51 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 1, i8 noundef zeroext 1) #7
  %52 = trunc i64 %50 to i8
  %53 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2560, i8 noundef zeroext %52) #7
  %54 = lshr i64 %49, 17
  %55 = trunc i64 %54 to i8
  %56 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2561, i8 noundef zeroext %55) #7
  %57 = lshr i64 %49, 25
  %58 = trunc i64 %57 to i8
  %59 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2562, i8 noundef zeroext %58) #7
  %60 = call fastcc i32 @atbm8830_read_reg(ptr noundef %4, i16 noundef zeroext 1538, ptr noundef nonnull %2) #7
  %61 = load i8, ptr %2, align 1
  %62 = and i8 %61, -4
  %63 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 1538, i8 noundef zeroext %62) #7
  br label %79

64:                                               ; preds = %1
  %65 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 1, i8 noundef zeroext 0) #7
  %66 = call fastcc i32 @atbm8830_read_reg(ptr noundef %4, i16 noundef zeroext 1538, ptr noundef nonnull %2) #7
  %67 = load i8, ptr %2, align 1
  %68 = and i8 %67, -4
  %69 = or i8 %68, 2
  %70 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 1538, i8 noundef zeroext %69) #7
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr inbounds %struct.atbm8830_config, ptr %71, i32 0, i32 7
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  %76 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 3073, i8 noundef zeroext 3) #7
  br label %79

77:                                               ; preds = %64
  %78 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 3073, i8 noundef zeroext 1) #7
  br label %79

79:                                               ; preds = %77, %75, %43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %80 = getelementptr inbounds %struct.atbm8830_config, ptr %6, i32 0, i32 8
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr inbounds %struct.atbm8830_config, ptr %6, i32 0, i32 9
  %83 = load i8, ptr %82, align 2
  %84 = or i8 %83, %81
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.atbm8830_config, ptr %6, i32 0, i32 10
  %88 = load i8, ptr %87, align 1
  %89 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 4128, i8 noundef zeroext %81) #7
  %90 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 4131, i8 noundef zeroext %83) #7
  %91 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 4145, i8 noundef zeroext %88) #7
  br label %92

92:                                               ; preds = %86, %79
  %93 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2459, i8 noundef zeroext 8) #7
  %94 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2460, i8 noundef zeroext 8) #7
  %95 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2461, i8 noundef zeroext 8) #7
  %96 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2462, i8 noundef zeroext 8) #7
  %97 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2463, i8 noundef zeroext 8) #7
  %98 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2395, i8 noundef zeroext 127) #7
  %99 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2507, i8 noundef zeroext 1) #7
  %100 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2508, i8 noundef zeroext 127) #7
  %101 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2509, i8 noundef zeroext 127) #7
  %102 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 3585, i8 noundef zeroext 32) #7
  %103 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2819, i8 noundef zeroext 10) #7
  %104 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2357, i8 noundef zeroext 16) #7
  %105 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2358, i8 noundef zeroext 8) #7
  %106 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2366, i8 noundef zeroext 8) #7
  %107 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2414, i8 noundef zeroext 6) #7
  %108 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2825, i8 noundef zeroext 0) #7
  %109 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 2826, i8 noundef zeroext 8) #7
  %110 = load ptr, ptr %5, align 4
  %111 = getelementptr inbounds %struct.atbm8830_config, ptr %110, i32 0, i32 2
  %112 = load i8, ptr %111, align 2
  %113 = icmp ne i8 %112, 0
  %114 = zext i1 %113 to i8
  %115 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 773, i8 noundef zeroext %114) #7
  %116 = load i8, ptr %111, align 2
  %117 = icmp ne i8 %116, 0
  %118 = zext i1 %117 to i8
  %119 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 779, i8 noundef zeroext %118) #7
  %120 = getelementptr inbounds %struct.atbm8830_config, ptr %110, i32 0, i32 4
  %121 = load i8, ptr %120, align 4
  %122 = icmp ne i8 %121, 0
  %123 = zext i1 %122 to i8
  %124 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 769, i8 noundef zeroext %123) #7
  %125 = getelementptr inbounds %struct.atbm8830_config, ptr %110, i32 0, i32 3
  %126 = load i8, ptr %125, align 1
  %127 = icmp eq i8 %126, 0
  %128 = zext i1 %127 to i8
  %129 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 774, i8 noundef zeroext %128) #7
  %130 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 10, i8 noundef zeroext 0)
  %131 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 524, i8 noundef zeroext 11)
  %132 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 4, i8 noundef zeroext 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atbm8830_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i8
  %7 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %4, i16 noundef zeroext 259, i8 noundef zeroext %6)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atbm8830_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.atbm8830_release) #8
  br label %8

8:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atbm8830_set_fe(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.atbm8830_set_fe) #8
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef 1) #7
  %19 = load ptr, ptr %10, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %19, %17 ], [ %11, %13 ]
  %22 = tail call i32 %21(ptr noundef %0) #7
  %23 = load ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 %23(ptr noundef %0, i32 noundef 0) #7
  br label %27

27:                                               ; preds = %25, %20, %9
  br label %31

28:                                               ; preds = %43
  %29 = add nuw nsw i32 %32, 1
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %52, label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ %29, %28 ], [ 0, %27 ]
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i32 [ 100, %31 ], [ %35, %33 ]
  %35 = add nsw i32 %34, -1
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #7
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %33

38:                                               ; preds = %33
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %32) #8
  br label %43

43:                                               ; preds = %41, %38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1, !annotation !10
  %44 = call fastcc i32 @atbm8830_read_reg(ptr noundef %4, i16 noundef zeroext 781, ptr noundef nonnull %2) #7
  %45 = load i8, ptr %2, align 1
  %46 = icmp eq i8 %45, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  br i1 %46, label %47, label %28

47:                                               ; preds = %43
  %48 = load i32, ptr @debug, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %52

52:                                               ; preds = %50, %47, %28
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @atbm8830_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i32 0, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atbm8830_get_fe(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.atbm8830_get_fe) #8
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 8000000, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 0, ptr %15, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atbm8830_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.atbm8830_read_status) #8
  br label %11

11:                                               ; preds = %9, %2
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !10
  %12 = call fastcc i32 @atbm8830_read_reg(ptr noundef %6, i16 noundef zeroext 781, ptr noundef nonnull %3) #7
  %13 = load i8, ptr %3, align 1
  %14 = icmp eq i8 %13, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, ptr %1, align 4
  %17 = or i32 %16, 31
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %1, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.atbm8830_read_status, i32 noundef %22) #8
  br label %24

24:                                               ; preds = %21, %18
  %25 = call fastcc i32 @atbm8830_read_reg(ptr noundef %6, i16 noundef zeroext 4135, ptr noundef nonnull %4)
  %26 = load i32, ptr @debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8, ptr %4, align 1
  %30 = zext i8 %29 to i32
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %30) #8
  br label %32

32:                                               ; preds = %28, %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atbm8830_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !10
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.atbm8830_read_ber) #8
  br label %10

10:                                               ; preds = %8, %2
  %11 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %5, i16 noundef zeroext 2125, i8 noundef zeroext 1) #7
  %12 = call fastcc i32 @atbm8830_read_reg(ptr noundef %5, i16 noundef zeroext 2821, ptr noundef nonnull %3)
  %13 = load i8, ptr %3, align 1
  %14 = and i8 %13, 127
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = call fastcc i32 @atbm8830_read_reg(ptr noundef %5, i16 noundef zeroext 2820, ptr noundef nonnull %3)
  %18 = load i8, ptr %3, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %5, i16 noundef zeroext 2125, i8 noundef zeroext 0) #7
  %22 = mul nuw nsw i32 %20, 100
  %23 = udiv i32 %22, 32767
  store i32 %23, ptr %1, align 4
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %10
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.atbm8830_read_ber, i32 noundef %23) #8
  br label %28

28:                                               ; preds = %26, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atbm8830_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !10
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.atbm8830_read_signal_strength) #8
  br label %10

10:                                               ; preds = %8, %2
  %11 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %5, i16 noundef zeroext 2125, i8 noundef zeroext 1) #7
  %12 = call fastcc i32 @atbm8830_read_reg(ptr noundef %5, i16 noundef zeroext 4137, ptr noundef nonnull %3)
  %13 = load i8, ptr %3, align 1
  %14 = and i8 %13, 3
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = call fastcc i32 @atbm8830_read_reg(ptr noundef %5, i16 noundef zeroext 4136, ptr noundef nonnull %3)
  %18 = load i8, ptr %3, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %5, i16 noundef zeroext 2125, i8 noundef zeroext 0) #7
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %20) #8
  br label %26

26:                                               ; preds = %24, %10
  %27 = mul i32 %20, 67043328
  %28 = lshr exact i32 %27, 10
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atbm8830_read_snr(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.atbm8830_read_snr) #8
  br label %7

7:                                                ; preds = %5, %2
  store i16 0, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atbm8830_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.atbm8830_read_ucblocks) #8
  br label %7

7:                                                ; preds = %5, %2
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atbm8830_write_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [1 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca %struct.i2c_msg, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  %8 = lshr i16 %1, 8
  %9 = trunc i16 %8 to i8
  store i8 %9, ptr %4, align 2
  %10 = getelementptr inbounds i8, ptr %4, i32 1
  %11 = trunc i16 %1 to i8
  store i8 %11, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 %2, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i64 0, ptr %6, align 8
  store i16 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  store i64 0, ptr %7, align 8
  store i16 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.atbm_state, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.atbm8830_config, ptr %17, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %6, align 8
  store i16 %20, ptr %7, align 8
  %21 = load i32, ptr @debug, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = zext i16 %1 to i32
  %25 = zext i8 %2 to i32
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.atbm8830_write_reg, i32 noundef %24, i32 noundef %25) #8
  br label %27

27:                                               ; preds = %23, %3
  %28 = load ptr, ptr %0, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %6, i32 noundef 1) #7
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %7, i32 noundef 1) #7
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, i32 0, i32 -5
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i32 [ %35, %31 ], [ -5, %27 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  ret i32 %37
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }

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
!8 = !{i64 178802, i64 178829, i64 178851, i64 178879}
!9 = !{i64 179210, i64 179237, i64 179270, i64 179291, i64 179318, i64 179344}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147686530, i64 2147686810, i64 2147687144, i64 2147687478}
