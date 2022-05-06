; ModuleID = '/llk/IR/drivers/media/dvb-frontends/l64781.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/l64781.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l64781_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22l64781_attach\22\09\09\09\09\09"
module asm "__kstrtabns_l64781_attach:\09\09\09\09\09"
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
%struct.l64781_state = type { ptr, ptr, %struct.dvb_frontend, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [59 x i8] c"\017l64781: No response to reset and configure broadcast...\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\017l64781: No response to read on I2C bus\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\017l64781: Device doesn't look like L64781\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\017l64781: Read 1 returned unexpected value\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\017l64781: Read 2 returned unexpected value\0A\00", align 1
@l64781_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LSI L64781 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 -2147472210 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @l64781_release, ptr null, ptr @l64781_init, ptr @l64781_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apply_frontend_param, ptr @l64781_get_tune_settings, ptr @get_frontend, ptr @l64781_read_status, ptr @l64781_read_ber, ptr @l64781_read_signal_strength, ptr @l64781_read_snr, ptr @l64781_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__UNIQUE_ID_description251 = internal constant [48 x i8] c"description=LSI L64781 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [39 x i8] c"author=Holger Waechtler, Marko Kohtala\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_l64781_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_l64781_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_l64781_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l64781_attach to i32), ptr @__kstrtab_l64781_attach, ptr @__kstrtabns_l64781_attach }, section "___ksymtab+l64781_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"\017l64781: %s: write_reg error (reg == %02x) = %02x!\0A\00", align 1
@__func__.l64781_writereg = private unnamed_addr constant [16 x i8] c"l64781_writereg\00", align 1
@apply_frontend_param.fec_tab = internal unnamed_addr constant [8 x i8] c"\07\00\01\02\09\03\0A\04", align 1
@apply_frontend_param.qam_tab = internal unnamed_addr constant [4 x i8] c"\02\04\00\06", align 1
@apply_frontend_param.guard_tab = internal unnamed_addr constant [4 x i8] c"\01\02\04\08", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\014Unexpected value for transmission_mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Unexpected value for code_rate_HP\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Unexpected value for code_rate_LP\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\014Unexpected value for modulation\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Unexpected value for hierarchy\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_l64781_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @l64781_attach(ptr noundef %0, ptr noundef %1) #0 {
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
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [1 x i8], align 1
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [1 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 8
  %20 = alloca [1 x i8], align 1
  %21 = alloca [1 x i8], align 1
  %22 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #8
  store i8 26, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #8
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #8
  %23 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %23, i8 0, i32 16, i1 false), !annotation !8
  %24 = load i8, ptr %0, align 1
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %22, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 2
  store i16 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %20, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1
  store i16 %25, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 1
  store i16 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 2
  store i16 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 3
  store ptr %21, ptr %32, align 4
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %34 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 1052) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %169, label %36

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.l64781_state, ptr %34, i32 0, i32 1
  store ptr %0, ptr %37, align 4
  store ptr %1, ptr %34, align 8
  %38 = getelementptr inbounds %struct.l64781_state, ptr %34, i32 0, i32 3
  %39 = load i8, ptr %38, align 8
  %40 = or i8 %39, 1
  store i8 %40, ptr %38, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #8
  store i8 6, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  store i64 4294967296, ptr %19, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %41, align 8
  %42 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %19, i32 noundef 1) #8
  %43 = icmp eq i32 %42, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #8
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %169, label %47

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %169

49:                                               ; preds = %36
  %50 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %22, i32 noundef 2) #8
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr @debug, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %169, label %55

55:                                               ; preds = %52
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %169

57:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #8
  store i8 62, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #8
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #8
  %58 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %58, i8 0, i32 16, i1 false) #8, !annotation !8
  %59 = load i8, ptr %0, align 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %17, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %61, align 2
  store i16 1, ptr %58, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  store i16 %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %66, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %17, i32 noundef 2) #8
  %68 = icmp eq i32 %67, 2
  %69 = load i8, ptr %16, align 1
  %70 = zext i8 %69 to i32
  %71 = select i1 %68, i32 %70, i32 %67
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %57
  %74 = load i32, ptr @debug, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %148, label %76

76:                                               ; preds = %73
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %148

78:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  store i8 62, ptr %13, align 2
  %79 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 90, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  %80 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %80, align 4, !annotation !8
  %81 = load i8, ptr %0, align 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %14, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %83, align 2
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %84, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %14, i32 noundef 1) #8
  %86 = icmp ne i32 %85, 1
  %87 = load i32, ptr @debug, align 4
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 62, i32 noundef %85) #10
  br label %92

92:                                               ; preds = %90, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 26, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  %93 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %93, i8 0, i32 16, i1 false) #8, !annotation !8
  %94 = load i8, ptr %0, align 1
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %12, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %96, align 2
  store i16 1, ptr %93, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %97, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  store i16 %95, ptr %98, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %99, align 2
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %100, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %101, align 4
  %102 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %12, i32 noundef 2) #8
  %103 = icmp eq i32 %102, 2
  %104 = load i8, ptr %11, align 1
  %105 = zext i8 %104 to i32
  %106 = select i1 %103, i32 %105, i32 %102
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %92
  %109 = load i32, ptr @debug, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %153, label %150

111:                                              ; preds = %92
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i8 62, ptr %8, align 2
  %112 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 -91, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %113 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %113, align 4, !annotation !8
  %114 = load i8, ptr %0, align 1
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %9, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %116, align 2
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %117, align 4
  %118 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %9, i32 noundef 1) #8
  %119 = icmp ne i32 %118, 1
  %120 = load i32, ptr @debug, align 4
  %121 = icmp ne i32 %120, 0
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 62, i32 noundef %118) #10
  br label %125

125:                                              ; preds = %123, %111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 26, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %126 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %126, i8 0, i32 16, i1 false) #8, !annotation !8
  %127 = load i8, ptr %0, align 1
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %7, align 4
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %129, align 2
  store i16 1, ptr %126, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %130, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %128, ptr %131, align 4
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %132, align 2
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %133, align 4
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %134, align 4
  %135 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 2) #8
  %136 = icmp eq i32 %135, 2
  %137 = load i8, ptr %6, align 1
  %138 = zext i8 %137 to i32
  %139 = select i1 %136, i32 %138, i32 %135
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %140 = icmp eq i32 %139, 161
  br i1 %140, label %144, label %141

141:                                              ; preds = %125
  %142 = load i32, ptr @debug, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %153, label %150

144:                                              ; preds = %125
  %145 = getelementptr inbounds %struct.l64781_state, ptr %34, i32 0, i32 2
  %146 = getelementptr inbounds %struct.l64781_state, ptr %34, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %146, ptr noundef nonnull align 4 dereferenceable(544) @l64781_ops, i32 544, i1 false)
  %147 = getelementptr inbounds %struct.l64781_state, ptr %34, i32 0, i32 2, i32 3
  store ptr %34, ptr %147, align 8
  br label %170

148:                                              ; preds = %76, %73
  %149 = icmp sgt i32 %71, -1
  br i1 %149, label %153, label %169

150:                                              ; preds = %141, %108
  %151 = phi ptr [ @.str.3, %108 ], [ @.str.4, %141 ]
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %151) #10
  br label %153

153:                                              ; preds = %150, %148, %141, %108
  %154 = trunc i32 %71 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i8 62, ptr %3, align 2
  %155 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %154, ptr %155, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %156 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %156, align 4, !annotation !8
  %157 = load i8, ptr %0, align 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %4, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %159, align 2
  %160 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %160, align 4
  %161 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1) #8
  %162 = icmp ne i32 %161, 1
  %163 = load i32, ptr @debug, align 4
  %164 = icmp ne i32 %163, 0
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %168

166:                                              ; preds = %153
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 62, i32 noundef %161) #10
  br label %168

168:                                              ; preds = %166, %153
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %169

169:                                              ; preds = %168, %148, %55, %52, %47, %44, %2
  call void @kfree(ptr noundef %34) #8
  br label %170

170:                                              ; preds = %169, %144
  %171 = phi ptr [ null, %169 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #8
  ret ptr %171
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l64781_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l64781_init(ptr nocapture noundef readonly %0) #0 {
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
  %18 = alloca [1 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #8
  store i8 6, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  store i64 4294967296, ptr %19, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %22, align 8
  %23 = load ptr, ptr %21, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %19, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #8
  store i8 62, ptr %16, align 2
  %25 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 -91, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  %26 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %26, align 4, !annotation !8
  %27 = getelementptr inbounds %struct.l64781_state, ptr %21, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %17, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %32, align 4
  %33 = load ptr, ptr %21, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %17, i32 noundef 1) #8
  %35 = icmp ne i32 %34, 1
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 62, i32 noundef %34) #10
  br label %41

41:                                               ; preds = %39, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  store i8 42, ptr %14, align 2
  %42 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 4, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  %43 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %43, align 4, !annotation !8
  %44 = load ptr, ptr %27, align 4
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %15, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %48, align 4
  %49 = load ptr, ptr %21, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %15, i32 noundef 1) #8
  %51 = icmp ne i32 %50, 1
  %52 = load i32, ptr @debug, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 42, i32 noundef %50) #10
  br label %57

57:                                               ; preds = %55, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  store i8 42, ptr %12, align 2
  %58 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 0, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #8
  %59 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %59, align 4, !annotation !8
  %60 = load ptr, ptr %27, align 4
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %13, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %64, align 4
  %65 = load ptr, ptr %21, align 4
  %66 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %13, i32 noundef 1) #8
  %67 = icmp ne i32 %66, 1
  %68 = load i32, ptr @debug, align 4
  %69 = icmp ne i32 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 42, i32 noundef %66) #10
  br label %73

73:                                               ; preds = %71, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  store i8 7, ptr %10, align 2
  %74 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 -114, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  %75 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %75, align 4, !annotation !8
  %76 = load ptr, ptr %27, align 4
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %11, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %80, align 4
  %81 = load ptr, ptr %21, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %11, i32 noundef 1) #8
  %83 = icmp ne i32 %82, 1
  %84 = load i32, ptr @debug, align 4
  %85 = icmp ne i32 %84, 0
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 7, i32 noundef %82) #10
  br label %89

89:                                               ; preds = %87, %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i8 11, ptr %8, align 2
  %90 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 -127, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %91 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %91, align 4, !annotation !8
  %92 = load ptr, ptr %27, align 4
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %9, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %95, align 2
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %96, align 4
  %97 = load ptr, ptr %21, align 4
  %98 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %9, i32 noundef 1) #8
  %99 = icmp ne i32 %98, 1
  %100 = load i32, ptr @debug, align 4
  %101 = icmp ne i32 %100, 0
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %105

103:                                              ; preds = %89
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 11, i32 noundef %98) #10
  br label %105

105:                                              ; preds = %103, %89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i8 12, ptr %6, align 2
  %106 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -124, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %107 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %107, align 4, !annotation !8
  %108 = load ptr, ptr %27, align 4
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %7, align 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %111, align 2
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %112, align 4
  %113 = load ptr, ptr %21, align 4
  %114 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %7, i32 noundef 1) #8
  %115 = icmp ne i32 %114, 1
  %116 = load i32, ptr @debug, align 4
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 12, i32 noundef %114) #10
  br label %121

121:                                              ; preds = %119, %105
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 13, ptr %4, align 2
  %122 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -116, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %123 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %123, align 4, !annotation !8
  %124 = load ptr, ptr %27, align 4
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i16
  store i16 %126, ptr %5, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %127, align 2
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %128, align 4
  %129 = load ptr, ptr %21, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %5, i32 noundef 1) #8
  %131 = icmp ne i32 %130, 1
  %132 = load i32, ptr @debug, align 4
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %137

135:                                              ; preds = %121
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 13, i32 noundef %130) #10
  br label %137

137:                                              ; preds = %135, %121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 30, ptr %2, align 2
  %138 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 9, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %139 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %139, align 4, !annotation !8
  %140 = load ptr, ptr %27, align 4
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %3, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %144, align 4
  %145 = load ptr, ptr %21, align 4
  %146 = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %3, i32 noundef 1) #8
  %147 = icmp ne i32 %146, 1
  %148 = load i32, ptr @debug, align 4
  %149 = icmp ne i32 %148, 0
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %151, label %153

151:                                              ; preds = %137
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 30, i32 noundef %146) #10
  br label %153

153:                                              ; preds = %151, %137
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %154 = getelementptr inbounds %struct.l64781_state, ptr %21, i32 0, i32 3
  %155 = load i8, ptr %154, align 4
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = and i8 %155, -2
  store i8 %159, ptr %154, align 4
  call void @msleep(i32 noundef 200) #8
  br label %160

160:                                              ; preds = %158, %153
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l64781_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 62, ptr %2, align 2
  %6 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 90, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.l64781_state, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 1) #8
  %16 = icmp ne i32 %15, 1
  %17 = load i32, ptr @debug, align 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 62, i32 noundef %15) #10
  br label %22

22:                                               ; preds = %20, %1
  %23 = sext i1 %16 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apply_frontend_param(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [1 x i8], align 1
  %12 = alloca [1 x i8], align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
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
  %36 = alloca [2 x i8], align 2
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [2 x i8], align 2
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [2 x i8], align 2
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [2 x i8], align 2
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [2 x i8], align 2
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [2 x i8], align 2
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [2 x i8], align 2
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [2 x i8], align 2
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [2 x i8], align 2
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca [2 x i8], align 2
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca [2 x i8], align 2
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [2 x i8], align 2
  %59 = alloca %struct.i2c_msg, align 4
  %60 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %63 = load i32, ptr %62, align 4
  switch i32 %63, label %606 [
    i32 8000000, label %66
    i32 7000000, label %64
    i32 6000000, label %65
  ]

64:                                               ; preds = %1
  br label %66

65:                                               ; preds = %1
  br label %66

66:                                               ; preds = %65, %64, %1
  %67 = phi i32 [ 6, %65 ], [ 7, %64 ], [ 8, %1 ]
  %68 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = tail call i32 %69(ptr noundef %0) #8
  %73 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = tail call i32 %74(ptr noundef %0, i32 noundef 0) #8
  br label %78

78:                                               ; preds = %76, %71, %66
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = icmp ult i32 %80, 2
  br i1 %81, label %82, label %606

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %84 = load i32, ptr %83, align 4
  switch i32 %84, label %606 [
    i32 1, label %85
    i32 2, label %85
    i32 3, label %85
    i32 5, label %85
    i32 7, label %85
  ]

85:                                               ; preds = %82, %82, %82, %82, %82
  %86 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  %91 = load i32, ptr %90, align 4
  switch i32 %91, label %606 [
    i32 1, label %92
    i32 2, label %92
    i32 3, label %92
    i32 5, label %92
    i32 7, label %92
  ]

92:                                               ; preds = %89, %89, %89, %89, %89, %85
  %93 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %94 = load i32, ptr %93, align 4
  switch i32 %94, label %606 [
    i32 0, label %95
    i32 1, label %95
    i32 3, label %95
  ]

95:                                               ; preds = %92, %92, %92
  %96 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = icmp ult i32 %97, 2
  br i1 %98, label %99, label %606

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %101 = load i32, ptr %100, align 4
  %102 = icmp ugt i32 %101, 3
  %103 = icmp ugt i32 %87, 3
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %606, label %105

105:                                              ; preds = %99
  %106 = udiv i32 524288000, %67
  %107 = udiv i32 %106, 1000000
  %108 = udiv i32 270582937, %67
  %109 = mul nuw nsw i32 %67, 6193152
  %110 = getelementptr [4 x i8], ptr @apply_frontend_param.qam_tab, i32 0, i32 %94
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = mul i32 %109, %112
  %114 = add nuw nsw i32 %84, 1
  %115 = udiv i32 %113, %114
  %116 = getelementptr [4 x i8], ptr @apply_frontend_param.guard_tab, i32 0, i32 %101
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nuw nsw i32 %118, 32
  %120 = udiv i32 %115, %119
  %121 = mul i32 %120, 1000
  %122 = udiv i32 %121, 1008
  %123 = mul nuw nsw i32 %122, %84
  %124 = shl nuw nsw i32 %97, 2
  %125 = or i32 %101, %124
  %126 = trunc i32 %125 to i8
  %127 = getelementptr [8 x i8], ptr @apply_frontend_param.fec_tab, i32 0, i32 %84
  %128 = load i8, ptr %127, align 1
  br i1 %88, label %136, label %129

129:                                              ; preds = %105
  %130 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  %131 = load i32, ptr %130, align 4
  %132 = trunc i32 %131 to i8
  %133 = shl i8 %132, 3
  %134 = add i8 %133, -8
  %135 = or i8 %134, %128
  br label %136

136:                                              ; preds = %129, %105
  %137 = phi i8 [ %135, %129 ], [ %128, %105 ]
  %138 = shl nuw nsw i32 %87, 2
  %139 = or i32 %94, %138
  %140 = trunc i32 %139 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #8
  store i8 4, ptr %58, align 2
  %141 = getelementptr inbounds i8, ptr %58, i32 1
  store i8 %126, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #8
  %142 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 0, ptr %142, align 4, !annotation !8
  %143 = getelementptr inbounds %struct.l64781_state, ptr %61, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i16
  store i16 %146, ptr %59, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %147, align 2
  store i16 2, ptr %142, align 4
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %148, align 4
  %149 = load ptr, ptr %61, align 4
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %59, i32 noundef 1) #8
  %151 = icmp ne i32 %150, 1
  %152 = load i32, ptr @debug, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %155, label %157

155:                                              ; preds = %136
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 4, i32 noundef %150) #10
  br label %157

157:                                              ; preds = %155, %136
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #8
  store i8 5, ptr %56, align 2
  %158 = getelementptr inbounds i8, ptr %56, i32 1
  store i8 %137, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #8
  %159 = getelementptr inbounds i8, ptr %57, i32 4
  store i32 0, ptr %159, align 4, !annotation !8
  %160 = load ptr, ptr %143, align 4
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %57, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %163, align 2
  store i16 2, ptr %159, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %164, align 4
  %165 = load ptr, ptr %61, align 4
  %166 = call i32 @i2c_transfer(ptr noundef %165, ptr noundef nonnull %57, i32 noundef 1) #8
  %167 = icmp ne i32 %166, 1
  %168 = load i32, ptr @debug, align 4
  %169 = icmp ne i32 %168, 0
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %173

171:                                              ; preds = %157
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 5, i32 noundef %166) #10
  br label %173

173:                                              ; preds = %171, %157
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #8
  store i8 6, ptr %54, align 2
  %174 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 %140, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #8
  %175 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 0, ptr %175, align 4, !annotation !8
  %176 = load ptr, ptr %143, align 4
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i16
  store i16 %178, ptr %55, align 4
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %179, align 2
  store i16 2, ptr %175, align 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %180, align 4
  %181 = load ptr, ptr %61, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %55, i32 noundef 1) #8
  %183 = icmp ne i32 %182, 1
  %184 = load i32, ptr @debug, align 4
  %185 = icmp ne i32 %184, 0
  %186 = select i1 %183, i1 %185, i1 false
  br i1 %186, label %187, label %189

187:                                              ; preds = %173
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 6, i32 noundef %182) #10
  br label %189

189:                                              ; preds = %187, %173
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #8
  store i8 7, ptr %52, align 2
  %190 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 -98, ptr %190, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #8
  %191 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 2, ptr %191, align 4, !annotation !8
  %192 = load ptr, ptr %143, align 4
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %53, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %195, align 2
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %196, align 4
  %197 = load ptr, ptr %61, align 4
  %198 = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %53, i32 noundef 1) #8
  %199 = icmp ne i32 %198, 1
  %200 = load i32, ptr @debug, align 4
  %201 = icmp ne i32 %200, 0
  %202 = select i1 %199, i1 %201, i1 false
  br i1 %202, label %203, label %205

203:                                              ; preds = %189
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 7, i32 noundef %198) #10
  br label %205

205:                                              ; preds = %203, %189
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #8
  store i8 8, ptr %50, align 2
  %206 = getelementptr inbounds i8, ptr %50, i32 1
  store i8 0, ptr %206, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #8
  %207 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 2, ptr %207, align 4, !annotation !8
  %208 = load ptr, ptr %143, align 4
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i16
  store i16 %210, ptr %51, align 4
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %211, align 2
  %212 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %212, align 4
  %213 = load ptr, ptr %61, align 4
  %214 = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %51, i32 noundef 1) #8
  %215 = icmp ne i32 %214, 1
  %216 = load i32, ptr @debug, align 4
  %217 = icmp ne i32 %216, 0
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %221

219:                                              ; preds = %205
  %220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 8, i32 noundef %214) #10
  br label %221

221:                                              ; preds = %219, %205
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #8
  store i8 9, ptr %48, align 2
  %222 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 0, ptr %222, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #8
  %223 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 2, ptr %223, align 4, !annotation !8
  %224 = load ptr, ptr %143, align 4
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i16
  store i16 %226, ptr %49, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %227, align 2
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %228, align 4
  %229 = load ptr, ptr %61, align 4
  %230 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %49, i32 noundef 1) #8
  %231 = icmp ne i32 %230, 1
  %232 = load i32, ptr @debug, align 4
  %233 = icmp ne i32 %232, 0
  %234 = select i1 %231, i1 %233, i1 false
  br i1 %234, label %235, label %237

235:                                              ; preds = %221
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 9, i32 noundef %230) #10
  br label %237

237:                                              ; preds = %235, %221
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #8
  store i8 10, ptr %46, align 2
  %238 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 0, ptr %238, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #8
  %239 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 2, ptr %239, align 4, !annotation !8
  %240 = load ptr, ptr %143, align 4
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i16
  store i16 %242, ptr %47, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %243, align 2
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %244, align 4
  %245 = load ptr, ptr %61, align 4
  %246 = call i32 @i2c_transfer(ptr noundef %245, ptr noundef nonnull %47, i32 noundef 1) #8
  %247 = icmp ne i32 %246, 1
  %248 = load i32, ptr @debug, align 4
  %249 = icmp ne i32 %248, 0
  %250 = select i1 %247, i1 %249, i1 false
  br i1 %250, label %251, label %253

251:                                              ; preds = %237
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 10, i32 noundef %246) #10
  br label %253

253:                                              ; preds = %251, %237
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #8
  store i8 7, ptr %44, align 2
  %254 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 -114, ptr %254, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #8
  %255 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 2, ptr %255, align 4, !annotation !8
  %256 = load ptr, ptr %143, align 4
  %257 = load i8, ptr %256, align 1
  %258 = zext i8 %257 to i16
  store i16 %258, ptr %45, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %259, align 2
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %260, align 4
  %261 = load ptr, ptr %61, align 4
  %262 = call i32 @i2c_transfer(ptr noundef %261, ptr noundef nonnull %45, i32 noundef 1) #8
  %263 = icmp ne i32 %262, 1
  %264 = load i32, ptr @debug, align 4
  %265 = icmp ne i32 %264, 0
  %266 = select i1 %263, i1 %265, i1 false
  br i1 %266, label %267, label %269

267:                                              ; preds = %253
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 7, i32 noundef %262) #10
  br label %269

269:                                              ; preds = %267, %253
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #8
  store i8 14, ptr %42, align 2
  %270 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 0, ptr %270, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #8
  %271 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 2, ptr %271, align 4, !annotation !8
  %272 = load ptr, ptr %143, align 4
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i16
  store i16 %274, ptr %43, align 4
  %275 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %275, align 2
  %276 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %276, align 4
  %277 = load ptr, ptr %61, align 4
  %278 = call i32 @i2c_transfer(ptr noundef %277, ptr noundef nonnull %43, i32 noundef 1) #8
  %279 = icmp ne i32 %278, 1
  %280 = load i32, ptr @debug, align 4
  %281 = icmp ne i32 %280, 0
  %282 = select i1 %279, i1 %281, i1 false
  br i1 %282, label %283, label %285

283:                                              ; preds = %269
  %284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 14, i32 noundef %278) #10
  br label %285

285:                                              ; preds = %283, %269
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #8
  store i8 17, ptr %40, align 2
  %286 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 -128, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #8
  %287 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 2, ptr %287, align 4, !annotation !8
  %288 = load ptr, ptr %143, align 4
  %289 = load i8, ptr %288, align 1
  %290 = zext i8 %289 to i16
  store i16 %290, ptr %41, align 4
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %291, align 2
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %292, align 4
  %293 = load ptr, ptr %61, align 4
  %294 = call i32 @i2c_transfer(ptr noundef %293, ptr noundef nonnull %41, i32 noundef 1) #8
  %295 = icmp ne i32 %294, 1
  %296 = load i32, ptr @debug, align 4
  %297 = icmp ne i32 %296, 0
  %298 = select i1 %295, i1 %297, i1 false
  br i1 %298, label %299, label %301

299:                                              ; preds = %285
  %300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 17, i32 noundef %294) #10
  br label %301

301:                                              ; preds = %299, %285
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #8
  store i8 16, ptr %38, align 2
  %302 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 0, ptr %302, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #8
  %303 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 2, ptr %303, align 4, !annotation !8
  %304 = load ptr, ptr %143, align 4
  %305 = load i8, ptr %304, align 1
  %306 = zext i8 %305 to i16
  store i16 %306, ptr %39, align 4
  %307 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %307, align 2
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %308, align 4
  %309 = load ptr, ptr %61, align 4
  %310 = call i32 @i2c_transfer(ptr noundef %309, ptr noundef nonnull %39, i32 noundef 1) #8
  %311 = icmp ne i32 %310, 1
  %312 = load i32, ptr @debug, align 4
  %313 = icmp ne i32 %312, 0
  %314 = select i1 %311, i1 %313, i1 false
  br i1 %314, label %315, label %317

315:                                              ; preds = %301
  %316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 16, i32 noundef %310) #10
  br label %317

317:                                              ; preds = %315, %301
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #8
  store i8 18, ptr %36, align 2
  %318 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 0, ptr %318, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #8
  %319 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 2, ptr %319, align 4, !annotation !8
  %320 = load ptr, ptr %143, align 4
  %321 = load i8, ptr %320, align 1
  %322 = zext i8 %321 to i16
  store i16 %322, ptr %37, align 4
  %323 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %323, align 2
  %324 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %324, align 4
  %325 = load ptr, ptr %61, align 4
  %326 = call i32 @i2c_transfer(ptr noundef %325, ptr noundef nonnull %37, i32 noundef 1) #8
  %327 = icmp ne i32 %326, 1
  %328 = load i32, ptr @debug, align 4
  %329 = icmp ne i32 %328, 0
  %330 = select i1 %327, i1 %329, i1 false
  br i1 %330, label %331, label %333

331:                                              ; preds = %317
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 18, i32 noundef %326) #10
  br label %333

333:                                              ; preds = %331, %317
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #8
  store i8 19, ptr %34, align 2
  %334 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 0, ptr %334, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #8
  %335 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 2, ptr %335, align 4, !annotation !8
  %336 = load ptr, ptr %143, align 4
  %337 = load i8, ptr %336, align 1
  %338 = zext i8 %337 to i16
  store i16 %338, ptr %35, align 4
  %339 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %339, align 2
  %340 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %340, align 4
  %341 = load ptr, ptr %61, align 4
  %342 = call i32 @i2c_transfer(ptr noundef %341, ptr noundef nonnull %35, i32 noundef 1) #8
  %343 = icmp ne i32 %342, 1
  %344 = load i32, ptr @debug, align 4
  %345 = icmp ne i32 %344, 0
  %346 = select i1 %343, i1 %345, i1 false
  br i1 %346, label %347, label %349

347:                                              ; preds = %333
  %348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 19, i32 noundef %342) #10
  br label %349

349:                                              ; preds = %347, %333
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #8
  store i8 17, ptr %32, align 2
  %350 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 0, ptr %350, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #8
  %351 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 2, ptr %351, align 4, !annotation !8
  %352 = load ptr, ptr %143, align 4
  %353 = load i8, ptr %352, align 1
  %354 = zext i8 %353 to i16
  store i16 %354, ptr %33, align 4
  %355 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %355, align 2
  %356 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %356, align 4
  %357 = load ptr, ptr %61, align 4
  %358 = call i32 @i2c_transfer(ptr noundef %357, ptr noundef nonnull %33, i32 noundef 1) #8
  %359 = icmp ne i32 %358, 1
  %360 = load i32, ptr @debug, align 4
  %361 = icmp ne i32 %360, 0
  %362 = select i1 %359, i1 %361, i1 false
  br i1 %362, label %363, label %365

363:                                              ; preds = %349
  %364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 17, i32 noundef %358) #10
  br label %365

365:                                              ; preds = %363, %349
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #8
  %366 = load i32, ptr %96, align 4
  %367 = icmp eq i32 %366, 0
  %368 = select i1 %367, i8 1, i8 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #8
  store i8 21, ptr %30, align 2
  %369 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 %368, ptr %369, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #8
  %370 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 2, ptr %370, align 4, !annotation !8
  %371 = load ptr, ptr %143, align 4
  %372 = load i8, ptr %371, align 1
  %373 = zext i8 %372 to i16
  store i16 %373, ptr %31, align 4
  %374 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %374, align 2
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %375, align 4
  %376 = load ptr, ptr %61, align 4
  %377 = call i32 @i2c_transfer(ptr noundef %376, ptr noundef nonnull %31, i32 noundef 1) #8
  %378 = icmp ne i32 %377, 1
  %379 = load i32, ptr @debug, align 4
  %380 = icmp ne i32 %379, 0
  %381 = select i1 %378, i1 %380, i1 false
  br i1 %381, label %382, label %384

382:                                              ; preds = %365
  %383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 21, i32 noundef %377) #10
  br label %384

384:                                              ; preds = %382, %365
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #8
  %385 = trunc i32 %108 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #8
  store i8 22, ptr %28, align 2
  %386 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 %385, ptr %386, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #8
  %387 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %387, align 4, !annotation !8
  %388 = load ptr, ptr %143, align 4
  %389 = load i8, ptr %388, align 1
  %390 = zext i8 %389 to i16
  store i16 %390, ptr %29, align 4
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %391, align 2
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %392, align 4
  %393 = load ptr, ptr %61, align 4
  %394 = call i32 @i2c_transfer(ptr noundef %393, ptr noundef nonnull %29, i32 noundef 1) #8
  %395 = icmp ne i32 %394, 1
  %396 = load i32, ptr @debug, align 4
  %397 = icmp ne i32 %396, 0
  %398 = select i1 %395, i1 %397, i1 false
  br i1 %398, label %399, label %401

399:                                              ; preds = %384
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 22, i32 noundef %394) #10
  br label %401

401:                                              ; preds = %399, %384
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #8
  %402 = lshr i32 %108, 8
  %403 = trunc i32 %402 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #8
  store i8 23, ptr %26, align 2
  %404 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %403, ptr %404, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #8
  %405 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %405, align 4, !annotation !8
  %406 = load ptr, ptr %143, align 4
  %407 = load i8, ptr %406, align 1
  %408 = zext i8 %407 to i16
  store i16 %408, ptr %27, align 4
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %409, align 2
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %410, align 4
  %411 = load ptr, ptr %61, align 4
  %412 = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %27, i32 noundef 1) #8
  %413 = icmp ne i32 %412, 1
  %414 = load i32, ptr @debug, align 4
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %413, i1 %415, i1 false
  br i1 %416, label %417, label %419

417:                                              ; preds = %401
  %418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 23, i32 noundef %412) #10
  br label %419

419:                                              ; preds = %417, %401
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #8
  %420 = lshr i32 %108, 16
  %421 = trunc i32 %420 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #8
  store i8 24, ptr %24, align 2
  %422 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 %421, ptr %422, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #8
  %423 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %423, align 4, !annotation !8
  %424 = load ptr, ptr %143, align 4
  %425 = load i8, ptr %424, align 1
  %426 = zext i8 %425 to i16
  store i16 %426, ptr %25, align 4
  %427 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %427, align 2
  %428 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %428, align 4
  %429 = load ptr, ptr %61, align 4
  %430 = call i32 @i2c_transfer(ptr noundef %429, ptr noundef nonnull %25, i32 noundef 1) #8
  %431 = icmp ne i32 %430, 1
  %432 = load i32, ptr @debug, align 4
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %431, i1 %433, i1 false
  br i1 %434, label %435, label %437

435:                                              ; preds = %419
  %436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 24, i32 noundef %430) #10
  br label %437

437:                                              ; preds = %435, %419
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #8
  %438 = trunc i32 %123 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #8
  store i8 27, ptr %22, align 2
  %439 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 %438, ptr %439, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #8
  %440 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %440, align 4, !annotation !8
  %441 = load ptr, ptr %143, align 4
  %442 = load i8, ptr %441, align 1
  %443 = zext i8 %442 to i16
  store i16 %443, ptr %23, align 4
  %444 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %444, align 2
  %445 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %445, align 4
  %446 = load ptr, ptr %61, align 4
  %447 = call i32 @i2c_transfer(ptr noundef %446, ptr noundef nonnull %23, i32 noundef 1) #8
  %448 = icmp ne i32 %447, 1
  %449 = load i32, ptr @debug, align 4
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %448, i1 %450, i1 false
  br i1 %451, label %452, label %454

452:                                              ; preds = %437
  %453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 27, i32 noundef %447) #10
  br label %454

454:                                              ; preds = %452, %437
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #8
  %455 = lshr i32 %123, 8
  %456 = trunc i32 %455 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #8
  store i8 28, ptr %20, align 2
  %457 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 %456, ptr %457, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #8
  %458 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %458, align 4, !annotation !8
  %459 = load ptr, ptr %143, align 4
  %460 = load i8, ptr %459, align 1
  %461 = zext i8 %460 to i16
  store i16 %461, ptr %21, align 4
  %462 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %462, align 2
  %463 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %463, align 4
  %464 = load ptr, ptr %61, align 4
  %465 = call i32 @i2c_transfer(ptr noundef %464, ptr noundef nonnull %21, i32 noundef 1) #8
  %466 = icmp ne i32 %465, 1
  %467 = load i32, ptr @debug, align 4
  %468 = icmp ne i32 %467, 0
  %469 = select i1 %466, i1 %468, i1 false
  br i1 %469, label %470, label %472

470:                                              ; preds = %454
  %471 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 28, i32 noundef %465) #10
  br label %472

472:                                              ; preds = %470, %454
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #8
  %473 = lshr i32 %123, 16
  %474 = and i32 %473, 127
  %475 = load i32, ptr %79, align 4
  %476 = icmp eq i32 %475, 1
  %477 = select i1 %476, i32 128, i32 0
  %478 = or i32 %477, %474
  %479 = trunc i32 %478 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #8
  store i8 29, ptr %18, align 2
  %480 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %479, ptr %480, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  %481 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %481, align 4, !annotation !8
  %482 = load ptr, ptr %143, align 4
  %483 = load i8, ptr %482, align 1
  %484 = zext i8 %483 to i16
  store i16 %484, ptr %19, align 4
  %485 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %485, align 2
  %486 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %486, align 4
  %487 = load ptr, ptr %61, align 4
  %488 = call i32 @i2c_transfer(ptr noundef %487, ptr noundef nonnull %19, i32 noundef 1) #8
  %489 = icmp ne i32 %488, 1
  %490 = load i32, ptr @debug, align 4
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %489, i1 %491, i1 false
  br i1 %492, label %493, label %495

493:                                              ; preds = %472
  %494 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 29, i32 noundef %488) #10
  br label %495

495:                                              ; preds = %493, %472
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #8
  %496 = trunc i32 %107 to i8
  %497 = sub nsw i8 0, %496
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #8
  store i8 34, ptr %16, align 2
  %498 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %497, ptr %498, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  %499 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %499, align 4, !annotation !8
  %500 = load ptr, ptr %143, align 4
  %501 = load i8, ptr %500, align 1
  %502 = zext i8 %501 to i16
  store i16 %502, ptr %17, align 4
  %503 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %503, align 2
  %504 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %504, align 4
  %505 = load ptr, ptr %61, align 4
  %506 = call i32 @i2c_transfer(ptr noundef %505, ptr noundef nonnull %17, i32 noundef 1) #8
  %507 = icmp ne i32 %506, 1
  %508 = load i32, ptr @debug, align 4
  %509 = icmp ne i32 %508, 0
  %510 = select i1 %507, i1 %509, i1 false
  br i1 %510, label %511, label %513

511:                                              ; preds = %495
  %512 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 34, i32 noundef %506) #10
  br label %513

513:                                              ; preds = %511, %495
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  store i8 35, ptr %14, align 2
  %514 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 63, ptr %514, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  %515 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %515, align 4, !annotation !8
  %516 = load ptr, ptr %143, align 4
  %517 = load i8, ptr %516, align 1
  %518 = zext i8 %517 to i16
  store i16 %518, ptr %15, align 4
  %519 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %519, align 2
  %520 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %520, align 4
  %521 = load ptr, ptr %61, align 4
  %522 = call i32 @i2c_transfer(ptr noundef %521, ptr noundef nonnull %15, i32 noundef 1) #8
  %523 = icmp ne i32 %522, 1
  %524 = load i32, ptr @debug, align 4
  %525 = icmp ne i32 %524, 0
  %526 = select i1 %523, i1 %525, i1 false
  br i1 %526, label %527, label %529

527:                                              ; preds = %513
  %528 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 35, i32 noundef %522) #10
  br label %529

529:                                              ; preds = %527, %513
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #8
  %530 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %530, i8 0, i32 16, i1 false) #8, !annotation !8
  %531 = load ptr, ptr %143, align 4
  %532 = load i8, ptr %531, align 1
  %533 = zext i8 %532 to i16
  store i16 %533, ptr %13, align 4
  %534 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %534, align 2
  store i16 1, ptr %530, align 4
  %535 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %535, align 4
  %536 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %537 = load i8, ptr %531, align 1
  %538 = zext i8 %537 to i16
  store i16 %538, ptr %536, align 4
  %539 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %539, align 2
  %540 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %540, align 4
  %541 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %541, align 4
  %542 = load ptr, ptr %61, align 4
  %543 = call i32 @i2c_transfer(ptr noundef %542, ptr noundef nonnull %13, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 1, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %544 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %544, i8 0, i32 16, i1 false) #8, !annotation !8
  %545 = load ptr, ptr %143, align 4
  %546 = load i8, ptr %545, align 1
  %547 = zext i8 %546 to i16
  store i16 %547, ptr %10, align 4
  %548 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %548, align 2
  store i16 1, ptr %544, align 4
  %549 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %549, align 4
  %550 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %551 = load i8, ptr %545, align 1
  %552 = zext i8 %551 to i16
  store i16 %552, ptr %550, align 4
  %553 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %553, align 2
  %554 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %554, align 4
  %555 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %555, align 4
  %556 = load ptr, ptr %61, align 4
  %557 = call i32 @i2c_transfer(ptr noundef %556, ptr noundef nonnull %10, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i8 42, ptr %6, align 2
  %558 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %558, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %559 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %559, align 4, !annotation !8
  %560 = load ptr, ptr %143, align 4
  %561 = load i8, ptr %560, align 1
  %562 = zext i8 %561 to i16
  store i16 %562, ptr %7, align 4
  %563 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %563, align 2
  %564 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %564, align 4
  %565 = load ptr, ptr %61, align 4
  %566 = call i32 @i2c_transfer(ptr noundef %565, ptr noundef nonnull %7, i32 noundef 1) #8
  %567 = icmp ne i32 %566, 1
  %568 = load i32, ptr @debug, align 4
  %569 = icmp ne i32 %568, 0
  %570 = select i1 %567, i1 %569, i1 false
  br i1 %570, label %571, label %573

571:                                              ; preds = %529
  %572 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 42, i32 noundef %566) #10
  br label %573

573:                                              ; preds = %571, %529
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 42, ptr %4, align 2
  %574 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 1, ptr %574, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %575 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %575, align 4, !annotation !8
  %576 = load ptr, ptr %143, align 4
  %577 = load i8, ptr %576, align 1
  %578 = zext i8 %577 to i16
  store i16 %578, ptr %5, align 4
  %579 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %579, align 2
  %580 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %580, align 4
  %581 = load ptr, ptr %61, align 4
  %582 = call i32 @i2c_transfer(ptr noundef %581, ptr noundef nonnull %5, i32 noundef 1) #8
  %583 = icmp ne i32 %582, 1
  %584 = load i32, ptr @debug, align 4
  %585 = icmp ne i32 %584, 0
  %586 = select i1 %583, i1 %585, i1 false
  br i1 %586, label %587, label %589

587:                                              ; preds = %573
  %588 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 42, i32 noundef %582) #10
  br label %589

589:                                              ; preds = %587, %573
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 42, ptr %2, align 2
  %590 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 2, ptr %590, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %591 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %591, align 4, !annotation !8
  %592 = load ptr, ptr %143, align 4
  %593 = load i8, ptr %592, align 1
  %594 = zext i8 %593 to i16
  store i16 %594, ptr %3, align 4
  %595 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %595, align 2
  %596 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %596, align 4
  %597 = load ptr, ptr %61, align 4
  %598 = call i32 @i2c_transfer(ptr noundef %597, ptr noundef nonnull %3, i32 noundef 1) #8
  %599 = icmp ne i32 %598, 1
  %600 = load i32, ptr @debug, align 4
  %601 = icmp ne i32 %600, 0
  %602 = select i1 %599, i1 %601, i1 false
  br i1 %602, label %603, label %605

603:                                              ; preds = %589
  %604 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.l64781_writereg, i32 noundef 42, i32 noundef %598) #10
  br label %605

605:                                              ; preds = %603, %589
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %606

606:                                              ; preds = %605, %99, %95, %92, %89, %82, %78, %1
  %607 = phi i32 [ 0, %605 ], [ -22, %1 ], [ -22, %78 ], [ -22, %82 ], [ -22, %89 ], [ -22, %92 ], [ -22, %95 ], [ -22, %99 ]
  ret i32 %607
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @l64781_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 4000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_frontend(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
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
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #8
  store i8 4, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #8
  store i8 0, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #8
  %26 = getelementptr inbounds i8, ptr %23, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %26, i8 0, i32 16, i1 false) #8, !annotation !8
  %27 = getelementptr inbounds %struct.l64781_state, ptr %25, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %23, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %31, align 2
  store i16 1, ptr %26, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %21, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1
  %34 = load i8, ptr %28, align 1
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 1
  store i16 1, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 2
  store i16 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 3
  store ptr %22, ptr %38, align 4
  %39 = load ptr, ptr %25, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %23, i32 noundef 2) #8
  %41 = icmp eq i32 %40, 2
  %42 = load i8, ptr %22, align 1
  %43 = zext i8 %42 to i32
  %44 = select i1 %41, i32 %43, i32 %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #8
  %45 = and i32 %44, 3
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %45, ptr %46, align 4
  %47 = lshr i32 %44, 2
  %48 = and i32 %47, 3
  switch i32 %48, label %53 [
    i32 0, label %49
    i32 1, label %51
  ]

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 0, ptr %50, align 4
  br label %55

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 1, ptr %52, align 4
  br label %55

53:                                               ; preds = %2
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %55

55:                                               ; preds = %53, %51, %49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #8
  store i8 5, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #8
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #8
  %56 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #8, !annotation !8
  %57 = load ptr, ptr %27, align 4
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %20, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %60, align 2
  store i16 1, ptr %56, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %63 = load i8, ptr %57, align 1
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %67, align 4
  %68 = load ptr, ptr %25, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %20, i32 noundef 2) #8
  %70 = icmp eq i32 %69, 2
  %71 = load i8, ptr %19, align 1
  %72 = zext i8 %71 to i32
  %73 = select i1 %70, i32 %72, i32 %69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #8
  %74 = and i32 %73, 7
  switch i32 %74, label %85 [
    i32 0, label %75
    i32 1, label %77
    i32 2, label %79
    i32 3, label %81
    i32 4, label %83
  ]

75:                                               ; preds = %55
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 1, ptr %76, align 4
  br label %87

77:                                               ; preds = %55
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 2, ptr %78, align 4
  br label %87

79:                                               ; preds = %55
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 3, ptr %80, align 4
  br label %87

81:                                               ; preds = %55
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 5, ptr %82, align 4
  br label %87

83:                                               ; preds = %55
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 7, ptr %84, align 4
  br label %87

85:                                               ; preds = %55
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %87

87:                                               ; preds = %85, %83, %81, %79, %77, %75
  %88 = lshr i32 %73, 3
  %89 = and i32 %88, 7
  switch i32 %89, label %100 [
    i32 0, label %90
    i32 1, label %92
    i32 2, label %94
    i32 3, label %96
    i32 4, label %98
  ]

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 1, ptr %91, align 4
  br label %102

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 2, ptr %93, align 4
  br label %102

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 3, ptr %95, align 4
  br label %102

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 5, ptr %97, align 4
  br label %102

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 7, ptr %99, align 4
  br label %102

100:                                              ; preds = %87
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %102

102:                                              ; preds = %100, %98, %96, %94, %92, %90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #8
  store i8 6, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #8
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #8
  %103 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %103, i8 0, i32 16, i1 false) #8, !annotation !8
  %104 = load ptr, ptr %27, align 4
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %17, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %107, align 2
  store i16 1, ptr %103, align 4
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %108, align 4
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %110 = load i8, ptr %104, align 1
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %109, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %112, align 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %113, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %114, align 4
  %115 = load ptr, ptr %25, align 4
  %116 = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %17, i32 noundef 2) #8
  %117 = icmp eq i32 %116, 2
  %118 = load i8, ptr %16, align 1
  %119 = zext i8 %118 to i32
  %120 = select i1 %117, i32 %119, i32 %116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #8
  %121 = and i32 %120, 3
  switch i32 %121, label %128 [
    i32 0, label %122
    i32 1, label %124
    i32 2, label %126
  ]

122:                                              ; preds = %102
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 0, ptr %123, align 4
  br label %130

124:                                              ; preds = %102
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 1, ptr %125, align 4
  br label %130

126:                                              ; preds = %102
  %127 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 3, ptr %127, align 4
  br label %130

128:                                              ; preds = %102
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %130

130:                                              ; preds = %128, %126, %124, %122
  %131 = lshr i32 %120, 2
  %132 = and i32 %131, 7
  switch i32 %132, label %141 [
    i32 0, label %133
    i32 1, label %135
    i32 2, label %137
    i32 3, label %139
  ]

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 0, ptr %134, align 4
  br label %143

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 1, ptr %136, align 4
  br label %143

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 2, ptr %138, align 4
  br label %143

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 3, ptr %140, align 4
  br label %143

141:                                              ; preds = %130
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %143

143:                                              ; preds = %141, %139, %137, %135, %133
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  store i8 29, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #8
  %144 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %144, i8 0, i32 16, i1 false) #8, !annotation !8
  %145 = load ptr, ptr %27, align 4
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i16
  store i16 %147, ptr %14, align 4
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %148, align 2
  store i16 1, ptr %144, align 4
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %149, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %151 = load i8, ptr %145, align 1
  %152 = zext i8 %151 to i16
  store i16 %152, ptr %150, align 4
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %153, align 2
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %154, align 4
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %155, align 4
  %156 = load ptr, ptr %25, align 4
  %157 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %14, i32 noundef 2) #8
  %158 = icmp eq i32 %157, 2
  %159 = load i8, ptr %13, align 1
  %160 = zext i8 %159 to i32
  %161 = select i1 %158, i32 %160, i32 %157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  %162 = lshr i32 %161, 7
  %163 = and i32 %162, 1
  %164 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %163, ptr %164, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 8, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  %165 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %165, i8 0, i32 16, i1 false) #8, !annotation !8
  %166 = load ptr, ptr %27, align 4
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i16
  store i16 %168, ptr %11, align 4
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %169, align 2
  store i16 1, ptr %165, align 4
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %170, align 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %172 = load i8, ptr %166, align 1
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %171, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %174, align 2
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %175, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %176, align 4
  %177 = load ptr, ptr %25, align 4
  %178 = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %11, i32 noundef 2) #8
  %179 = icmp eq i32 %178, 2
  %180 = load i8, ptr %10, align 1
  %181 = zext i8 %180 to i32
  %182 = select i1 %179, i32 %181, i32 %178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 9, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %183 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %183, i8 0, i32 16, i1 false) #8, !annotation !8
  %184 = load ptr, ptr %27, align 4
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i16
  store i16 %186, ptr %8, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %187, align 2
  store i16 1, ptr %183, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %188, align 4
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %190 = load i8, ptr %184, align 1
  %191 = zext i8 %190 to i16
  store i16 %191, ptr %189, align 4
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %192, align 2
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %193, align 4
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %194, align 4
  %195 = load ptr, ptr %25, align 4
  %196 = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %8, i32 noundef 2) #8
  %197 = icmp eq i32 %196, 2
  %198 = load i8, ptr %7, align 1
  %199 = zext i8 %198 to i32
  %200 = select i1 %197, i32 %199, i32 %196
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  %201 = shl i32 %200, 8
  %202 = or i32 %201, %182
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 10, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %203 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %203, i8 0, i32 16, i1 false) #8, !annotation !8
  %204 = load ptr, ptr %27, align 4
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i16
  store i16 %206, ptr %5, align 4
  %207 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %207, align 2
  store i16 1, ptr %203, align 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %208, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %210 = load i8, ptr %204, align 1
  %211 = zext i8 %210 to i16
  store i16 %211, ptr %209, align 4
  %212 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %212, align 2
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %213, align 4
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %214, align 4
  %215 = load ptr, ptr %25, align 4
  %216 = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %5, i32 noundef 2) #8
  %217 = icmp eq i32 %216, 2
  %218 = load i8, ptr %4, align 1
  %219 = zext i8 %218 to i32
  %220 = select i1 %217, i32 %219, i32 %216
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %221 = shl i32 %220, 16
  %222 = or i32 %202, %221
  %223 = load i32, ptr %1, align 4
  %224 = add i32 %223, %222
  store i32 %224, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l64781_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  store i8 50, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #8
  %17 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #8, !annotation !8
  %18 = getelementptr inbounds %struct.l64781_state, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %14, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %17, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %25 = load i8, ptr %19, align 1
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %29, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %14, i32 noundef 2) #8
  %32 = icmp eq i32 %31, 2
  %33 = load i8, ptr %13, align 1
  %34 = zext i8 %33 to i32
  %35 = select i1 %32, i32 %34, i32 %31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 14, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  %36 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, i8 0, i32 16, i1 false) #8, !annotation !8
  %37 = load ptr, ptr %18, align 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %11, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %40, align 2
  store i16 1, ptr %36, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %43 = load i8, ptr %37, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %47, align 4
  %48 = load ptr, ptr %16, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %11, i32 noundef 2) #8
  %50 = icmp eq i32 %49, 2
  %51 = load i8, ptr %10, align 1
  %52 = zext i8 %51 to i32
  %53 = select i1 %50, i32 %52, i32 %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %54 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %54, i8 0, i32 16, i1 false) #8, !annotation !8
  %55 = load ptr, ptr %18, align 4
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %8, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %58, align 2
  store i16 1, ptr %54, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %61 = load i8, ptr %55, align 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %65, align 4
  %66 = load ptr, ptr %16, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %8, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %68 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %68, i8 0, i32 16, i1 false) #8, !annotation !8
  %69 = load ptr, ptr %18, align 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %5, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %72, align 2
  store i16 1, ptr %68, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %73, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %75 = load i8, ptr %69, align 1
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %74, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %77, align 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %78, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %79, align 4
  %80 = load ptr, ptr %16, align 4
  %81 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %82 = icmp sgt i32 %53, 5
  %83 = zext i1 %82 to i32
  %84 = and i32 %35, 2
  %85 = or i32 %84, %83
  %86 = lshr i32 %35, 3
  %87 = and i32 %86, 4
  %88 = or i32 %87, %85
  %89 = lshr i32 %35, 3
  %90 = and i32 %89, 8
  %91 = or i32 %90, %88
  %92 = icmp eq i32 %35, 127
  %93 = or i32 %91, 16
  %94 = select i1 %92, i32 %93, i32 %91
  store i32 %94, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l64781_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 57, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #8, !annotation !8
  %12 = getelementptr inbounds %struct.l64781_state, ptr %10, i32 0, i32 1
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
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #8
  %26 = icmp eq i32 %25, 2
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = select i1 %26, i32 %28, i32 %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 58, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %30 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %30, i8 0, i32 16, i1 false) #8, !annotation !8
  %31 = load ptr, ptr %12, align 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 1, ptr %30, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %37 = load i8, ptr %31, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %41, align 4
  %42 = load ptr, ptr %10, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %5, i32 noundef 2) #8
  %44 = icmp eq i32 %43, 2
  %45 = load i8, ptr %4, align 1
  %46 = zext i8 %45 to i32
  %47 = select i1 %44, i32 %46, i32 %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %48 = shl i32 %47, 8
  %49 = or i32 %48, %29
  store i32 %49, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l64781_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 14, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #8, !annotation !8
  %9 = getelementptr inbounds %struct.l64781_state, ptr %7, i32 0, i32 1
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
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #8
  %23 = icmp eq i32 %22, 2
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  %26 = select i1 %23, i32 %25, i32 %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %27 = trunc i32 %26 to i16
  %28 = and i16 %27, 255
  %29 = mul nuw i16 %28, 257
  store i16 %29, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l64781_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 51, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #8, !annotation !8
  %9 = getelementptr inbounds %struct.l64781_state, ptr %7, i32 0, i32 1
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
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #8
  %23 = icmp eq i32 %22, 2
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  %26 = select i1 %23, i32 %25, i32 %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %27 = trunc i32 %26 to i16
  %28 = and i16 %27, 255
  %29 = xor i16 %28, 255
  %30 = mul nuw i16 %29, 257
  store i16 %30, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l64781_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 55, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #8, !annotation !8
  %12 = getelementptr inbounds %struct.l64781_state, ptr %10, i32 0, i32 1
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
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #8
  %26 = icmp eq i32 %25, 2
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = select i1 %26, i32 %28, i32 %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 56, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %30 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %30, i8 0, i32 16, i1 false) #8, !annotation !8
  %31 = load ptr, ptr %12, align 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 1, ptr %30, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %37 = load i8, ptr %31, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %41, align 4
  %42 = load ptr, ptr %10, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %5, i32 noundef 2) #8
  %44 = icmp eq i32 %43, 2
  %45 = load i8, ptr %4, align 1
  %46 = zext i8 %45 to i32
  %47 = select i1 %44, i32 %46, i32 %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %48 = shl i32 %47, 8
  %49 = or i32 %48, %29
  store i32 %49, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
